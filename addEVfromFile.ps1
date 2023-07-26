$encPwd = "ahy4duitea8iSh1iot4s"
$readFileEV = gpg --batch --passphrase $encPwd -d env.enc
foreach ($EV in $readFileEV) {
	$EVnameValue = $EV.Split("=")
	[System.Environment]::SetEnvironmentVariable($EVnameValue[0],$EVnameValue[1])
}