<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("","header"); ?>

<?php include template("","gy_header"); ?>
		<!--认识我们-->
		<div class="container kuang gy_wm " style="<?php if($catid!=37) { ?>display:none;<?php } ?>">
			<div style="background: url(<?php echo IMG_PATH;?>/healstec/renshi_05.jpg) no-repeat center;" class="rho">
			</div>
			<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=4a000bc384a9271b21460ed3c796dba8&action=lists&moreinfo=1&catid=37&order=id+asc&num=3\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('moreinfo'=>'1','catid'=>'37','order'=>'id asc','limit'=>'3',));}?>
			<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
            <div <?php if($n==1) { ?>class="rht"<?php } ?><?php if($n==2) { ?>class="rhth"<?php } ?><?php if($n==3) { ?>class="rhf"<?php } ?> style="background: url(<?php echo $r['thumb'];?>) no-repeat center;">
                <div class="col-md-6 col-sm-6 col-xs-12 info <?php if($n==2) { ?>col-md-offset-6 col-sm-offset-6<?php } ?>">
                    <h3><?php echo $r['title'];?></h3>
                <p ><?php echo $r['content'];?></p>
                </div>
            </div>







			<?php $n++;}unset($n); ?>
			<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
		</div>
		
				
			
		
		<!--价值观-->
		<div class="container-fluid gy_wm" <?php if($catid!=38) { ?> style=" display: none;"<?php } ?>>
			<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=fae448801cd59c5d993e80d85904dd75&action=lists&catid=38&order=id+asc&num=1\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'38','order'=>'id asc','limit'=>'1',));}?>
			<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
			<p align="center"><img src="<?php echo $r['thumb'];?>"/></p>
			<?php $n++;}unset($n); ?>
			<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

		</div>
		<!--使命愿景-->	
		<div class="container-fluid sm gy_wm" style="<?php if($catid!=39) { ?>display: none;<?php } ?> background: url(<?php echo IMG_PATH;?>/healstec/gysm01_05.jpg) no-repeat center; background-size: cover;width: 100%; he702">
			<div class="row">
				<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=58e37597c9104e7a24f968cef4235ad5&action=lists&moreinfo=1&catid=39&order=id+asc&num=2\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('moreinfo'=>'1','catid'=>'39','order'=>'id asc','limit'=>'2',));}?>
				<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
				<div class="col-md-12 col-sm-12 col-xs-12">
					<h1 <?php if($n==1) { ?>style="color: #f19e00;"<?php } ?>><?php echo $r['title'];?></h1>
					<p><?php echo $r['content'];?></p>
				</div>
				<?php $n++;}unset($n); ?>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
			</div>
		</div>
		
		<!--核心竞争力-->
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=8df8b9ac6467a5dc61c4802bd11cca9c&action=lists&moreinfo=1&catid=40&order=id+asc&num=1\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('moreinfo'=>'1','catid'=>'40','order'=>'id asc','limit'=>'1',));}?>
<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
		<div class="ry gy_wm" style="<?php if($catid!=40) { ?>display:none;<?php } ?> background: url(<?php echo $r['thumb'];?>) no-repeat center; background-size: cover; width: 100%; height: 673px; margin-top: 0; padding-top: 0;">
		<div class="container ryo">


			<div style="float: right;">
				<h1 style="margin-top: 20%; font-size: 26px; color: #0097a5; text-align: right; margin-top:10%;">
					<?php echo $r['title'];?></h1>
				<div style="background: rgba(1,116,123,0.8);width: 300px; overflow: hidden; color: #FFFFFF; font-size: 15px; line-height: 3rem; padding: 8%;">
					<?php echo $r['content'];?>
				</div>
			</div>
			<?php $n++;}unset($n); ?>
			<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>



		</div>		
		</div>
		
		<!--新闻-->
		<div class="container xw gy_wm" style="padding-left: 0; padding-right: 0; padding-top: 0;<?php if($catid!=41) { ?>display: none;<?php } ?>">
			<div class="row">
			<div class="col-md-4 col-sm-4 xw_l col-xs-12">
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=3afc5d23844a89b3b824109a6e491399&action=position&posid=10&catid=41&thumb=1&order=listorder+DESC&num=1\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'position')) {$data = $content_tag->position(array('posid'=>'10','catid'=>'41','thumb'=>'1','order'=>'listorder DESC','limit'=>'1',));}?>
                <?php $n=1;if(is_array($data)) foreach($data AS $v) { ?>
				<h1><img src="<?php echo $v['thumb'];?>" class="img-responsive"/></h1>
                <?php $n++;}unset($n); ?>
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                <form id="news_search" action="<?php echo APP_PATH;?>index.php" method="get">
				<input type="hidden" name="m" value="content">
                    <input type="hidden" name="c" value="index">
                    <input type="hidden" name="a" value="lists">
                    <input type="hidden" name="catid" value="41">
                    <div class="inp col-md-12 col-sm-12" style="padding-left: 0; padding-right: 0; margin-top: 8%;">

					<input type="text" name="key_word" value="<?php if($key_word=='') { ?>输入新闻关键词<?php } else { ?><?php echo $key_word;?><?php } ?>" onfocus="if (value =='输入新闻关键词'){value =''}"onblur="if (value ==''){value='输入新闻关键词'}" style="color: #9a9a9a;"/>
					<div  id="submit" class="glyphicon glyphicon-search s_s"></div>
				</div>
				<div class="inp col-md-12 col-sm-12" style="padding-left: 0; padding-right: 0; margin-top: 2%;">
					
					<select name="date">

						<option value="1" <?php if($date==1) { ?>selected="selected"<?php } ?>>最近一周</option>
						<option value="2" <?php if($date==2) { ?>selected="selected"<?php } ?>>最近一个月</option>
						<option value="3" <?php if($date==3) { ?>selected="selected"<?php } ?>>最近三个月</option>
						<option value="4" <?php if($date==4) { ?>selected="selected"<?php } ?>>最近半年</option>
						<option value="5" <?php if($date==5) { ?>selected="selected"<?php } ?>>最近一年</option>
					</select>
				</div>
                </form>
			</div>
			<div class="col-md-8 col-sm-8 col-xs-12" style="padding-left: 0;">

				<ul class="col-md-12 col-sm-12 news col-xs-12">
                    <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=3afc5d23844a89b3b824109a6e491399&action=position&posid=10&catid=41&thumb=1&order=listorder+DESC&num=1\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'position')) {$data = $content_tag->position(array('posid'=>'10','catid'=>'41','thumb'=>'1','order'=>'listorder DESC','limit'=>'1',));}?>
                    <?php $n=1;if(is_array($data)) foreach($data AS $v) { ?>
					<li><a href="<?php echo $v['url'];?>" style="text-decoration: none" target="_blank"><h1><?php echo $v['title'];?></h1>
						<h2><?php echo date('Y-m-d',$v[inputtime]);?></h2>
						<p><?php echo $v['description'];?></p>
                    </a>
					</li>
                    <?php $n++;}unset($n); ?>
                    <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
				</ul>
				<ul class="col-md-12 col-sm-12 news_o col-xs-12" style="padding: 0;">
                    <?php $n=1; if(is_array($data_arr)) foreach($data_arr AS $k => $r) { ?>
					<li class="col-md-12 col-sm-12 li_o col-xs-12">
						<a href="<?php echo $r['url'];?>" target="_blank">
						<h2 class="col-md-2 col-sm-2 col-xs-12" style="padding-left: 0; padding-right: 0;"><?php echo date('Y-m-d',$r[inputtime]);?></h2>
						<div class="col-md-9 col-sm-9 col-xs-12" style="padding-left: 0; padding-right: 0;"><h1><?php echo $r['title'];?></h1>
							<p><?php echo $r['content'];?></p>
						</div>
						<div class="col-md-1 col-sm-1 col-xs-1 glyphicon glyphicon-chevron-right tu_biao" style="padding-left: 0; padding-right: 0;"></div>		
						</a>
					</li>
                    <?php $n++;}unset($n); ?>

				</ul>
			</div>
			</div>
		</div>
        <script>
            $(function () {
                $('#submit').click(function(){
                    $('#news_search').submit();
                })
            })
        </script>
<?php include template("","footer"); ?>

