<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("","header"); ?>
						
<div id="dowebok">
			<div class="section fp-auto-height" style="padding-top: 0;">
				<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=a72c67154a1d4b6fa476f079b1cb2a39&sql=select+%2A+from+hl_category+where+catid%3D%2714%27&cache=3600&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'14\'',)).'a72c67154a1d4b6fa476f079b1cb2a39');if(!$data = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='14' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
		<div class="container-fluid tu_o tu_o_2 tu_o_3" style="padding-top: 0; margin-top: 85px; background: url(<?php echo $data['0']['big_image'];?>) no-repeat center; width: 100%; background-size: cover;">
			<div class="row">
				<div class="tu_o_zh" id="tu_cpcp">
					<div class="tu_zh" id="keyanjishu" style="width: 100%; text-align: right;">
					<h1  id="chanpin_h1" style="color: #ffffff;"><?php echo $data['0']['catname'];?></h1>
					<p></p>
					<div class="clearfix"></div>
					<p id="chanpin_p" style="color: #ffffff;"><?php echo $data['0']['description'];?></p>
				</div>
				</div>
			</div>
		</div>
		</div>
		</div>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=bbedfd8e6bc33f384ef6b35889e63c50&sql=select+%2A+from+hl_category+where+catid%3D%2732%27&cache=3600&return=data_ca\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'32\'',)).'bbedfd8e6bc33f384ef6b35889e63c50');if(!$data_ca = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='32' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data_ca = $a;unset($a);if(!empty($data_ca)){setcache($tag_cache_name, $data_ca, 'tpl_data');}}?>
		<div class="container" id="midle">
			<div class="row">
				<div class="col-md-12  col-sm-12"  id="col"><p><?php echo $data_ca['0']['catname'];?></p></div>
			</div>
		</div>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=d429c17e9b487990737708ba25e5ebf0&action=lists&moreinfo=1&catid=32&order=id+DESC&num=10\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('moreinfo'=>'1','catid'=>'32','order'=>'id DESC','limit'=>'10',));}?>
<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
		<a href="<?php echo $r['url'];?>">
            <?php if($n%2==1) { ?>
		<div class="container-fluid tu_o tu_o_2" style="background: url(<?php echo $r['thumb'];?>); width: 100%;  background-size: cover; margin-bottom:2%;">
            	<div class="tu_o_zh " style="padding-top: 8%;" id="tu_cp" >
				<div class="tu_zh row" id="pp">
					<div class="col-md-1 col-sm-1 col-xs-1" id="biao">
						<p></p>
					</div>
					<div class="col-md-11 col-sm-11 col-xs-11" id="ppo">
					<h1 class="col-xs-12"><?php echo $r['title'];?></h1>
					<p style="font-size: 18px; margin-top: -1%;" class="col-xs-12"><?php echo $r['description'];?></p>
					<p class="col-xs-12"><?php echo $r['content'];?></p>
					</div>
				</div>	
				</div>        								
		</div>
            <?php } else { ?>
        <div class="container-fluid tu_o tu_o_2" style="background: url(<?php echo $r['thumb'];?>); width: 100%;  background-size: cover; margin-top: 0; padding-top: 0;">
            <div class="tu_o_zh " style="padding-top: 8%;" id="tu_cp " >
                <div class="tu_zh row" id="pp" style="float: right;">
                    <div class="col-md-1 col-sm-1 col-xs-1" id="biao" style="text-align: right; float: right;">
                        <p style="float: right;"></p>
                    </div>
                    <div class="col-md-11 col-sm-11 col-xs-11" id="ppo" style="text-align: right; padding-right: 0;">
                        <h1><?php echo $r['title'];?></h1>
                        <p style="font-size: 18px; margin-top: -1%;">{$r[description]</p>
                        <p class="col-xs-12"><?php echo $r['content'];?></p>
                    </div>
                </div>
            </div>
        </div>
            <?php } ?>
		</a>
<?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
	
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>


			

		<div class="container" id="midle">
			<div class="row">
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=e83238c5e2662643a04b99faeebe41ec&sql=select+%2A+from+hl_category+where+catid%3D%2736%27&cache=3600&return=data_ca\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'36\'',)).'e83238c5e2662643a04b99faeebe41ec');if(!$data_ca = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='36' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data_ca = $a;unset($a);if(!empty($data_ca)){setcache($tag_cache_name, $data_ca, 'tpl_data');}}?>
				<div class="col-md-12  col-sm-12"  id="col"><p><?php echo $data_ca['0']['catname'];?></p></div>
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
			</div>
		</div>
		<div class="container" style=" margin:2% auto;">
			<ul class="row" style="padding-left: 0" >
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=49010336812a66b1dd1ac1ecf22e5ca8&action=lists&catid=36&order=id+DESC&num=10\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'36','order'=>'id DESC','limit'=>'10',));}?>
                <?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
				<li class="col-md-12 col-sm-12 col-xs-12 p_pai"  style=" padding-top: 15px;"  <?php if($n>1) { ?> id="ppai"<?php } ?> >
					<a href="<?php echo $r['redirect_url'];?>"  >
					<div class="col-md-11 col-sm-10 col-xs-9"><p ><?php echo $r['title'];?></p></div>
					<h1 class="glyphicon glyphicon-triangle-bottom col-md-1 col-sm-2 col-xs-3"  style="text-align: center;"></h1>
					</a>
<!-- 					<ul class="row" id="pinpaineirong" style="display: none; padding-left: 0 ; padding-right: 0;">
				<li class="col-md-2 col-sm-2 col-xs-2" >
					<p><a href="#">果蔬</a></p>
				</li>
				<li class="col-md-2 col-sm-2 col-xs-2" >
					<p><a href="#">餐具</a></p>
				</li>
				<li class="col-md-2 col-sm-2 col-xs-2" >
					<p><a href="#">奶瓶</a></p>
				</li>
			</ul> -->
				</li>
                <?php $n++;}unset($n); ?>
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
            </ul>
		</div>
        	<script type="text/javascript">
			$(function(){
				$(".p_pai").hover(function(){
					$("#pinpaineirong").css("display","block");
				}).mouseleave(function(){
					$("#pinpaineirong").css("display","none");
				})
			})
		</script>


<?php include template("","footer"); ?>
