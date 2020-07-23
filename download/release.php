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

function getLibVersionDate($f) {
  $handle = fopen($f, 'r');
  $line = fgets($handle);
  fclose($handle);
  preg_match('/v([^ ]*) /', $line, $matches);
  $v = $matches[1];
  preg_match('/v[^ ]* ([^ ]* [^ ]* [^ ]*) /', $line, $matches);
  $d = $matches[1];
  return array($v, $d);
}

function updateFiles() {
  global $lib_version;
  $r = 'https://raw.githubusercontent.com/lmccart/p5.js-release/master/lib';
  download($r.'/p5.min.js', '../assets/js/p5.min.js');
  download($r.'/addons/p5.dom.min.js', '../assets/js/p5.dom.min.js');
  download($r.'/addons/p5.sound.min.js', '../assets/js/p5.sound.min.js');
}

function updateAll() {
  updateFiles();

  $v = getLibVersionDate('../assets/js/p5.min.js');
  $lib_version = $v[0];
  $lib_date = $v[1];

  $contents = array('version'=>$lib_version, 'date'=>$lib_date);
  file_put_contents('version.json', json_encode($contents));

  unlink('package.json');
  echo 'updated library version to v'.$lib_version.' ('.$lib_date.')<br>';
}

updateAll();
?>