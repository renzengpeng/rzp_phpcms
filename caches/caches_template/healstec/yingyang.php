<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("","header"); ?>


<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=68bea04474d2b2860401c9b6823a9f1f&sql=select+%2A+from+hl_category+where+catid%3D%2713%27&cache=3600&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'13\'',)).'68bea04474d2b2860401c9b6823a9f1f');if(!$data = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='13' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
		<div class="container-fluid tu_o tu_o_2 tu_o_3" style="background: url(<?php echo $data['0']['big_image'];?>); width: 100%;  background-size: cover; margin-top: 85px;">
			<div class="row">	
				<div class="tu_o_zh "  id="tu_cpcp">
					<div class="tu_zh" id="keyanjishu" style="width: 100%; text-align: right;">
						<h1  id="chanpin_h1" style="color: #ffffff;"><?php echo $data['0']['catname'];?></h1>
						<p></p>
						<div class="clearfix"></div>
						<p id="chanpin_p" style="color: #ffffff; width:100%;"><?php echo $data['0']['description'];?></p>
					</div>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
				<!--
                	<ul class="row">
					<li class="col-md-3 col-sm-3 col-xs-3" id="chpin" style="margin-left: 0; margin-top: 8%;">
						<div class="col-md-2 col-sm-2"><img src="img/hc_030.png" /></div>
						<div class="col-md-10 col-sm-10" id="ch_o">
							<a href="yy_jk.html">
							<h1>健康瘦身</h1>
							<p>致力于纳米微果和包脉增溶技术的研发和应用</p>
							</a>
						</div>
					</li>
					<li class="col-md-3 col-sm-3 col-xs-3" id="chpin" style="margin-left: 3%; margin-top: 8%;">
						<div class="col-md-2 col-sm-2"><img src="img/hc_0300.png"/></div>
						<div class="col-md-10 col-sm-10" id="ch_o">
							<a href="yy_sp.html">
							<h1>商品剖析</h1>
							<p>致力于纳米微囊和包埋增溶技术的研发和应用</p>
							</a>
						</div>
					</li>
					<li class="col-md-3 col-sm-3 col-xs-3" id="chpin" style="margin-left: 3%; margin-top: 8%;">
						<div class="col-md-2 col-sm-2"><img src="img/hc_03000.png"/></div>
						<div class="col-md-10 col-sm-10" id="ch_o">
							<a href="yy_cp.html">
							<h1>产品配料</h1>
							<p>致力于纳米微囊和包埋增溶技术的研发和应用</p>
							</a>
						</div>
					</li>
				</ul>               	
               -->				
				</div>
			</div>		
		</div>

<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=686d7e273c23cbcc78152b44a4865134&sql=select+%2A+from+hl_category+where+catid%3D%2729%27&cache=3600&return=data_ca\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'29\'',)).'686d7e273c23cbcc78152b44a4865134');if(!$data_ca = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='29' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data_ca = $a;unset($a);if(!empty($data_ca)){setcache($tag_cache_name, $data_ca, 'tpl_data');}}?>
		<div class="container" id="midle_o" style="margin-bottom: 4%;">
			<div class="row" id="pd">
				<div class="col-md-12  col-sm-12"  id="col"><p><?php echo $data_ca['0']['catname'];?></p></div>
				<ul class="col-md-12  col-sm-12 ji_fa" id="ji_fa">
					<li class="col-md-12  col-sm-12">						
						<div class="col-md-7 col-sm-7 col-xs-12" id="ji_zi" style="padding-top: 0; padding-left: 0;">
							<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=13a437aed355a21d0426b27eb9d6bb06&action=lists&moreinfo=1&catid=29&order=id+DESC&num=10\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('moreinfo'=>'1','catid'=>'29','order'=>'id DESC','limit'=>'10',));}?>
							<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
							<h2  class="xy_h1" style="color: #01396a;"><?php echo $r['title'];?></h2>
							<span class="xy_p2"><?php echo $r['content'];?></span>
							<?php $n++;}unset($n); ?>
							<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
						</div>
						<img src="<?php echo $data_ca['0']['big_image'];?>" class="col-md-5  col-sm-5 col-xs-12 img-responsive" id="ji_img">
					</li>									
				</ul>
			</div>
		</div>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=29be3b4e301e4af2dcf2852a624ff4f6&sql=select+%2A+from+hl_category+where+catid%3D%2730%27&cache=3600&return=data_ca\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'30\'',)).'29be3b4e301e4af2dcf2852a624ff4f6');if(!$data_ca = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='30' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data_ca = $a;unset($a);if(!empty($data_ca)){setcache($tag_cache_name, $data_ca, 'tpl_data');}}?>
		<div class="container" id="midle">
			<div class="row">
				<div class="col-md-12  col-sm-12" id="col"><p ><?php echo $data_ca['0']['catname'];?></p></div>
			</div> 
		</div>
			<div class="container-fluid" id="midle" style="background: url(<?php echo $data_ca['0']['big_image'];?>); width: 100%;  background-size: cover;">
			<div  class="pp_pai">
			<ul class="row" id="pinpai">
				<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=74e317f79067e63b64167c54eb1cca64&action=lists&catid=30&order=id+DESC&num=10\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'30','order'=>'id DESC','limit'=>'10',));}?>
				<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
				<li class="col-md-12 col-sm-12 col-xs-12" style="padding: 4% 0;">
					<a href="<?php echo $r['url'];?>">
					<div class="col-md-12 col-sm-12 col-xs-12"><p><?php echo $r['title'];?></p></div>
					</a>
				</li>
				<?php $n++;}unset($n); ?>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
			</ul>
		</div>
		</div>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=a916b0a80f1ada2ffa527fa484e8f42c&sql=select+%2A+from+hl_category+where+catid%3D%2731%27&cache=3600&return=data_ca\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'31\'',)).'a916b0a80f1ada2ffa527fa484e8f42c');if(!$data_ca = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='31' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data_ca = $a;unset($a);if(!empty($data_ca)){setcache($tag_cache_name, $data_ca, 'tpl_data');}}?>
		<div class="container" id="midle_o" style="margin-bottom: 6%;">
			<div class="row" >
				<div class="col-md-12  col-sm-12"  id="col"><p><?php echo $data_ca['0']['catname'];?></p></div>
                <ul class="col-md-12  col-sm-12 ji_fa" id="ji_fa">
					<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=adacd06f384382d287a39d8357ae0486&action=lists&moreinfo=1&catid=31&order=id+DESC&num=10\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('moreinfo'=>'1','catid'=>'31','order'=>'id DESC','limit'=>'10',));}?>
					<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>

					<li class="col-md-12  col-sm-12">
						<a href="<?php echo $r['url'];?>" style="color: black">
						<img src="<?php echo $r['thumb'];?>" class="col-md-6  col-sm-6 col-xs-12 img-responsive" id="ji_img">
						<div class="col-md-6 col-sm-6 col-xs-12" id="ji_zi">
							<h1><?php echo $r['title'];?></h1>
							<p class="xp_p3"><?php echo str_cut($r[content],40);?></p>
						</div>
						</a>
					</li>
					<?php $n++;}unset($n); ?>
					<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
				</ul>
			</div>
		</div>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

<?php include template("","footer"); ?>
