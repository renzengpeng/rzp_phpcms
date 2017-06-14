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
      <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=92f7c98813e67bd0f1d8864dc6efe48c&action=position&posid=2&thumb=1&order=listorder+DESC&num=2\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'position')) {$data = $content_tag->position(array('posid'=>'2','thumb'=>'1','order'=>'listorder DESC','limit'=>'2',));}?>
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
                        <h1><?php echo $r['description_index'];?></h1>
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
		<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=c523c1e517632c227e3e71276bdcd059&sql=select+%2A+from+hl_category+where+catid%3D%2725%27&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='25' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);?>
			<div class="container-fluid tu_o"
				 style="background: url(<?php echo $data['0']['image1'];?>); width: 100%; background-size: cover;">
				<a href="<?php echo $data['0']['url'];?>">
					<div class="row">
						<div class="tu_o_zh">
							<div class="tu_zh">

								<h1>What I Do?</h1>
								<p><?php echo $data['0']['description'];?></p>



						</div>
						</div>
					</div>
				</a>
			</div>
		<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
		</div>

		
	<div class="section fp-auto-height section1">
		<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=7dc6f55bec3fb920f11b214a4987c347&sql=select+%2A+from+hl_category+where+catid%3D%2713%27+&cache=3600&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'13\' ',)).'7dc6f55bec3fb920f11b214a4987c347');if(!$data = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='13'  LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
		<div class="container" id="midle ">
			<div class="row">
				<div class="col-md-12  col-sm-12"  id="col"><p><?php echo $data['0']['catname'];?></p></div>
			</div>
		</div>		
		<div class="container-fluid tu_o" style="background: url(<?php echo $data['0']['big_image'];?>); width: 100%; background-size: cover;">
			<a href="<?php echo $data['0']['url'];?>">
			<div class="row">
				<div class="tu_o_zh">
					<div class="tu_zh">
						<h1 style="color: #ffffff;"><?php echo $data['0']['catname'];?></h1>
					<p style="color: #ffffff;"><?php echo $data['0']['description'];?></p>
				</div>
				</div>
			</div>
			</a>
		</div>
		<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
	</div>
		
		<div class="section " style="padding-top: 0;">
		<div class="container" id="midle_o" style="margin-bottom: 0;">
			<div class="row" id="pd">
				<div class="col-md-12  col-sm-12"  id="col"><p>最新消息</p></div>
				<ul class="col-md-12  col-sm-12 ji_fa" id="ji_fa">
					<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=f2a353b91fc172dd82facad3f6318d7f&action=lists&catid=52&order=updatetime+DESC&thumb=1&num=3&return=info\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$info = $content_tag->lists(array('catid'=>'52','order'=>'updatetime DESC','thumb'=>'1','limit'=>'3',));}?>
					<?php $n=1;if(is_array($info)) foreach($info AS $v) { ?>
					<li class="col-md-12  col-sm-12">
						<img src="<?php echo $v['thumb'];?>" class="col-md-8  col-sm-8 col-xs-12 img-responsive"
							 id="ji_img">
						<div class="col-md-4 col-sm-4 col-xs-12" id="ji_zi">
							<h1><?php echo $v['title'];?></h1>
							<p><?php echo str_cut($v['description'],100);?></p>
						</div>
					</li>

					<?php $n++;}unset($n); ?>
					<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
				</ul>
			</div>
		</div>
		</div>

		  <?php include template("","footer"); ?>

