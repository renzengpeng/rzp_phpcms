<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("","header"); ?>
<script>
    $(function () {
        $('.keyan-tab>div').on('click', function () {
            $(this).parents('.keyan-tab').find('div').removeClass('active');
            $(this).addClass('active');

            $(this).parents('.gy_wm').find('.keyanbox').hide();

            if ($(this).hasClass('keyan1')) {
                $(this).parents('.gy_wm').find('.keyantab1').fadeIn(500);
            } else if ($(this).hasClass('keyan2')) {
                $(this).parents('.gy_wm').find('.keyantab2').fadeIn(500);
            } else if ($(this).hasClass('keyan3')) {
                $(this).parents('.gy_wm').find('.keyantab3').fadeIn(500);
            } else if ($(this).hasClass('keyan4')) {
                $(this).parents('.gy_wm').find('.keyantab4').fadeIn(500);
            }
        })
    });
</script>
<link type="text/css" rel="stylesheet" href="<?php echo CSS_PATH;?>/healstec/styles.css"/>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=2b7a040b6d784671fea5379f7808ddd6&sql=select+%2A+from+hl_category+where+catid%3D%2711%27&cache=3600&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'11\'',)).'2b7a040b6d784671fea5379f7808ddd6');if(!$data = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='11' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
    <div class="container-fluid tu_o" style="background: url(<?php echo $data['0']['image1'];?>) center; width: 100%;  background-size: cover; margin-top: 70px;"  id="gy_to"></div>
<div class="container-fluid tu_o"
     style="background: url(<?php echo $data['0']['image1'];?>) center; width: 100%;  background-size: cover; margin-top: 70px;display: none;"
     id="gy_to"></div>
<div class="container-fluid tu_o"
     style="background: url(<?php echo $data['0']['image1'];?>) center; width: 100%;  background-size: cover; margin-top: 70px;display: none;"
     id="gy_to"></div>
<div class="container-fluid tu_o"
     style="background: url(<?php echo $data['0']['image1'];?>) center; width: 100%;  background-size: cover; margin-top: 70px;display: none;"
     id="gy_to"></div>
<div class="container-fluid tu_o"
     style="background: url(<?php echo $data['0']['image1'];?>) center; width: 100%;  background-size: cover; margin-top: 70px;display: none;"
     id="gy_to"></div>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
<div class="container-fluid" style="border-bottom: 1px solid #f4f4f4;">
        <div class="row gy_no">
            <ul class="col-md-6 col-sm-4 col-xs-12 x_w" style="padding-bottom: 0; margin-bottom: 0;">
                <li class="col-md-1 col-sm-2 x_w_img col-xs-12" style="background: #f4f4f4; text-align: center;"><img src="<?php echo IMG_PATH;?>/healstec/hgyxy_05.jpg" /></li>
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=2b7a040b6d784671fea5379f7808ddd6&sql=select+%2A+from+hl_category+where+catid%3D%2711%27&cache=3600&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'11\'',)).'2b7a040b6d784671fea5379f7808ddd6');if(!$data = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='11' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
                <li class="col-md-2 col-sm-4" style="padding-right: 0;">
                    <p><?php echo $data['0']['catname'];?></p>
                </li>
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                <li class="col-md-1 col-sm-1" style="padding-left: 0; text-align: center;"><img src="<?php echo IMG_PATH;?>/healstec/xw_08.jpg" /></li>
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=61f1316d9c673aad23d6ff5ecc1abc42&sql=select+%2A+from+hl_category+where+catid%3D%27%24catid%27&cache=1&return=data1\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'$catid\'',)).'61f1316d9c673aad23d6ff5ecc1abc42');if(!$data1 = tpl_cache($tag_cache_name,1)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='$catid' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data1 = $a;unset($a);if(!empty($data1)){setcache($tag_cache_name, $data1, 'tpl_data');}}?>
                <li class="col-md-2 col-sm-4" style="padding-left: 0; color: #0096a5;" id="text">
                    <p><?php echo $data1['0']['catname'];?></p>
                </li>
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
            </ul>
            <ul class="col-md-6 col-sm-7 x_w_y col-xs-12" style="padding-bottom: 0; margin-bottom: 0; text-align: center;" id="onck">
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=0912227015ab4b311ab02db1fcbd9f99&action=category&catid=11&num=25&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'11','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'25',));}?>
                <?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
                <li class="col-md-2 col-sm-2 x_w_y_li col-xs-3" <?php if($catid==$r[catid]) { ?>
                    style="padding-right: 0; border-bottom: 1px solid #f7ac1d;"<?php } ?> >
                    <p><?php echo $r['catname'];?></p>
                </li>
                <?php $n++;}unset($n); ?>
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

            </ul>
        </div>
    </div>

    <script type="text/javascript">
        $(function() {
            var $p = $("#onck li");
            $p.css("cursor", "pointer");
            $p.click(function() {
                //选中的文字添加下边框
                $p.css({
                    "border-bottom": "0",
                })
                $(this).css({
                        "border-bottom": "1px solid #f7ac1d",
                    })
                    //选中后其左面显示其一致的文字内容并加上颜色效果
                var $tex = $("#text p");
                $tex.text($(this).text()).css("color", "#0096a5");
                //选中后相应的banner图转换
                var $im = $(".tu_o");
                $im.css("display", "none");
                $im.eq($(this).index()).css("display", "block");
                //点击展示相应内容
                var $gy = $(".gy_wm");
                $gy.css("display", "none");
                $gy.eq($(this).index()).fadeIn(500); //透明渐入效果

            })
        })
    </script>

       <!--关注科研-->
    <div class="container gy_wm" <?php if($catid!=23) { ?>style=" display: none;"<?php } ?>>

        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=564e86d465a6b7e44260ef8c2429f4a5&action=lists&moreinfo=1&catid=23&order=id+desc&num=1\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('moreinfo'=>'1','catid'=>'23','order'=>'id desc','limit'=>'1',));}?>

        <?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
        <div class="keyanbox keyantab1" style="display: block;">
            <div class="row keyanImg">
                <?php $image_arr=json_decode($r[muti_image],true);?>
                <?php $n=1;if(is_array($image_arr)) foreach($image_arr AS $image) { ?>
                <div class="col-xs-4 col-sm-4 col-md-4">
                    <img src="<?php echo $image['url'];?>" />
                </div>
                <?php $n++;}unset($n); ?>
            </div>

            <div class="row keyan-p">
                <h3>
                    <?php echo $r['title'];?>
                </h3>
                <?php echo $r['content'];?>

            </div>
        </div>
        <?php $n++;}unset($n); ?>
        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
    </div>

    <!--技术探索-->
    <div class="container gy_wm" <?php if($catid!=24) { ?>style=" display: none;"<?php } ?>>
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6">
                <div class="row keyan-tab">
                    <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=f6f30b77baf4e61c6380bb047cae9eb9&action=lists&catid=24&order=id+asc&num=2\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'24','order'=>'id asc','limit'=>'2',));}?>
                    <?php $n=1;if(is_array($data)) foreach($data AS $v) { ?>
                    <div class="col-xs-6 col-sm-6 col-md-6 keyan<?php echo $n;?> <?php if($n==1) { ?>active<?php } ?>">
                        <?php echo $v['title'];?>
                    </div>
                    <?php $n++;}unset($n); ?>
                    <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                </div>
            </div>
        </div>
        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=d526eb5b4f255cc3e75d2221bc01879e&action=lists&moreinfo=1&catid=24&order=id+asc&num=2\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('moreinfo'=>'1','catid'=>'24','order'=>'id asc','limit'=>'2',));}?>
        <?php $n=1;if(is_array($data)) foreach($data AS $v) { ?>
        <div class="keyanbox keyantab<?php echo $n;?>" <?php if($n==1) { ?>style="display: block;"<?php } ?>>

            <div class="row keyan-p">
                <img src="<?php echo $v['thumb'];?>" class="keyanImg2">
                <p>
                    　　<?php echo $v['content'];?>
                </p>
            </div>
        </div>
        <?php $n++;}unset($n); ?>
        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
    </div>

       <!--健康方案-->
    <div class="container gy_wm" style="width: 100%; padding: 0 0 2% 0;margin: 0;<?php if($catid!=25) { ?>display:none<?php } ?>">
        <div class="container ">
            <div class="row">
            <div class="col-md-12  col-sm-12 col-xs-12" style="display: none;">
                <p id="chanpin_p" style="color: #000000; text-align: center; font-size: 14px; line-height: 24px;">我们用已知的科学积累和严谨的科研态
                    度，加之强烈的责任感和爱心，为您奉上针对不同人群的健康解决方案，安全无忧，健康生活！</p>
            </div>
            </div>
        </div>
        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=061f4089e669676a9451c0ec0893f2a8&action=lists&moreinfo=1&catid=25&order=id+asc&num=20\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('moreinfo'=>'1','catid'=>'25','order'=>'id asc','limit'=>'20',));}?>
        <?php $n=1;if(is_array($data)) foreach($data AS $v) { ?>
        <div class="container" id="midle">
            <div class="row">
                <div class="col-md-12  col-sm-12"  id="col"><p><?php echo $v['title'];?></p></div>
            </div>
        </div>
        <div id="jk_a" style="background: url(<?php echo $v['thumb'];?>); width: 100%;  background-size: cover; margin-top: 2%;">
        <a href="<?php echo $v['url'];?>" >
            <div class="row">
                <div class="tu_o_zh">
                    <div class="tu_zh">
                        <h1 style="color: #363636;"><?php echo $v['title'];?></h1>
                    <p style="color: #363636;"><?php echo $v['content'];?></p>
                </div>
                </div>              
            </div>
        </a>
        </div>
        <?php $n++;}unset($n); ?>
        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

        

    </div>
    
      
    <!--生产加工-->
    <div class="container gy_wm" <?php if($catid!=26) { ?>style=" display: none;"<?php } ?>>
        <div class="keyanbox keyantab1" style="display:block" >

<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=6574b0bb741380f9af22aacf75065e48&action=lists&moreinfo=1&catid=26&order=id+desc&num=1\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('moreinfo'=>'1','catid'=>'26','order'=>'id desc','limit'=>'1',));}?>

<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
            <div class="row keyan-p">
                <h3 style="margin-top: 0;">
                    <?php echo $r['title'];?>
                </h3>
                <?php echo $r['content'];?>

            </div>
<?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
        </div>  
    </div>


<?php include template("","footer"); ?>
