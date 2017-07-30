. .\Variables.ps1

$pdvl_release = "17_09"
$pdvc_release = "17_07"
$pqcc_release = "17_06"

function home {
	cd $home
}
function cdweb {
	cd connect\connect-htcweb
}

function pdvl($c) {
  cd $home\RELEASE_$pdvl_release
  if ($c) {
  	cdweb
  }
}

function pdvc($c) {
  cd $home\RELEASE_$pdvc_release
  if ($c) {
  	cdweb
  }
}
function pqcc($c) {
  cd $home\RELEASE_$pqcc_release
  if ($c) {
  	cdweb
  }
}


function TestFunc
{
  
}

Export-ModuleMember -Function TestFunc, pdvl, pdvc, pqcc, home