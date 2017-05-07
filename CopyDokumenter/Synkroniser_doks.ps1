#$source = "D:\Arkiv\Dokumenter" 
#$dest = "D:\Tresorit\Dokumenter"

if ($args.count -ne 2)
{
    Exit
}

$source = $args[0]
$dest = $args[1]

if (-Not $source -or -Not $dest) 
{
	Exit
}

$ValidPath = Test-Path $source -IsValid

if ($ValidPath -ne $True)
{
    Exit
}

$ValidPath = Test-Path $dest -IsValid

if ($ValidPath -ne $True)
{
    Exit
}

#Remove-Item -Path "$dest\*" -Recurse
#robocopy   $source $dest /B /COPYALL /SEC /MIR /R:0 /W:0 /NFL /NDL

robocopy   $source $dest /MIR /XA:H /W:5