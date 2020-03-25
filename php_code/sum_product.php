<html>  
<body>  
<form method="post">  
Enter First Number:  
<input type="number" name="number1" /><br><br>  
Enter Second Number:  
<input type="number" name="number2" /><br><br>  
<input  type="submit" name="submit" value="Add">  
</form>
<?php
//function definition
//this function will take two integer arguments
//and return the sum of them
function addTwoNumbers(int $x, int $y)
{
    return $x + $y;
}

?>  
<?php  
    if(isset($_POST['submit']))  
    {  
        $number1 = $_POST['number1'];  
        $number2 = $_POST['number2'];       
//calling the function and printing the result
echo " sum of 10 and 25 : " . addTwoNumbers($number1 , $number2);   
}  
?>  
</body>  
</html>  
