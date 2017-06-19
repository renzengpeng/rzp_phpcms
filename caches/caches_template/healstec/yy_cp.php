<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("","header"); ?>
<link type="text/css" rel="stylesheet" href="<?php echo CSS_PATH;?>/healstec/styles.css"/>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=16643772dd5cc5a7f79a3d5e98b21a12&sql=select+%2A+from+hl_category+where+catid%3D%2713%27&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='13' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);?>
    <div class="container-fluid tu_o" style="background: url(<?php echo $data['0']['image1'];?>) center; width: 100%;  background-size: cover; margin-top: 70px; height: 238px;" id="gy_to"></div>
<div class="container-fluid tu_o" style="background: url(<?php echo $data['0']['image1'];?>) center; width: 100%;  background-size: cover; margin-top: 70px; height: 238px;display: none" id="gy_to"></div>
<div class="container-fluid tu_o" style="background: url(<?php echo $data['0']['image1'];?>) center; width: 100%;  background-size: cover; margin-top: 70px; height: 238px;display: none" id="gy_to"></div>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>


    <div class="container-fluid" style="border-bottom: 1px solid #f4f4f4;">
        <div class="row gy_no clearfix">
            <ul class="col-md-6 col-sm-4 col-xs-12 x_w" style="padding-bottom: 0; margin-bottom: 0;">
                <li class="col-md-1 col-sm-2 x_w_img col-xs-12" style="background: #f4f4f4; text-align: center;"><img src="<?php echo IMG_PATH;?>/healstec/hgyxy_05.jpg" /></li>
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=68bea04474d2b2860401c9b6823a9f1f&sql=select+%2A+from+hl_category+where+catid%3D%2713%27&cache=3600&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'13\'',)).'68bea04474d2b2860401c9b6823a9f1f');if(!$data = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='13' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
                <li class="col-md-2 col-sm-4" style="padding-right: 0;">
                    <p> <a href="<?php echo $data['0']['url'];?>" style="color: black"><?php echo $data['0']['catname'];?></a></p>
                </li>
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                <li class="col-md-1 col-sm-1" style="padding-left: 0; text-align: center;"><img src="<?php echo IMG_PATH;?>/healstec/xw_08.jpg" /></li>
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=61f1316d9c673aad23d6ff5ecc1abc42&sql=select+%2A+from+hl_category+where+catid%3D%27%24catid%27&cache=1&return=data1\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'$catid\'',)).'61f1316d9c673aad23d6ff5ecc1abc42');if(!$data1 = tpl_cache($tag_cache_name,1)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='$catid' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data1 = $a;unset($a);if(!empty($data1)){setcache($tag_cache_name, $data1, 'tpl_data');}}?>
                <li class="col-md-2 col-sm-4" style="padding-left: 0; color: #0096a5;" id="text">
                    <p><?php echo $data1['0']['catname'];?></p>
                </li>
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
            </ul>
            <ul class="col-md-4 col-sm-5 x_w_y col-xs-12" style="float:right; padding-bottom: 0; margin-bottom: 0; text-align: center;" id="onck">
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=02023c0efa468791a0b1c71dc65948a8&action=category&catid=13&num=3&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'13','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'3',));}?>
                <?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
                <li class="col-md-4 col-sm-4 <?php if($n==1) { ?>x_w_y_li<?php } ?> col-xs-4{/if }" <?php if($catid==$r[catid]) { ?>
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
    <!--健康瘦身-->
    <div class="container gy_wm yingyang " <?php if($catid!=29) { ?>style=" display: none;"<?php } ?>>
        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=54a84306a78493615e7b822e48b8d7dc&action=lists&moreinfo=1&catid=29&order=listorder+desc&num=7\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('moreinfo'=>'1','catid'=>'29','order'=>'listorder desc','limit'=>'7',));}?>

        <?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
        <?php if($n%2==1) { ?>
        <div class="row">
            <?php } ?>
            <div class="col-md-6 col-sm-6 jiankangImg<?php echo $n;?> jiankangImgBox" style="padding: 0;background: url('<?php echo $r['thumb'];?>') no-repeat;">
                <a href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a>
            </div>
            <?php if($n%2==0||$n==count($data)) { ?>
        </div>
        <?php } ?>
        <?php $n++;}unset($n); ?>
        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
    </div>
    <!--商品剖析-->

<div class="container gy_wm " <?php if($catid!=30) { ?>style=" display: none;"<?php } ?>>
    <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=b90dc08afac23348d275888e0a3a05a3&action=lists&moreinfo=1&catid=30&order=listorder+desc&num=8\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('moreinfo'=>'1','catid'=>'30','order'=>'listorder desc','limit'=>'8',));}?>

    <?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
    <?php if($n%2==1) { ?>
    <div class="row">
        <?php } ?>
        <div class="col-md-6 col-sm-6 jiankangImg<?php echo $n;?> jiankangImgBox" style="padding: 0;background: url('<?php echo $r['thumb'];?>')  no-repeat;">
            <a href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a>
        </div>
        <?php if($n%2==0||$n==count($data)) { ?>
    </div>
    <?php } ?>
    <?php $n++;}unset($n); ?>
    <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
</div>

    <!--产品配料-->

<div class="container gy_wm " <?php if($catid!=31) { ?>style=" display: none;"<?php } ?>>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=1dfe3f73b18c72c870f492f554afb57a&action=lists&moreinfo=1&catid=31&order=listorder+desc&num=8\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('moreinfo'=>'1','catid'=>'31','order'=>'listorder desc','limit'=>'8',));}?>

<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
<?php if($n%2==1) { ?>
<div class="row">
    <?php } ?>
    <div class="col-md-6 col-sm-6 jiankangImg<?php echo $n;?> jiankangImgBox" style="padding: 0;background: url('<?php echo $r['thumb'];?>')  no-repeat;">
        <a href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a>
    </div>
    <?php if($n%2==0||$n==count($data)) { ?>
</div>
<?php } ?>
<?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
</div>
    <script>
        $(function() {
            $('.yingyang a').on('click', function() {
                $('.gy_wm').hide();
                $('.gongyi1').show();
            })
        })
    </script>

<?php include template("","footer"); ?>