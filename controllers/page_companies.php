<?php
	$companies = array();
	$sanitizer = new Sanitizer();
	
	$sql = 'SELECT b.id, b.name, b.logo_path, b.hq from '.DB_PREFIX.'jobs a,
			'.DB_PREFIX.'company b
			WHERE a.is_active = 1 AND a.employer_id = b.employer_id AND b.public_page = 1 GROUP BY b.id ORDER BY b.name ASC';

	$result = $db->query($sql);
	$comps = array();

	$varnames = array();
	while ($row = $result->fetch_assoc()) {
		$varnames[$row["id"]] = $sanitizer->sanitize_title_with_dashes($row["name"]);
		$comps[] = $row;
	}

	$smarty->assign('varnames', $varnames);
	$smarty->assign('companies', $comps);
	$smarty->assign('companies_count', count($comps));

	$template = 'jobs/companies.tpl';
?>

