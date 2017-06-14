<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("","header"); ?>
					
		<div id="dowebok">
			<div class="section  fp-auto-height section3" style="padding-top: 0;">
				<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=2b7a040b6d784671fea5379f7808ddd6&sql=select+%2A+from+hl_category+where+catid%3D%2711%27&cache=3600&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'11\'',)).'2b7a040b6d784671fea5379f7808ddd6');if(!$data = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='11' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
		<div class="container-fluid tu_o tu_o_2 tu_o_3" style="padding-top: 0; margin-top: 85px; background: url(<?php echo $data['0']['big_image'];?>) no-repeat center; width: 100%; background-size: cover;">
			<div class="row">				
				<div class="tu_o_zh" id="tu_cpcp">
					<div class="tu_zh" id="keyanjishu" style="width: 100%; text-align: right;">
					<h1  id="chanpin_h1" style="color: #01396a;"><?php echo $data['0']['catname'];?></h1>
					<p></p>
					<div class="clearfix"></div>
					<p id="chanpin_p" style="color: #01396a;"><?php echo $data['0']['description'];?></p>
				</div>
				</div>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
			</div>
		</div>
		</div>
			<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=0912227015ab4b311ab02db1fcbd9f99&action=category&catid=11&num=25&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'11','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'25',));}?>
			<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
			<div class="container" id="midle">
				<div class="row">
					<div class="col-md-12  col-sm-12" id="col"><p><?php echo $r['catname'];?></p></div>
				</div>
			</div>
			<a href="<?php echo $r['url'];?>" class="tu_o_1">
				<div class="container-fluid tu_o"
					 style="background: url(<?php echo $r['big_image'];?>); width: 100%;  background-size: cover;">
					<div class="row">
						<div class="tu_o_zh">
							<div class="tu_zh">
								<h1 style="color: #363636;"><?php echo $r['catname'];?></h1>
								<p style="color: #363636;"><?php echo $r['description'];?></p>
							</div>
						</div>
					</div>
				</div>
			</a>
			<?php $n++;}unset($n); ?>
			<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

			<?php include template("","footer"); ?>
		

