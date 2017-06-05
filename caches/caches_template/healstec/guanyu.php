<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("","header"); ?>
						
		
			<div id="dowebok">
				
				<div class="section fp-auto-height" style="padding-top: 0;">
					<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=444d1ae2bfa95acdcd7107b3ec703cce&sql=select+%2A+from+hl_category+where+catid%3D%2710%27&cache=3600&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'10\'',)).'444d1ae2bfa95acdcd7107b3ec703cce');if(!$data = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='10' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
		<div class="container-fluid tu_o tu_o_2 tu_o_3" style="background: url(<?php echo $data['0']['big_image'];?>); width: 100%; background-size: cover; margin-top: 85px;">
			<div class="row">
			<div class="tu_o_zh" id="tu_cpcp">
			<div class="tu_zh" id="chanpin" style="width: 100%;">

					<h1  id="chanpin_h1" style="color: #01396a;  margin-top: 11%;"><?php echo $data['0']['catname'];?></h1>
					<p id="ppp" style="border-color:#01396a;"></p>
					<p id="chanpin_p" style="color: #01396a;"><?php echo $data['0']['description'];?></p>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
				</div>
			<div class="g_y" style="width: 100%;margin-top: 4%;">
				<ul class="row" style="padding-left: 0; padding-right: 0; width: 100%;">
					<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=4ed6501f822a2c03611afc04ba403f56&action=category&catid=10&num=25&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'10','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'25',));}?>
					<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
					<li class="col-md-4 col-sm-4 col-xs-4">
						<div class="gy col-md-12 col-sm-12 col-xs-12"></div>
						<div class="col-md-12 col-sm-12 col-xs-12 gyo">
							<div class="col-md-1 col-sm-1 col-xs-1" style="padding: 0;"><img src="<?php echo $r['image1'];?>"
																							 class="img-responsive"/>
							</div>
							<div class="col-md-10 col-sm-10 col-xs-10" style="color: #ffffff;"><p><?php echo $r['catname'];?></p><br/><span><?php echo $r['description'];?></span>
							</div>
						</div>
					</li>
					<?php $n++;}unset($n); ?>
					<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

					
				</ul>
			</div>
			
		</div>
		</div>
		</div>
		</div>
		
		<div class="section">
		<div>
			<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=4ed6501f822a2c03611afc04ba403f56&action=category&catid=10&num=25&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'10','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'25',));}?>
			<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
			<div class="container guanyu">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<h1 id="jr" style="color: #3c9ea5; "><img src="<?php echo $r['image'];?>"/>&nbsp;<?php echo $r['catname'];?></h1>
						<p id="se" style="color: #333333;"><?php echo $r['description'];?></p>
						<div class="but"><a href="<?php echo $r['url'];?>">查看详情</a></div>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12" id="gy_img">
						<img src="<?php echo $r['big_image'];?>" class="img-responsive"/>
					</div>
				</div>
			</div>
			<?php $n++;}unset($n); ?>
			<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

				<?php include template("","footer"); ?>
