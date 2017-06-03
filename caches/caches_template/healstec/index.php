<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("","header"); ?>


		
		<!--
        	作者：861343142@qq.com
        	时间：2017-05-16
        	描述：banner
       -->
      <div id="dowebok">
      	<div class="section fp-auto-height" style="padding-top: 0;">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="margin-top: 85px; ">
  <!-- Indicators -->
  

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
  	<ol class="carousel-indicators" id="carouse" style="bottom: 0;">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active" ></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
  </ol>
      <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=0e36d7bc8cce0f0439f7adcf3eb2013a&action=position&posid=2&order=listorder+DESC&num=2\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'position')) {$data = $content_tag->position(array('posid'=>'2','order'=>'listorder DESC','limit'=>'2',));}?>
      <?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
      <div class="item <?php if($n==1) { ?>active<?php } ?>">
          <img src="<?php echo $r['thumb'];?>" alt="<?php echo $r['title'];?>" class="img-responsive">
          <div class="carousel-caption" id="car">
              <h1 id="jr" class="jr"><?php echo str_cut($r[description],112);?></h1>
          </div>
          <div class="carousel-caption" id="ban">
          </div>
          <div class="carousel-caption" id="bann" >
              <p id="se"><a href="<?php echo $r['url'];?>" title="<?php echo $r['title'];?>"><?php echo str_cut($r[title],36,'');?></a></p>
          </div>
      </div>
      <?php $n++;}unset($n); ?>
      <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
  </div>
</div>
		
		<script src="<?php echo JS_PATH;?>/healstec/bootstrap.min.js"></script>
		<script type="text/javascript">
			$('.carousel').carousel({  
    		interval: 10000  
				});
		</script>
		</div>
	
	<div class="section" style="padding-top: 0; height: 5%; padding-bottom: 0;">
		<div class="container" id="midle">
			<div class="row">
				<div class="col-md-12  col-sm-12"  id="col"><p>科研技术</p></div>
				<ul class="col-md-12  col-sm-12 ">
                    <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=40db26058080a4b3e7ebe5d28acf75f5&action=category&catid=11&num=3&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'11','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'3',));}?>
                    <?php $c=end(array_keys($data))?>
                    <?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
                    <li class="col-md-4 col-sm-4" id="li_o">
                        <span class="col-md-12 col-sm-12"><img src="<?php echo $r['image'];?>" class="img-responsive center-block"/></span>
                        <h1><?php echo $r['description'];?></h1>
                        <h2 class="li_h1"><a href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a></h2>
                    </li>
                    <?php $n++;}unset($n); ?>
                    <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
				</ul>
			</div>
		</div>
	</div>
		
		<div class="section fp-auto-height section1">
		<div class="container" id="midle_o">
			<div class="row">
				<div class="col-md-12  col-sm-12"  id="col"><p>健康方案</p></div>
			</div>
		</div>
		<div class="container-fluid tu_o">
			<a href="ky_jk.html">
				<div class="row">
					<div class="tu_o_zh">
						<div class="tu_zh">
                            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=e7448c8a9a9ba6803f32f2820fc043cc&sql=select+%2A+from+hl_page+where+catid%3D%2722%27+&cache=3600&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_page where catid=\'22\' ',)).'e7448c8a9a9ba6803f32f2820fc043cc');if(!$data = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_page where catid='22'  LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
                            <h1><?php echo $data['0']['title'];?></h1>
                            <p><?php echo $data['0']['content'];?></p>
                            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>


					</div>
					</div>
				</div>
			</a>
		</div>
		</div>

		
<div class="section fp-auto-height section1">
		<div class="container" id="midle ">
			<div class="row">
				<div class="col-md-12  col-sm-12"  id="col"><p>营养与健康</p></div>
			</div>
		</div>		
		<div class="container-fluid tu_o" style="background: url(<?php echo IMG_PATH;?>/healstec/hp_05.png); width: 100%; background-size: cover;">
			<a href="yingyang.html">
			<div class="row">
				<div class="tu_o_zh">
					<div class="tu_zh">
						<h1 style="color: #ffffff;">营养与健康</h1>
					<p style="color: #ffffff;">“养生之道，莫先于食”。<br />合理的饮食搭配是健康的基础，机体摄入<br />健康营养成分的比例必须符合人体的需要......</p>
				</div>
				</div>
			</div>
			</a>
		</div>
		</div>
		
		<div class="section " style="padding-top: 0;">
		<div class="container" id="midle_o" style="margin-bottom: 0;">
			<div class="row" id="pd">
				<div class="col-md-12  col-sm-12"  id="col"><p>最新消息</p></div>
				<ul class="col-md-12  col-sm-12 ji_fa" id="ji_fa">
					<li class="col-md-12  col-sm-12">
						<img src="<?php echo IMG_PATH;?>/healstec/H_26.jpg" class="col-md-8  col-sm-8 col-xs-12 img-responsive" id="ji_img">
						<div class="col-md-4 col-sm-4 col-xs-12" id="ji_zi">
							<h1>自然科学</h1>
							<p>让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。</p>
						</div>
					</li>
					<li class="col-md-12  col-sm-12" >
						<img src="<?php echo IMG_PATH;?>H_29.jpg" class="col-md-8  col-sm-8 col-xs-12 img-responsive" id="ji_img"/>
						<div class="col-md-4 col-sm-4 col-xs-12" id="ji_zi">
							<h1>自然科学</h1>
							<p>让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。</p>
						</div>
					</li>
					<li class="col-md-12  col-sm-12">
						<img src="<?php echo IMG_PATH;?>H_29.jpg" class="col-md-8  col-sm-8 col-xs-12 img-responsive" id="ji_img"/>
						<div class="col-md-4 col-sm-4 col-xs-12" id="ji_zi">
							<h1>自然科学</h1>
							<p>让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。</p>
						</div>
					</li>
<!-- 					<li class="col-md-12  col-sm-12">
						<img src="<?php echo IMG_PATH;?>H_31.jpg" class="col-md-8  col-sm-8 col-xs-12 img-responsive" id="ji_img"/>
						<div class="col-md-4 col-sm-4 col-xs-12" id="ji_zi">
							<h1>自然科学</h1>
							<p>让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。让生活更加简单，让生命更加安全。</p>
						</div>
					</li> -->
				</ul>
			</div>
		</div>
		</div>

  
<div class="section fp-auto-height se_f">
		<footer>
			<div class="container"  style="padding: 0;">
				<ul class="col-md-12 col-sm-12 f_u" style="padding: 0;">
					<li class="col-md-3 col-sm-3 li_11" style="padding: 0;"><h1>联系我们</h1>
						<ul id="f_uu" class="col-md-12 col-sm-12"  style="padding: 0; margin-top: 0;">
							<li>官方热线：400-888-8888</li>
							<li>官方微信：Hhhhh</li>
							<li>QQ号：220220220</li>
						</ul>
					</li>
					<li class="col-md-2 col-sm-2 li_22" style="padding: 0;"><h1>公司简介</h1>
						<ul id="f_uu" class="col-md-12 col-sm-12"  style="padding: 0; margin-top: 0;">
							<li><a href="">公司历史</a></li>
							<li><a href="">业务原则</a></li>
							<li><a href="">H在中国</a></li>
							<li><a href="">质量与安全</a></li>
						</ul>
					</li>
					<li class="col-md-2 col-sm2 li_33" style="padding: 0;"><h1>新闻频道</h1>
						<ul id="f_uu" class="col-md-12 col-sm-12"  style="padding: 0; margin-top: 0;">
							<li><a href="">集团新闻</a></li>
							<li><a href="">新闻特写</a></li>
							<li><a href="">H声明</a></li>
							<li><a href="">媒体联系</a></li>
						</ul>
					</li>
					<li class="col-md-5 col-sm-5 li_44" style="padding: 0;"><h1>关注我们</h1>
						<ul id="f_uu" class="col-md-12 col-sm-12" style="padding: 0; margin-top: 0;">
							<li class="col-md-5 col-sm-5" style="padding: 0;">微信<br/><img src="<?php echo IMG_PATH;?>Hf_03.jpg"/></li>
							<li class="col-md-5 col-sm-5" style="padding: 0;">微博<br/><img src="<?php echo IMG_PATH;?>Hf_03.jpg"/></li>
						</ul>
					</li>					
				</ul>
				<div class="g_s">
					工商编码
				</div>
			</div>
		</footer>
		</div>
		</div>

		
	
	</body>
</html>
