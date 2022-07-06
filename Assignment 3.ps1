
$total = 0
$n = 0
$avg = 0.0
$min = 999
$max = 0
$file = ""
$fileexists = ""

do {
    $num = Read-Host " Enter a number between 0 and 999"
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
Write-Host "Average: " $avg 

Write-Host "The smallest number is: " $min

Write-Host "The largest number is: " $max

$file = Read-Host "Please Enter a File Name: "


$fileexists = Test-Path -Path $file

        If($fileexists) {
        Write-Host "File Already Exists"
           
        }
        else { 
        New-Item -Path . -Name $file -ItemType "file" -Value "Current Date                  Average       Lowest     Highest `r `n"
  
        Add-Content -Path $file -Value "Monday, Nov. 29 2021             $avg           $min          $max"
        }






 
  

