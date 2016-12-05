<?php
echo system('git reset --hard');
echo system('git checkout -- .');
echo system('git pull git://github.com/processing/p5.js-website.git master');

// date_default_timezone_set('America/New_York');
// $date = getdate();
// $date_str = $date['month'].' '.$date['mday'].', '.$date['year'];

// $f = fopen('updated.php', 'w');
// fwrite($f, $date_str);
// fclose($f);

// $f = fopen('site/updated.php', 'w');
// fwrite($f, $date_str);
// fclose($f);
?>
