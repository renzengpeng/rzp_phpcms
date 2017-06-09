<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php if($_GET['a']!='show') { ?>
<div class="section fp-auto-height se_f">
    <?php } ?>
    <footer>
        <div class="container" style="padding: 0;">
            <ul class="col-md-12 col-sm-12 f_u" style="padding: 0;">
                <li class="col-md-3 col-sm-3 li_11" style="padding: 0;">
                    <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=61a9a3483f9c3bfb0ba45eaa0fc53902&sql=select+%2A+from+hl_category+where+catid%3D%2746%27&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='46' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);?>
                    <h1><?php echo $data['0']['catname'];?></h1>
                    <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                    <ul id="f_uu" class="col-md-12 col-sm-12" style="padding: 0; margin-top: 0;">
                        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=4657b409a2c4211dbeebfc543399fd37&sql=select+%2A+from+hl_page+where+catid%3D%2746%27&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_page where catid='46' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);?>
                        <?php echo $data['0']['content'];?>
                        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                    </ul>
                </li>

                <li class="col-md-2 col-sm-2 li_22" style="padding: 0;">
                    <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=d713c37c807ffa7347ad2de2b1b9c2f0&sql=select+%2A+from+hl_category+where+catid%3D%2742%27&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='42' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);?>
                    <h1><?php echo $data['0']['catname'];?></h1>
                    <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

                    <ul id="f_uu" class="col-md-12 col-sm-12" style="padding: 0; margin-top: 0;">
                        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=10188028374ff0dbe8e8c36990633ea5&action=lists&moreinfo=1&catid=42&order=id+asc&num=3\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('moreinfo'=>'1','catid'=>'42','order'=>'id asc','limit'=>'3',));}?>
                        <?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
                        <li><a href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a></li>
                        <?php $n++;}unset($n); ?>
                        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                    </ul>
                </li>
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=f99392bfa16710563120c1a5c2bd7c00&sql=select+%2A+from+hl_category+where+catid%3D%2741%27&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='41' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);?>

                <li class="col-md-2 col-sm2 li_33" style="padding: 0;"><h1><?php echo $data['0']['catname'];?></h1>
                    <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                    <ul id="f_uu" class="col-md-12 col-sm-12" style="padding: 0; margin-top: 0;">
                        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=6dc8228ceed81ae4acbfdf24db4fcfae&sql=select+%2A+from+hl_category+where+parentid%3D%2741%27&return=data1\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where parentid='41' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data1 = $a;unset($a);?>

                        <?php $n=1; if(is_array($data1)) foreach($data1 AS $k => $r) { ?>
                        <li><a href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a></li>
                        <?php $n++;}unset($n); ?>
                        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                    </ul>
                </li>
                <li class="col-md-5 col-sm-5 li_44" style="padding: 0;">
                    <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=fb6d5235e948d109ca9255907e4731be&sql=select+%2A+from+hl_category+where+catid%3D%2743%27&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='43' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);?>
                    <h1><?php echo $data['0']['catname'];?></h1>
                    <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                    <ul id="f_uu" class="col-md-12 col-sm-12" style="padding: 0; margin-top: 0;">
                        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=01a085ba1ec50aafdf3df2c206d2b486&action=category&catid=43&num=2&order=listorder+ASC&return=data1\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data1 = $content_tag->category(array('catid'=>'43','order'=>'listorder ASC','limit'=>'2',));}?>
                        <?php $n=1; if(is_array($data1)) foreach($data1 AS $k => $r) { ?>
                        <li class="col-md-5 col-sm-5" style="padding: 0;"><?php echo $r['catname'];?><br/><img src="<?php echo $r['image'];?>"/></li>
                        <?php $n++;}unset($n); ?>
                        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                    </ul>
                </li>
            </ul>
            <div class="g_s">
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=8c2db4b19134874adbd249c43f6ad75e&sql=select+%2A+from+hl_category+where+catid%3D%2748%27&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='48' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);?>
                <?php echo $data['0']['catname'];?>  <?php echo $data['0']['description'];?>
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

            </div>

        </div>
    </footer>
    <?php if($_GET['a']!='show') { ?>
</div>
        <?php } ?>
</div>
</div>


</body>
</html>

