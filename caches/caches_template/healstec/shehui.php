<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("","header"); ?>

<link type="text/css" rel="stylesheet" href="<?php echo CSS_PATH;?>healstec/styles.css" />
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=c20eb3e71c9b11c2ad0f0b3b483c90f1&sql=select+%2A+from+hl_category+where+catid%3D%2712%27&cache=3600&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'12\'',)).'c20eb3e71c9b11c2ad0f0b3b483c90f1');if(!$data = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='12' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
		<div class="container-fluid tu_o tu_o_2 tu_o_3" style="padding-top: 0; margin-top:85px; background: url(<?php echo $data['0']['big_image'];?>) no-repeat center; width: 100%; background-size: cover;">
			<div class="row">
				<div class="tu_o_zh"  id="tu_cpcp">
					<div class="tu_zh" id="keyanjishu" style="width: 100%; text-align: right;">
					<h1  id="chanpin_h1" style="color: #ffffff; "><?php echo $data['0']['catname'];?></h1>
					<p></p>
					<div class="clearfix"></div>
					<p id="chanpin_p" style="color: #ffffff; width: 100%;"><?php echo $data['0']['description'];?></p>
				</div>
				</div>
			</div>
		</div>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

		<div class="container" id="midle_o" style="margin-bottom: 4%;">
			<div class="row" id="pd">
				<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=97730d7ace91c18e2d6cf8dba8da391a&sql=select+%2A+from+hl_category+where+catid%3D%2727%27&cache=3600&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'27\'',)).'97730d7ace91c18e2d6cf8dba8da391a');if(!$data = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='27' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
				<div class="col-md-12  col-sm-12"  id="col"><a href="<?php echo $data['0']['url'];?>"><p><?php echo $data['0']['catname'];?></p></a></div>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
				<ul class="col-md-12  col-sm-12 ji_fa" id="ji_fa">
					<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=718de9a2f8e637ce470b35dc0519b4d0&action=lists&moreinfo=1&catid=27&order=id+DESC&num=10\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('moreinfo'=>'1','catid'=>'27','order'=>'id DESC','limit'=>'10',));}?>
					<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
					<li class="col-md-12  col-sm-12">
						<!--<a href="<?php echo $r['url'];?>">-->
						<img src="<?php echo $r['thumb'];?>" class="col-md-7  col-sm-7 col-xs-12 img-responsive" id="ji_img">
						<div class="col-md-5 col-sm-5 col-xs-12" id="ji_zi" style="padding-top: 0;">
							<h2  class="xy_h1"><?php echo $r['title'];?></h2>
							<span class="xy_p1"><?php echo date('Y.m.d',$r[inputtime]);?></span>
							<div class="clearfix"></div>
							<span class="xy_p2"><?php echo $r['description'];?></span>
						</div>
						<!--</a>-->
					</li>
					<?php $n++;}unset($n); ?>
					<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
				</ul>
			</div>
		</div>



		<div class="container" id="midle">
			<div class="row">
				<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=df275f79b38182d0cb188fc9ae45830f&sql=select+%2A+from+hl_category+where+catid%3D%2728%27&cache=3600&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'28\'',)).'df275f79b38182d0cb188fc9ae45830f');if(!$data = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='28' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
				<div class="col-md-12  col-sm-12" id="col"><a href="<?php echo $data['0']['url'];?>"><p><?php echo $data['0']['catname'];?></p></a>
				</div>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
			</div>
		</div>
		<div class="container" style="padding-left: 0; padding-right: 0;">
			<ul class="row" id="pinpai">
				<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=d9f72c5bc48fa0595ded2122ef7626a4&action=lists&catid=28&order=id+DESC&num=10\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'28','order'=>'id DESC','limit'=>'10',));}?>
				<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
				<li class="col-md-12 col-sm-12 col-xs-12" style="padding-bottom: 2%;">
					<a href="<?php echo $r['url'];?>">
						<div class="col-md-10 col-sm-10 col-xs-10"><p><?php echo $r['title'];?></p></div>
						<h1 class="col-md-2 col-sm-2 col-xs-2" style="font-size: 2rem;"><?php echo date('Y.m.d',$r[inputtime]);?></h1>
					</a>
				</li>
				<?php $n++;}unset($n); ?>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
			</ul>
		</div>


<?php include template("","footer"); ?>
