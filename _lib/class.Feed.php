<?php

/**
 * Simplejobscript Copyright (©) 2016 Niteosoft
 *
 * @author     Niteosoft (niteosoft.co.uk)
 * @license    MIT
 * @website    simplejobscript.com
 * 
 *
 *  There are no license limitations, modifications nor restrictions placed upon 
 *  and no rights have been transfered to all third-party software parts of this product. You are granted to use these libraries
 *  and sub-parts while following their individual license specifications and terms of service
 *
 */


require_once 'class.XmlWriter.php';
require_once 'class.RssWriter.php';

class Feed
{
	var $mCategoryId = false;
	var $mCategoryName = false;
	
	public function __construct($category = false)
	{
		global $db;
		if ($category != 'all')
		{
			$sql = 'SELECT id, name
			               FROM '.DB_PREFIX.'categories
			               WHERE var_name = "' . $category . '"';
			$result = $db->query($sql);
			$row = $result->fetch_assoc();
			$this->mCategoryId = $row['id'];
			$this->mCategoryName = $row['name'];
			return 1;
		}
		else if ($category == 'all')
		{
			$this->mCategoryId = 'all';
		}
		else
		{
			return 0;
		}
	}
	
	// Display a feed
	public function Display()
	{
		global $db;
		$rss_writer_object = new rss_writer_class;
		$rss_writer_object->specification = '1.0';
		$rss_writer_object->about = BASE_URL . 'rss.xml';
		$rss_writer_object->rssnamespaces['dc']='http://purl.org/dc/elements/1.1/';

		$properties = array();
		if ($this->mCategoryId == 'all')
		{
			$properties['description'] = RSS_JOBS_TITLE;
		}
		else
		{
			$properties['description'] = RSS_JOBS_TITLE . ' / ' . ucwords($this->mCategoryName);
		}
		$properties['link'] = PROTOCOL . MAIN_URL;
		$properties['title'] = SITE_NAME;
		$properties['dc:date'] = date('d-m-Y');
		$rss_writer_object->addchannel($properties);

		$count = 0;

		$jobb = new Job();
		if ($this->mCategoryId == 'all')
		{
			$jobs = $jobb->GetJobs(0, 0, 0, 0, 0, true);
		}
		else
		{
			$jobs = $jobb->GetJobs(0, $this->mCategoryId, 0, 0, 0, true);
		}
		foreach ($jobs as $job)
		{
			// $count++;
			// if ($count > 10)
			// {
			// 	break;
			// }
			
			$properties=array();  

			$properties['description'] =  $job['description'] . '<br /><br />';
			$properties['description'] .= '<a href="' . PROTOCOL . MAIN_URL . URL_JOB .'/' . $job['id'] . '/' . $job['url_title'] . '/' . '">' . RSS_APPLY . '</a><br />';
			$properties['link'] = PROTOCOL . MAIN_URL . URL_JOB .'/' . $job['id'] . '/' . $job['url_title'] . '/';

			$type = '['.$job['type_name'].']';
			
			$properties['title'] = $type . ' ' . $job['title'] . ' ' . GENERAL_AT . ' ' . $job['company'];
			$properties['dc:date'] = date(DATE_RSS, $job['created_on_ts']);
			$rss_writer_object->additem($properties);
		}
		if (empty($jobs))
		{
			$properties=array();  
			$properties['description'] = ' ';
			$properties['description'] .= ' ';
			$properties['link'] = ' ';
			$properties['title'] = ' ';
			$properties['dc:date'] = ' ';
			$rss_writer_object->additem($properties);
		}

		if($rss_writer_object->writerss($output))
		{
			header('Content-Type: text/xml; charset="utf-8"');
			header('Content-Length: '.strval(strlen($output)));
			echo $output;
		}
		else
		{
			//header('Content-Type: text/plain');
			//echo ('Error: '.$rss_writer_object->error);
		}
	}

}
?>