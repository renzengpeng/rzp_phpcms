<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("","header"); ?>




<div class="container" id="midle">
    <div class="row">
        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=ba048a1cb289c518aa0efea050234128&sql=select+%2A+from+hl_category+where+catid%3D%27%24catid%27&cache=3600&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'$catid\'',)).'ba048a1cb289c518aa0efea050234128');if(!$data = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='$catid' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
        <div class="col-md-12  col-sm-12" id="col"><a href="<?php echo $data['0']['url'];?>"><p><?php echo $data['0']['catname'];?></p></a>
        </div>
        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
    </div>
</div>
<div class="container" style="padding-left: 0; padding-right: 0;">
    <ul class="row" id="pinpai">
        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=f8b3eec4358684f67b3f104222ff05e4&action=lists&catid=%24catid&order=id+DESC&num=10\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>$catid,'order'=>'id DESC','limit'=>'10',));}?>
        <?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
        <li class="col-md-12 col-sm-12 col-xs-12" style="padding-bottom: 2%;">
            <a href="<?php echo $r['url'];?>">
                <div class="col-md-10 col-sm-10 col-xs-10"><p><?php echo $r['title'];?></p></div>
                <h1 class="col-md-2 col-sm-2 col-xs-2" style="font-size: 2rem;"><?php echo date('Y-m-d',$r[inputtime]);?></h1>
            </a>
        </li>
        <?php $n++;}unset($n); ?>
        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
    </ul>
</div>


<?php include template("","footer"); ?>
