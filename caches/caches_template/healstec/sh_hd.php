<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("","header"); ?>
<script src="<?php echo JS_PATH;?>/healstec/jquery-3.1.1.min.js" type="text/javascript"></script>
<script>
    window.jQuery || document.write('<script src="<?php echo JS_PATH;?>/healstec/jquery-3.1.1.min.js"><\/script>')
</script>
<script src="<?php echo JS_PATH;?>/healstec/bootstrap.min.js"></script>
<script type="text/javascript" src="<?php echo JS_PATH;?>/healstec/nav.js"></script>
<link type="text/css" rel="stylesheet" href="<?php echo CSS_PATH;?>/healstec/styles.css"/>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=c20eb3e71c9b11c2ad0f0b3b483c90f1&sql=select+%2A+from+hl_category+where+catid%3D%2712%27&cache=3600&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'12\'',)).'c20eb3e71c9b11c2ad0f0b3b483c90f1');if(!$data = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='12' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
    <div class="container-fluid tu_o" style="background: url(<?php echo $data['0']['image1'];?>) center; width: 100%;  background-size: cover; margin-top: 70px;" id="gy_to"></div>
    <div class="container-fluid tu_o" style="background: url(<?php echo $data['0']['image1'];?>) center; width: 100%;  background-size: cover; margin-top: 70px; display: none;" id="gy_to"></div>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

    <div class="container-fluid" style="border-bottom: 1px solid #f4f4f4;">
        <div class="row gy_no clearfix">
            <ul class="col-md-6 col-sm-4 col-xs-12 x_w" style="padding-bottom: 0; margin-bottom: 0;">
                <li class="col-md-1 col-sm-2 x_w_img col-xs-12" style="background: #f4f4f4; text-align: center;"><img src="<?php echo IMG_PATH;?>/healstec/hgyxy_05.jpg" /></li>
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=c20eb3e71c9b11c2ad0f0b3b483c90f1&sql=select+%2A+from+hl_category+where+catid%3D%2712%27&cache=3600&return=data\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'12\'',)).'c20eb3e71c9b11c2ad0f0b3b483c90f1');if(!$data = tpl_cache($tag_cache_name,3600)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='12' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
                <li class="col-md-2 col-sm-4" style="padding-right: 0;">
                    <p><?php echo $data['0']['catname'];?></p>
                </li>
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                <li class="col-md-1 col-sm-1" style="padding-left: 0; text-align: center;"><img src="<?php echo IMG_PATH;?>/healstec/xw_08.jpg" /></li>
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=61f1316d9c673aad23d6ff5ecc1abc42&sql=select+%2A+from+hl_category+where+catid%3D%27%24catid%27&cache=1&return=data1\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('sql'=>'select * from hl_category where catid=\'$catid\'',)).'61f1316d9c673aad23d6ff5ecc1abc42');if(!$data1 = tpl_cache($tag_cache_name,1)){pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select * from hl_category where catid='$catid' LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data1 = $a;unset($a);if(!empty($data1)){setcache($tag_cache_name, $data1, 'tpl_data');}}?>
                <li class="col-md-2 col-sm-4" style="padding-left: 0; color: #0096a5;" id="text">
                    <p><?php echo $data1['0']['catname'];?></p>
                </li>
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
            </ul>
            <ul class="col-md-4 col-sm-5 x_w_y col-xs-12" style="float:right; padding-bottom: 0; margin-bottom: 0; text-align: center;" id="onck">
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=a910ec7667ac39446959d9752009b43a&action=category&catid=12&num=25&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'12','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'25',));}?>
                <?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
                <li class="col-md-4 col-sm-4 <?php if($catid!=$r[catid]) { ?> x_w_y_li<?php } ?> col-xs-4"  <?php if($catid==$r[catid]) { ?>style="padding-right: 0; border-bottom: 1px solid #f7ac1d;"<?php } ?> >
                    <p><?php echo $r['catname'];?></p>
                </li>
                <?php $n++;}unset($n); ?>
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>


            </ul>
        </div>
    </div>

    <script type="text/javascript">
        $(function() {
            var $p = $("#onck li");
            $p.css("cursor", "pointer");
            $p.click(function() {
                //选中的文字添加下边框
                $p.css({
                    "border-bottom": "0",
                })
                $(this).css({
                        "border-bottom": "1px solid #f7ac1d",
                    })
                    //选中后其左面显示其一致的文字内容并加上颜色效果
                var $tex = $("#text p");
                $tex.text($(this).text()).css("color", "#0096a5");
                //选中后相应的banner图转换
                var $im = $(".tu_o");
                $im.css("display", "none");
                $im.eq($(this).index()).css("display", "block");
                //点击展示相应内容
                var $gy = $(".gy_wm");
                $gy.css("display", "none");
                $gy.eq($(this).index()).fadeIn(500); //透明渐入效果

            })
        })
    </script>
    <!--关注公益-->
    <div class="container gy_wm" <?php if($catid!=27) { ?>style=" display: none;"<?php } ?>>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=163e12d528ff19621c9782cb6bbac527&action=lists&moreinfo=1&catid=27&order=id+desc&num=10\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('moreinfo'=>'1','catid'=>'27','order'=>'id desc','limit'=>'10',));}?>

<?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
        <div class="row  gongyi">
            <div class="col-md-3 col-sm-4" style="padding: 0;">
                <img src="<?php echo $r['thumb'];?>" style="width:100%;height:200px;" />
            </div>
            <div class="col-md-9 col-sm-8 " style="background: #f4f4f4;height: 200px;">
                <a href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a>
                <b><?php echo date('Y-m-d',$r[inputtime]);?></b>
                <p><?php echo $r['description'];?></p>
            </div>
        </div>
<?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

    </div>
    <!--社会活动-->
    <div class="container gy_wm" <?php if($catid!=28) { ?>style=" display: none;"<?php } ?>>
        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=0e5c5cf888de52b8672d2ae5354ba6ed&action=lists&moreinfo=1&catid=28&order=id+desc&num=10\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('moreinfo'=>'1','catid'=>'28','order'=>'id desc','limit'=>'10',));}?>

        <?php $n=1; if(is_array($data)) foreach($data AS $k => $r) { ?>
        <div class="row  gongyi">
            <div class="col-md-3 col-sm-4" style="padding: 0;">
                <img src="<?php echo $r['thumb'];?>" style="width:100%;height:200px;" />
            </div>
            <div class="col-md-9 col-sm-8 " style="background: #f4f4f4;height: 200px;">
                <a href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a>
                <b><?php echo date('Y-m-d',$r[inputtime]);?></b>
                <p><?php echo $r['description'];?></p>
            </div>
        </div>
        <?php $n++;}unset($n); ?>
        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

    </div>

    <!--公益1-->
    <div class="container gy_wm gongyi1" style="display: none;">
        <h3>大学生社会公益事件活动</h3>
        <div class="gongyiTip">
            <span>发布人:admin</span>
            <span>发布时间：2017-05-17</span>
        </div>

        <div class="gongyi1Main">
            <img src="img/gongyibg.png">

            <div class="row keyan-p">
                <h4>
                    （一）大学生社会公益实践的自愿性
                </h4>
                <p>
                    大学生社会公益实践是大学生自愿参与的一种善意的举动，是以大学生的自愿自觉为前提，并不是出于政府或学校的强制。当然，政府部门或高校出于鼓励学生接触社会、了解社会、参与社会以及回馈社会的良好意愿，制定一些政策或采取相关措施来推动大学生进行社会公益实践，只要这些措施和办法是倡导性的而不是强制性的，并且大学生是可以根据自身实际选择参加与否的，就应多从正面的角度予以支持和理解。否则，政府和高校在大学生社会公益实践中就会成为不作为的相关方，资源的配置和公益生态系统也因此变得极不完整。
                </p>

                <h4>
                    （二）大学生社会公益实践的社会性
                </h4>
                <p>
                    大学生社会公益实践是在社会领域践行，其活动平台是在社会，服务对象的指向也应具有社会方面的特征，而不是服务经济部门或私人部门。参与社会公益实践的大学生应该走出校园，在了解社会民情及环境特征的基础上参与服务活动。大学生社会公益实践的社会性，也意味着大学生公益实践将产生一定的社会影响，在一定程度上将改善社会某方面状况，或促成社会的发展进步。
                </p>

                <h4>
                    （三）大学生社会公益实践的利他性
                </h4>
                <p>
                    大学生社会公益实践具有利他性，不以私利为目的，以更多人的公共好处为目标，从社会公益实践项目的设计初始便应确立“公益”这个核心价值。青年大学生群体普遍具有热心公益、胸怀理想、有所作为的心理特点，青春、理想、激情与公益的结合，将激发出大学生服务社会、奉献社会的强大动力，使得青年大学生成为推动社会福利发展的重要力量。
                </p>

                <h4>
                    （四）大学生社会公益实践的学习性
                </h4>
                <p>
                    大学生社会公益实践是大学生参与社会实践活动的一种方式。在这里，“实践”指的是学习实践，是把理论和专业知识在现实中加以应用，把理论与实践结合起来，从而促进学生学习，也就是通过“做”来进行的“学习”。所以，在推动大学生参与社会公益实践活动时，应强调其“在做中学”的意涵，让大学生把社会公益实践活动和专业学习有机结合起来。大学生是在高等学校接受教育的人，他们的主要任务是学习。在推动大学生参与社会公益实践时，要从理论与实践相结合的高度让学生参与社会、服务他人并最终提升能力，提高学生的综合素质。因而，大学生社会公益实践无论具有多么重大的意义，但其最基本的还应回归教育的本质，促成学生的德、智、体、美全面发展。
                </p>

            </div>
        </div>
    </div>
    <script>
        $(function() {
            $('.gongyi a').on('click', function() {
                $('.gy_wm').hide();
                $('.gongyi1').show();
            })
        })
    </script>


<?php include template("","footer"); ?>
