<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("","header"); ?>

<?php include template("","gy_header"); ?>
		<!--认识我们-->
		<div class="container gy_wm renshiwomen" style="padding-left: 0; padding-right: 0;">
			<ul style="background: url(<?php echo IMG_PATH;?>/healstec/renshi_05.jpg) no-repeat center;background-size:cover ;width: 100%; padding-left: 0; margin-top: 0;" class="rho">
				<li style="float: right; letter-spacing: 1px;">我们是谁</li>
			</ul>
			<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=e99590800f909d5e34859d00be3b4e75&action=lists&catid=37&order=id+asc&num=3\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'37','order'=>'id asc','limit'=>'3',));}?>
			<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
			<ul style="background: url(<?php echo $r['thumb'];?>) no-repeat center;background-size:cover ;width: 100%;  padding-left: 0;<?php if($n==3) { ?> margin-top: 1%; margin-bottom: 10%;<?php } ?>" <?php if($n==1) { ?>class="rht"<?php } ?>
			<?php if($n==2) { ?>class="rhth"<?php } ?>
			<?php if($n==3) { ?>class="rhf"<?php } ?>
			>
				<li style="letter-spacing: 1px; color: #FFFFFF; width: 50%;
				<?php if($n==2) { ?>float: right<?php } ?>
				<?php if($n==3) { ?>margin-left: 4%<?php } ?>;
				">
				<h1 ><?php echo $r['title'];?></h1>
					<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=aadc4317070da8de5a591000248a8eca&sql=select+%2A+from+hl_news_data+where+id%3D%27%24r%5Bid%5D%27&cache=3600&return=data_ca\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_news_data where id=\'$r[id]\'',)).'aadc4317070da8de5a591000248a8eca');if(!$data_ca = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_news_data where id='$r[id]' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data_ca = $a;unset($a);if(!empty($data_ca)){setcache($tag_cache_name, $data_ca, 'tpl_data');}}?>
					<p><?php echo $data_ca['0']['content'];?></p>
					<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
				</li>				
			</ul>
			<?php $n++;}unset($n); ?>
			<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
		</div>
		
				
			
		
		<!--价值观-->
		<div class="container-fluid gy_wm" style=" display: none;">
			<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=fae448801cd59c5d993e80d85904dd75&action=lists&catid=38&order=id+asc&num=1\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'38','order'=>'id asc','limit'=>'1',));}?>
			<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
			<p align="center"><img src="<?php echo $r['thumb'];?>"/></p>
			<?php $n++;}unset($n); ?>
			<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

		</div>
		<!--使命愿景-->	
		<div class="container-fluid sm gy_wm" style="display: none; background: url(<?php echo IMG_PATH;?>/healstec/gysm01_05.jpg) no-repeat center; background-size: cover;width: 100%; he702">
			<div class="row">
				<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=58e37597c9104e7a24f968cef4235ad5&action=lists&moreinfo=1&catid=39&order=id+asc&num=2\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('moreinfo'=>'1','catid'=>'39','order'=>'id asc','limit'=>'2',));}?>
				<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
				<div class="col-md-12 col-sm-12 col-xs-12">
					<h1 <?php if($n==1) { ?>style="color: #f19e00;"<?php } ?>><?php echo $r['title'];?></h1>
					<p><?php echo $r2['content'];?></p>
				</div>
				<?php $n++;}unset($n); ?>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
			</div>
		</div>
		
		<!--核心竞争力-->
		<div class="ry gy_wm" style="display:none; background: url(img/gyhx_04.jpg) no-repeat center; background-size: cover; width: 100%; height: 673px; margin-top: 0; padding-top: 0;">
		<div class="container ryo">
			<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=779a5e53a5e87c4d0b1ae2d45dde7edc&action=lists&catid=40&order=id+asc&num=2\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'40','order'=>'id asc','limit'=>'2',));}?>
			<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
			<div style="float: right;">
				<h1 style="margin-top: 20%; font-size: 26px; color: #0097a5; text-align: right; margin-top:10%;">
					<?php echo $r['title'];?></h1>
				<div style="background: rgba(1,116,123,0.8);width: 300px; overflow: hidden; color: #FFFFFF; font-size: 15px; line-height: 3rem; padding: 8%;">
					<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=aadc4317070da8de5a591000248a8eca&sql=select+%2A+from+hl_news_data+where+id%3D%27%24r%5Bid%5D%27&cache=3600&return=data_ca\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_news_data where id=\'$r[id]\'',)).'aadc4317070da8de5a591000248a8eca');if(!$data_ca = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_news_data where id='$r[id]' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data_ca = $a;unset($a);if(!empty($data_ca)){setcache($tag_cache_name, $data_ca, 'tpl_data');}}?>
					<?php echo $data_ca['0']['content'];?>
					<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
				</div>
			</div>
			<?php $n++;}unset($n); ?>
			<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>



		</div>		
		</div>
		
		<!--新闻-->
		<div class="container xw gy_wm" style="padding-left: 0; padding-right: 0; padding-top: 0;display: none;">
			<div class="row">
			<div class="col-md-4 col-sm-4 xw_l col-xs-12">
				<h1><img src="img/hgyxy_09.jpg" class="img-responsive"/></h1>
				<div class="inp col-md-12 col-sm-12" style="padding-left: 0; padding-right: 0; margin-top: 8%;">
					<input type="text" value="输入新闻关键词" onfocus="if (value =='输入新闻关键词'){value =''}"onblur="if (value ==''){value='输入新闻关键词'}" style="color: #9a9a9a;"/>
					<a href="#"><div class="glyphicon glyphicon-search s_s"></div></a>
				</div>
				<div class="inp col-md-12 col-sm-12" style="padding-left: 0; padding-right: 0; margin-top: 2%;">
					
					<select>
						<option>最近一周</option>
						<option>最近一个月</option>
						<option>最近三个月</option>
						<option>最近半年</option>
						<option>最近一年</option>
					</select>
				</div>
			</div>
			<div class="col-md-8 col-sm-8 col-xs-12" style="padding-left: 0;">
				<ul class="col-md-12 col-sm-12 news col-xs-12">
					<li><h1>推动“一带一路”沿线文化交流合作“丝路荟影”摄影展在北京举行</h1>
						<h2>2017-05-15</h2>
						<p>在“一带一路”国际合作高峰论坛召开之际，由丝路商旅文组委会等单位主办的“丝路荟影”摄影展在北京拉开帷幕，全国人大原副委员长蒋正华、全国政协原副主席李金华等领导同志，以及海内外华人摄影艺术家和各界人士出席了5月12日的开幕式。</p>
					</li>
				</ul>
				<ul class="col-md-12 col-sm-12 news_o col-xs-12" style="padding: 0;">
					<li class="col-md-12 col-sm-12 li_o" col-xs-12>
						<a href="#">
						<h2 class="col-md-2 col-sm-2 col-xs-12" style="padding-left: 0; padding-right: 0;">2017-05-15</h2>
						<div class="col-md-9 col-sm-9 col-xs-12" style="padding-left: 0; padding-right: 0;"><h1>推动“一带一路”沿线文化交流合作“丝路荟影”摄影展在北京举行</h1>
							<p>在“一带一路”国际合作高峰论坛召开之际，由丝路商旅文组委会等单位主办的“丝路荟影”摄影展在北京拉开帷幕，全国人大原副委员长蒋正华、全国政协原副主席李金华等领导同志，以及海内外华人摄影艺术家和各界人士出席了5月12日的开幕式。</p>
						</div>
						<div class="col-md-1 col-sm-1 col-xs-1 glyphicon glyphicon-chevron-right tu_biao" style="padding-left: 0; padding-right: 0;"></div>		
						</a>
					</li>
					<li class="col-md-12 col-sm-12  col-xs-12">
						<a href="#">
						<h2 class="col-md-2 col-sm-2 col-xs-12" style="padding-left: 0; padding-right: 0;">2017-05-15</h2>
						<div class="col-md-9 col-sm-9 col-xs-12" style="padding-left: 0; padding-right: 0;"><h1>推动“一带一路”沿线文化交流合作“丝路荟影”摄影展在北京举行</h1>
							<p>在“一带一路”国际合作高峰论坛召开之际，由丝路商旅文组委会等单位主办的“丝路荟影”摄影展在北京拉开帷幕，全国人大原副委员长蒋正华、全国政协原副主席李金华等领导同志，以及海内外华人摄影艺术家和各界人士出席了5月12日的开幕式。</p>
						</div>
						<div class="col-md-1 col-sm-1 col-xs-1 glyphicon glyphicon-chevron-right tu_biao" style="padding-left: 0; padding-right: 0;"></div>		
						</a>
					</li>
					<li class="col-md-12 col-sm-12  col-xs-12">
						<a href="#">
						<h2 class="col-md-2 col-sm-2 col-xs-12" style="padding-left: 0; padding-right: 0;">2017-05-15</h2>
						<div class="col-md-9 col-sm-9 col-xs-12" style="padding-left: 0; padding-right: 0;"><h1>推动“一带一路”沿线文化交流合作“丝路荟影”摄影展在北京举行</h1>
							<p>在“一带一路”国际合作高峰论坛召开之际，由丝路商旅文组委会等单位主办的“丝路荟影”摄影展在北京拉开帷幕，全国人大原副委员长蒋正华、全国政协原副主席李金华等领导同志，以及海内外华人摄影艺术家和各界人士出席了5月12日的开幕式。</p>
						</div>
						<div class="col-md-1 col-sm-1 col-xs-1 glyphicon glyphicon-chevron-right tu_biao" style="padding-left: 0; padding-right: 0;"></div>		
						</a>
					</li>
					<li class="col-md-12 col-sm-12  col-xs-12">
						<a href="#">
						<h2 class="col-md-2 col-sm-2 col-xs-12" style="padding-left: 0; padding-right: 0;">2017-05-15</h2>
						<div class="col-md-9 col-sm-9 col-xs-12" style="padding-left: 0; padding-right: 0;"><h1>推动“一带一路”沿线文化交流合作“丝路荟影”摄影展在北京举行</h1>
							<p>在“一带一路”国际合作高峰论坛召开之际，由丝路商旅文组委会等单位主办的“丝路荟影”摄影展在北京拉开帷幕，全国人大原副委员长蒋正华、全国政协原副主席李金华等领导同志，以及海内外华人摄影艺术家和各界人士出席了5月12日的开幕式。</p>
						</div>
						<div class="col-md-1 col-sm-1 col-xs-1 glyphicon glyphicon-chevron-right tu_biao" style="padding-left: 0; padding-right: 0;"></div>		
						</a>
					</li>
					<li class="col-md-12 col-sm-12  col-xs-12">
						<a href="#">
						<h2 class="col-md-2 col-sm-2 col-xs-12" style="padding-left: 0; padding-right: 0;">2017-05-15</h2>
						<div class="col-md-9 col-sm-9 col-xs-12" style="padding-left: 0; padding-right: 0;"><h1>推动“一带一路”沿线文化交流合作“丝路荟影”摄影展在北京举行</h1>
							<p>在“一带一路”国际合作高峰论坛召开之际，由丝路商旅文组委会等单位主办的“丝路荟影”摄影展在北京拉开帷幕，全国人大原副委员长蒋正华、全国政协原副主席李金华等领导同志，以及海内外华人摄影艺术家和各界人士出席了5月12日的开幕式。</p>
						</div>
						<div class="col-md-1 col-sm-1 col-xs-1 glyphicon glyphicon-chevron-right tu_biao" style="padding-left: 0; padding-right: 0;"></div>		
						</a>
					</li>
				</ul>
			</div>
			</div>
		</div>
<?php include template("","footer"); ?>

