<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=divice-width,initial-scale=1,maximum-scale=1,user-scalable=no" />
    <title>Healstec</title>
    <link type="image/x-icon" rel="icon" href="<?php echo IMG_PATH;?>/healstec/bitbug_favicon (1).ico" />
    <link type="image/x-icon" rel="shortcut icon" href="<?php echo IMG_PATH;?>/healstec/bitbug_favicon (1).ico" />
    <link type="text/css" rel="stylesheet" href="<?php echo CSS_PATH;?>/healstec/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="<?php echo CSS_PATH;?>/healstec/bootstrap-off-canvas-nav.css" />
    <link type="text/css" rel="stylesheet" href="<?php echo CSS_PATH;?>/healstec/style.css" />
    <script type="text/javascript" src="<?php echo JS_PATH;?>/healstec/jquery.js"></script>
    <script src="<?php echo JS_PATH;?>/healstec/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script>window.jQuery || document.write('<script src="<?php echo JS_PATH;?>/healstec/jquery-3.1.1.min.js"><\/script>')</script>
    <script src="<?php echo JS_PATH;?>/healstec/bootstrap.min.js"></script>
    <script type="text/javascript" src="<?php echo JS_PATH;?>/healstec/nav.js"></script>
    <script src="<?php echo JS_PATH;?>/healstec/jquery.fullPage1.js"></script>


</head>
<body>
<div id="fullpageMenu">
    <nav class="navbar navbar-default   navbar-fixed-top " role="navigation">
        <div class="container">
            <div class="b_t"><p>我们的产品遍布全国</p></div>
        </div>
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class='sr-only'></span>
                    <span class='icon-bar'></span>
                    <span class='icon-bar'></span>
                    <span class='icon-bar'></span>
                </button>
                <a href="index.html"><img src="<?php echo IMG_PATH;?>/healstec/H2_06.jpg" class="navbar-brand"/></a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right"  id="u_o">

                        <div class="bd">
                            <form action="<?php echo APP_PATH;?>index.php" method="get" target="_blank">
                                <input type="hidden" name="m" value="search"/>
                                <input type="hidden" name="c" value="index"/>
                                <input type="hidden" name="a" value="init"/>
                                <input type="hidden" name="typeid" value="<?php echo $typeid;?>" id="typeid"/>
                                <input type="hidden" name="siteid" value="<?php echo $siteid;?>" id="siteid"/>
                                <input type="text" id="in">
                            </form>
                        </div>

                    <div class="clearfix"></div>
                    <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=b43f1459ac702900c8d44c91a5e796dd&action=category&catid=0&num=25&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'0','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'25',));}?>
                    <?php $c=end(array_keys($data))?>
                        <?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
                        <li><a href="<?php echo $r['url'];?>" <?php if($c==$k) { ?>style="padding-right: 0;"<?php } ?>><?php echo $r['catname'];?></a></li>
                        <?php $n++;}unset($n); ?>
                    <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

                </ul>
            </div>
        </div>
        <div class="container" id="midle_o" style="margin-top:0; padding-top: 0; ">
            <div class="row" style="padding-bottom: 0; ">
                <div class="col-md-12  col-sm-12"  id="col" style="border-bottom-color:#12949c ; margin-bottom: 0;"></div>
            </div>
        </div>
    </nav>
</div>