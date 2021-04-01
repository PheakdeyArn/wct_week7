<!DOCTYPE html>
<html>
<body>

	<h3> Task2: Find even number by filter array </h3>

<?php

// create func that take arr as argu
// and return the even number
function even($arr)
{
	return !($arr & 1);
}

// given arr
$arr = [2, 3, 4, 6, 7, 9, 11, 20];

// print arr
echo "Given Arrays: ";
echo "<br>";
print_r ($arr);
echo "<br>";

// filter even arr
echo "Even Arrays: ";
echo "<br>";
print_r(array_filter($arr, 'even'));

?>

</body>
</html>

