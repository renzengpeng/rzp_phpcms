<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("","header"); ?>

<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=f804ec768b47ac35c2b7980943a2773e&sql=select+%2A+from+hl_category+where+catid%3D%27%24top_parentid%27&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='$top_parentid' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);?>
<div class="container-fluid tu_o"
     style="background: url(<?php echo $data['0']['image1'];?>) center; width: 100%;  background-size: cover; margin-top: 70px;"
     id="gy_to"></div>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
<div class="container-fluid" style="border-bottom: 1px solid #f4f4f4;">
    <div class="row gy_no">
        <ul class="col-md-6 col-sm-4 col-xs-12 x_w" style="padding-bottom: 0; margin-bottom: 0;">
            <li class="col-md-1 col-sm-2 x_w_img col-xs-12" style="background: #f4f4f4; text-align: center;"><img
                    src="<?php echo IMG_PATH;?>/healstec/hgyxy_05.jpg"/></li>
            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=f804ec768b47ac35c2b7980943a2773e&sql=select+%2A+from+hl_category+where+catid%3D%27%24top_parentid%27&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='$top_parentid' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);?>
            <li class="col-md-2 col-sm-4" style="padding-right: 0;"><p><?php echo $data['0']['catname'];?></p></li>
            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

            <li class="col-md-1 col-sm-1" style="padding-left: 0; text-align: center;"><img src="<?php echo IMG_PATH;?>/healstec/xw_08.jpg"/></li>
            <?php if($catid!=$top_parentid) { ?>
            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=fbc2b2997c3dc3cc368e761408c44d09&sql=select+%2A+from+hl_category+where+catid%3D%27%24catid%27&return=data1\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='$catid' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data1 = $a;unset($a);?>
            <li class="col-md-2 col-sm-4" style="padding-left: 0; color: #0096a5;" id="text"><p><?php echo $data1['0']['catname'];?></p></li>
            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
            <?php } else { ?>
            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=644e6cc69dc2a6651a3bc2671bb03a8d&sql=select+%2A+from+hl_news+a+left+join+hl_news_data+b+on+a.id%3Db.id+where+a.id%3D%24id&cache=1&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_news a left join hl_news_data b on a.id=b.id where a.id=$id',)).'644e6cc69dc2a6651a3bc2671bb03a8d');if(!$data = tpl_cache($tag_cache_name,1)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_news a left join hl_news_data b on a.id=b.id where a.id=$id LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
            <li class="col-md-2 col-sm-4" style="padding-left: 0; color: #0096a5;" id="text"><p><?php echo $data['0']['title'];?></p></li>
            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
            <?php } ?>
        </ul>
    </div>
</div>
<div class="container gy_wm" >

<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=4861c2b95f6be3dd43362310cdec3192&sql=select+%2A+from+hl_news+a+left+join+hl_news_data+b+on+a.id%3Db.id+where+a.id%3D%24id&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_news a left join hl_news_data b on a.id=b.id where a.id=$id LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);?>
<div class="keyanbox keyantab1" style="display: block;">
    <?php $image_arr=json_decode($data[0][muti_image],true);?>
    <?php if(!empty($image_arr)) { ?>
    <div class="row keyanImg">

        <?php $n=1;if(is_array($image_arr)) foreach($image_arr AS $image) { ?>
        <div class="col-xs-4 col-sm-4 col-md-4">
            <img src="<?php echo $image['url'];?>" />
        </div>
        <?php $n++;}unset($n); ?>
    </div>
    <?php } ?>
    <div class="row keyan-p">
        <h3>
            <?php echo $data['0']['title'];?>
        </h3>
        <?php echo $data['0']['content'];?>

    </div>
</div>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
</div>

<?php include template("","footer"); ?>

