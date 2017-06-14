<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("","header"); ?>
<script src="<?php echo JS_PATH;?>/healstec/jquery-3.1.1.min.js" type="text/javascript"></script>
<script>
    window.jQuery || document.write('<script src="<?php echo JS_PATH;?>/healstec/jquery-3.1.1.min.js"><\/script>')
</script>
<script src="<?php echo JS_PATH;?>/healstec/bootstrap.min.js"></script>
<script type="text/javascript" src="<?php echo JS_PATH;?>/healstec/nav.js"></script>
<link type="text/css" rel="stylesheet" href="<?php echo CSS_PATH;?>/healstec/styles.css"/>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=c20eb3e71c9b11c2ad0f0b3b483c90f1&sql=select+%2A+from+hl_category+where+catid%3D%2712%27&cache=3600&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'12\'',)).'c20eb3e71c9b11c2ad0f0b3b483c90f1');if(!$data = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='12' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
    <div class="container-fluid tu_o" style="background: url(<?php echo $data['0']['image1'];?>) center; width: 100%;  background-size: cover; margin-top: 70px;" id="gy_to"></div>
    <div class="container-fluid tu_o" style="background: url(<?php echo $data['0']['image1'];?>) center; width: 100%;  background-size: cover; margin-top: 70px; display: none;" id="gy_to"></div>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

    <div class="container-fluid" style="border-bottom: 1px solid #f4f4f4;">
        <div class="row gy_no clearfix">
            <ul class="col-md-6 col-sm-4 col-xs-12 x_w" style="padding-bottom: 0; margin-bottom: 0;">
                <li class="col-md-1 col-sm-2 x_w_img col-xs-12" style="background: #f4f4f4; text-align: center;"><img src="<?php echo IMG_PATH;?>/healstec/hgyxy_05.jpg" /></li>
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=c20eb3e71c9b11c2ad0f0b3b483c90f1&sql=select+%2A+from+hl_category+where+catid%3D%2712%27&cache=3600&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'12\'',)).'c20eb3e71c9b11c2ad0f0b3b483c90f1');if(!$data = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='12' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
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
            <ul class="col-md-4 col-sm-5 x_w_y col-xs-12" style="float:right; padding-bottom: 0; margin-bottom: 0; text-align: center;" id="onck">
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=a910ec7667ac39446959d9752009b43a&action=category&catid=12&num=25&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'12','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'25',));}?>
                <?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
                <li class="col-md-4 col-sm-4 <?php if($catid!=$r[catid]) { ?> x_w_y_li<?php } ?> col-xs-4"  <?php if($catid==$r[catid]) { ?>style="padding-right: 0; border-bottom: 1px solid #f7ac1d;"<?php } ?> >
                    <p><a href="<?php echo $r['url'];?>" style="color:black"><?php echo $r['catname'];?></a></p>
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
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=4861c2b95f6be3dd43362310cdec3192&sql=select+%2A+from+hl_news+a+left+join+hl_news_data+b+on+a.id%3Db.id+where+a.id%3D%24id&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_news a left join hl_news_data b on a.id=b.id where a.id=$id LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);?>
    <!--公益1-->
    <div class="container gy_wm gongyi1" >
        <h3><?php echo $data['0']['title'];?></h3>
        <div class="gongyiTip">
            <span>发布人:<?php echo $data['0']['username'];?></span>
            <span>发布时间：<?php echo date('Y-m-d',$data[0][inputtime]);?></span>
        </div>

        <div class="gongyi1Main">
            <?php $image_arr=json_decode($data[0][muti_image],true);?>
            <?php if(!empty($image_arr)) { ?>
            <?php $n=1;if(is_array($image_arr)) foreach($image_arr AS $image) { ?>
            <img src="<?php echo $image['url'];?>">
            <?php $n++;}unset($n); ?>
            <?php } ?>
            <div class="row keyan-p">
                <?php echo $data['0']['content'];?>

            </div>
        </div>
    </div>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
    <script>
        $(function() {
            $('.gongyi a').on('click', function() {
                $('.gy_wm').hide();
                $('.gongyi1').show();
            })
        })
    </script>


<?php include template("","footer"); ?>
