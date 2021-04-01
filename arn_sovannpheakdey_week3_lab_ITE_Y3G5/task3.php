<!DOCTYPE html>
<html>
<body>

	<h3> Task3: Implement function that Sum Array</h3>

<?php

// given arays
$arr1 = array(2, 3);
$arr2 = array(2, 3, 4);
$arr3 = array(2, 3, 4, 5);

// print given arrays
echo "Given arrays: "; 
echo "<br>";

// print arr1
echo "arr1: ";
print_r($arr1);
echo "<br>";

// print arr2
echo "arr2: ";
print_r($arr2);
echo "<br>";

// print arr3
echo "arr3: ";
print_r($arr3);
echo "<br>";

echo "<br>";

// sum arrays using array_sum() function
echo "Sum given arrays: ";
echo "<br>";

// sum arr1
echo "Sum arr1: ".array_sum($arr1);
echo "<br>";

// sum arr2
echo "Sum arr2: ".array_sum($arr2) ;
echo "<br>";

// sum arr3
echo "Sum arr3: ".array_sum($arr3) ;
echo "<br>";

?>

</body>
</html>