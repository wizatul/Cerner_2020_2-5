/* program for cerner_2^5_2020 */
<?php
function do_fetch($myeid, $s)
{
// Fetch the results in an associative array
	print '<p>$myeid is ' . $myeid . '</p>';
	print '<table border="1">';
	while ($row = oci_fetch_array($s, OCI_RETURN_NULLS+OCI_ASSOC)) {
		print '<tr>';
		foreach ($row as $item) {
			print '<td>'.($item?htmlentities($item):'&nbsp;').'</td>';
		}
		print '</tr>';
	}
	print '</table>';
}

// Create connection to Oracle
$c = oci_connect("Atul", "Wiz", "//localhost/orcl");

// Use bind variable to improve resuability, and to remove SQL Injection attacks.
$query = 'select * from employees where employee_id = :EIDVB';
$s = oci_parse($c, $query);
// cerner_2^5_2020 
$myeid = 1901;
oci_bind_by_name($s, ":EIDBV", $myeid);
oci_execute($s);
do_fetch($myeid, $s);

// Close the Oracle connection
oci_close($c);
?>