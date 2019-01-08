<?php

$lib_version;

function download($url, $path) {
  # open file to write
  $fp = fopen ($path, 'w+');
  # start curl
  $ch = curl_init();
  curl_setopt( $ch, CURLOPT_URL, $url );
  # set return transfer to false
  curl_setopt( $ch, CURLOPT_RETURNTRANSFER, false );
  curl_setopt( $ch, CURLOPT_BINARYTRANSFER, true );
  curl_setopt( $ch, CURLOPT_SSL_VERIFYPEER, false );
  # increase timeout to download big file
  curl_setopt( $ch, CURLOPT_CONNECTTIMEOUT, 10 );
  # write data to local file
  curl_setopt( $ch, CURLOPT_FILE, $fp );
  # execute curl
  curl_exec( $ch );
  # close curl
  curl_close( $ch );
  # close local file
  fclose( $fp );

  if (filesize($path) > 0) return true;
}

function getLibVersion($f) {
  $handle = fopen($f, 'r');
  $line = fgets($handle);
  fclose($handle);
  preg_match('/v([^ ]*) /', $line, $matches);
  $v = $matches[1];
  preg_match('/v[^ ]* ([^ ]* [^ ]* [^ ]*) /', $line, $matches);
  echo "hi".$matches[0];
  $d = $matches[1];
  return array($v, $d);
}

function getPackageVersion($f) {
  $handle = fopen($f, 'r');
  $line = "";
  while(!strpos($line, 'version')) {
    $line = fgets($handle);
  }
  fclose($handle);
  preg_match('/"version": "(.*)".*/', $line, $matches);
  return $matches[1];
}

function updateFiles() {
  global $lib_version;
  $r = 'https://raw.githubusercontent.com/lmccart/p5.js-release/master/lib';
  download($r.'/p5.min.js', '../js/p5.min.js');
  download($r.'/addons/p5.dom.min.js', '../js/p5.dom.min.js');
  download($r.'/addons/p5.sound.min.js', '../js/p5.sound.min.js');
}

function updateLib($p5jseditor_v) {
  global $lib_version;
  updateFiles();
  $v = getLibVersion('../js/p5.min.js');
  $lib_version = $v[0];
  echo 'updated library version to v'.$lib_version.' ('.$v[1].')';
  $contents = array("version"=>$lib_version,"editor_version"=>$p5jseditor_v,"date"=>$v[1]);
  file_put_contents('version.json', json_encode($contents));
}


function updateP5JSEDITOR($lib_v, $lib_d) {

  $r = 'https://raw.githubusercontent.com/processing/p5.js-editor/master/';
  download($r.'package.json', 'package.json');
  $v = getPackageVersion('package.json');
  unlink('package.json');
  
  
  $contents = array("version"=>$lib_v,"editor_version"=>$v,"date"=>$lib_d);
  file_put_contents('version.json', json_encode($contents));
  echo 'updating p5.js editor version to '.$v;
}

if ($_GET['f'] == 'update_lib') {
  updateLib($p5jseditor_version);
}
else if ($_GET['f'] == 'update_p5jseditor') {
  updateP5JSEDITOR($version, $date);
}
else if ($_GET['f'] == 'update_files') {
  updateFiles();
} else {
  echo '<a href="./release.php?f=update_lib">update library version</a><br>';
  echo '<a href="./release.php?f=update_p5jseditor">update editor version</a>';
}
?>