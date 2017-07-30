. .\Variables.ps1

$pdvl_release = "17_09"
$pdvc_release = "17_07"
$pqcc_release = "17_06"

$gulpwatch = "gulp watch"
$gulpbuild = "gulp build"

$gulpwatchcss = "gulp watch:css"
$gulpbuildcss = "gulp build:css"

$gulpwatchjs = "gulp watch:js"
$gulpbuildjs = "gulp build:js"

function home {
	cd $home
}
function cdweb {
	cd connect\connect-htcweb
}

function yargs($y) {
  switch ($c) {
  	c {
  		cdweb
  	}
  	w {
  		cdweb
  		iex $gulpwatch
  	}
  	b {
  		cdweb
  		iex $gulpbuild
  	}
  	wc {
  		cdweb
  		iex $gulpwatchcss
  	}
  	bc {
  		cdweb
  		iex $gulpbuildcss
  	}
  	wj {
  		cdweb
  		iex $gulpwatchjs
  	}
  	bj {
  		cdweb
  		iex $gulpbuildjs
  	}
  }	
}

function pdvl($c) {
  cd $home\RELEASE_$pdvl_release
  yargs($c)
}

function pdvc($c) {
  cd $home\RELEASE_$pdvc_release
  yargs($c)
}
function pqcc($c) {
  cd $home\RELEASE_$pqcc_release
  yargs($c)
}



Export-ModuleMember -Function pdvl, pdvc, pqcc, home