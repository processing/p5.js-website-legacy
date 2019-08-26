<?php
echo system('git reset --hard');
echo system('git checkout -- .');
echo system('git pull git://github.com/processing/p5.js-website.git gh-pages');
?>