<?php
echo system('git reset --hard');
echo system('git checkout -- .');
echo system('git pull git@github.com:mayaman/p5js-website.git master');
?>