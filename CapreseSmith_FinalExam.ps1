$total = 0
$n = 0
$avg = 0.0
$min = 999
$max = 0
$name = ""

$name = Read-Host " Please Enter Your First and Last Name "
Write-Host $name
do {
    Write-Host "Please Enter 5 test scores, when you are done enter 999 "
    $num = Read-Host " Please Enter Your Test Score "
    Write-Host "You Entered: " $num
    if($num -lt 0){ 
       Write-Host "You Entered An Invalid Number " $num
       }
    else{ 
       $total= $total + $num 
       $n++
       If($num -lt $min){
          $min = $num
       }
       If($num -gt $max -and $num -ne 999){
          $max = $num
       }
}} until ($num -eq 999)

$avg = ($total - 999)/($n - 1)
Write-Host "Name                        Average Grade         Lowest Grade        Highest Grade"
Write-Host "$name" "               $avg              $min                  $max"

