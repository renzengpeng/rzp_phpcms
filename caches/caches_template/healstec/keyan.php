<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("","header"); ?>
					
		<div id="dowebok">
			<div class="section  fp-auto-height section3" style="padding-top: 0;">
		<div class="container-fluid tu_o tu_o_2 tu_o_3" style="padding-top: 0; margin-top: 85px; background: url(img/hk_02.png) no-repeat center; width: 100%; background-size: cover;">
			<div class="row">				
				<div class="tu_o_zh" id="tu_cpcp">
					<div class="tu_zh" id="keyanjishu" style="width: 100%; text-align: right;">
					<h1  id="chanpin_h1" style="color: #01396a;">科研技术</h1>
					<p></p>
					<div class="clearfix"></div>
					<p id="chanpin_p" style="color: #01396a;">倾心所以专注，专注所以专业，专业所以创新——
<br/>以标准先进的科研技术，耐心细致的科研态度，持之以恒的科研毅力
<br/>创建您理想健康的生活形态</p>
				</div>
				</div>
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
			<a href="ky_js.html" class="tu_o_1">
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
		

