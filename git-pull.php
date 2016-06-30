<?php
echo system('git reset --hard');
echo system('git checkout -- .');
echo system('git pull https://github.com/mayaman/p5js-website.git master');
?>