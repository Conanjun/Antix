   è      http://ygfw.hnust.edu.cn/    ÿÿÿÿÿ    ÿÿÿÿÿ         
     O K           È      Base-Url   http://www.hnust.cn/#   Server   Apache-Coyote/1.1   
Set-Cookie   clientlanguage=zh_CN; Path=/   Content-Type   text/html;charset=UTF-8   Content-Language   zh-CN <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />

	<title>é¦é¡µ - æ¹åç§æå¤§å­¦æè²é³åæå¡å¤§å</title>
<link href="/r/cms/www/default/css/index.css" rel="stylesheet" type="text/css" />
<link href="/r/cms/www/default/css/index_ch.css" rel="stylesheet" type="text/css" />
<link href="/r/cms/www/default/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/r/cms/www/default/js/jquery.min.js"></script>
<script type="text/javascript" src="/r/cms/www/default/js/common.js"></script>
<script src="/r/cms/front.js" type="text/javascript"></script>

<script type="text/javascript">
	 //è®¾ä¸ºé¦é¡µ
   function SetHome(url){
       if (document.all) {
          document.body.style.behavior='url(#default#homepage)';
             document.body.setHomePage(url);
       }else{
           alert("æ¨çæµè§å¨ä¸æ¯æèªå¨è®¾ç½®é¡µé¢ä¸ºé¦é¡µåè½ï¼è¯·æ¨æå¨å¨æµè§å¨éè®¾ç½®è¯¥é¡µé¢ä¸ºé¦é¡µï¼");
       }
   }
	function AddFavorite(sURL, sTitle) {
        sURL =encodeURI(sURL); 
    try{   
       window.external.addFavorite(sURL, sTitle);   
    }catch(e) {   
       try{   
           window.sidebar.addPanel(sTitle, sURL, "");   
        }catch (e){   
           alert("æ¨çæµè§å¨ä¸æ¯æèªå¨å å¥æ¶èåè½ï¼è¯·ä½¿ç¨Ctrl+Dè¿è¡æ·»å ï¼ææå¨å¨æµè§å¨éè¿è¡è®¾ç½®ï¼");
       }   
    }
}
</script>
<script type="text/javascript">
        var lastScrollY = 0;
    function heartBeat() {
        var diffY;
        if (document.documentElement && document.documentElement.scrollTop)
            diffY = document.documentElement.scrollTop;
        else if (document.body)
            diffY = document.body.scrollTop
        else {
        }
        percent = .1 * (diffY - lastScrollY);
        if (percent > 0)percent = Math.ceil(percent);
        else percent = Math.floor(percent);
        document.getElementById("leftDiv").style.top = parseInt(document.getElementById("leftDiv").style.top) + percent + "px";
        document.getElementById("rightDiv").style.top = parseInt(document.getElementById("rightDiv").style.top) + percent + "px";
        lastScrollY = lastScrollY + percent;
    }
    window.setInterval("heartBeat()", 1);
    function close_left1() {
        left1.style.visibility = 'hidden';
    }
    function close_left2() {
        left2.style.visibility = 'hidden';
    }
    function close_right1() {
        right1.style.visibility = 'hidden';
    }
    function close_right2() {
        right2.style.visibility = 'hidden';
    }
    //æ¾ç¤ºæ ·å¼
    document.writeln("<style type=\"text\/css\">");
    document.writeln("#leftDiv,#rightDiv{width:120px;height:135px;position:absolute;}");
    document.writeln(".itemFloat{width:120px;height:auto;line-height:5px}");
    document.writeln("<\/style>");
    document.writeln("<div id=\"leftDiv\" style=\"top:40px;left:5px\">");
    document.writeln("<\/div>");
    document.writeln("<div id=\"rightDiv\" style=\"top:40px;right:5px\">");
    document.writeln("<div id=\"right2\" class=\"itemFloat\">");
    document.writeln("<a style=\"line-height:24px;float:right;\" href=\"javascript:close_right2();\" title=\"å³é­\"><br>å³é­<\/a>");
    document.writeln("<a target=_blank href=#><img border=0 src=\"/u/cms/www/201511/10143958b6c0.jpg\"></a>");
    document.writeln("<\/div>");
    document.writeln("<\/div>");
</script></head>

<body>
<div class="page">
<div class="banner"></div>
<div class="menu">
	<ul>
				<li><a class="over" href="/">ç½ç«é¦é¡µ</a></li>
		<li><a href="/bszn/index.jhtml" >åäºæå</a></li>
		<li><a href="/zczx.jspx" >æ¿ç­å¨è¯¢</a></li>
		<li><a href="http://xxgk.hnust.edu.cn"  target="_blank">ä¿¡æ¯å¬å¼</a></li>
		<li><a href="/tssl.jspx" >æè¯åç</a></li>
		<li><a href="/yqhy.jspx" >èæåæ </a></li>
		<li><a href="http://szyx.hnust.edu.cn/oa/letterAction.do?step=studentAction"  target="_blank">æ ¡é¿ä¿¡ç®±</a></li>
		<li><a href="/lxwm.jhtml" >èç³»æä»¬</a></li>
		<li><a href="http://www.hnust.cn" target="_blank">å­¦æ ¡é¦é¡µ</a></li>
	</ul>
</div>	<div class="f1 container">
		<div class="news fl">
			<p><img src="/u/cms/www/201511/10114918ues9.gif" width="327" height="66" /></p>
			<div class="fl" style="padding-top:7px;padding-left:1px;">
				<script type=text/javascript>
					<!--
					var focus_width=228;
					var focus_height=172;
					var text_height=0;
					var swf_height = focus_height+text_height;
					var pics="";
					var links="";
					var texts='';
					pics+="/u/cms/www/201605/250837142vfa.jpg";
					links+="/ygfwyw/1502.jhtml";
					texts+="çæè²åå¯å·¡è§åæ´ä¸é¦ä¸è¡æ¥æ ¡å¼å±æè²é³åæå¡å¹³å°å»ºè®¾ç£æ¥è°ç æ´»å¨";
					pics+="|";
					links+="|";
					texts+="|";
					pics+="/u/cms/www/201603/25144042obu1.jpg";
					links+="/ygfwyw/1422.jhtml";
					texts+="å­¦æ ¡é¨ç½²2016å¹´å­¦çå·¥ä½";
					pics+="|";
					links+="|";
					texts+="|";
					pics+="/u/cms/www/201603/25143007aab5.jpg";
					links+="/ygfwyw/1421.jhtml";
					texts+="å­¦æ ¡å¨é¢é¨ç½²2016å¹´å·¥ä½";
					pics+="|";
					links+="|";
					texts+="|";
					pics+="/u/cms/www/201512/221625506y4m.jpg";
					links+="/ygfwyw/1343.jhtml";
					texts+="âå¿ä¸­æè¯å¯¹åè¯´âéå¹´å­¦çä»£è¡¨åº§è°ä¼ä¸¾è¡";


					document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
					document.write('<param name="movie" value="/r/cms/www/default/images/focus.swf"> <param name="quality" value="high"><param name="bgcolor" value="#CCCCCC">');
					document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
					document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
					document.write('<embed src="/r/cms/www/default/images/focus.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#ffffff" quality="high" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');document.write('</object>');

					//-->
				</script>
			</div>
			<div class="lb fr" style="width:225px;" >
				<ul>
					<li><a href="/ygfwyw/1864.jhtml" title="ææ ¡ä¸¾åâæºæ§è´¢å¡ï¼ä¸ªäººæ¶å¥âç®¡çç³»ç»å¹è®­è®²åº§" target="_blank">ææ ¡ä¸¾åâæºæ§è´¢å¡ï¼ä¸ªäººæ¶å¥â...</a></li>
					<li><a href="/ygfwyw/1863.jhtml" title="å¥³å¤§å­¦çå¥åº·ç¥è¯è®²åº§ä¸¾è¡" target="_blank">å¥³å¤§å­¦çå¥åº·ç¥è¯è®²åº§ä¸¾è¡</a></li>
					<li><a href="/ygfwyw/1741.jhtml" title="å¯å¬éæ¸©æ æ£è¡£æäººå¿" target="_blank">å¯å¬éæ¸©æ æ£è¡£æäººå¿</a></li>
					<li><a href="/ygfwyw/1701.jhtml" title="å­¦æ ¡æè²é³åæå¡ä¸­å¿ç»ç»å¼å±âç®æ¿æ¾æï¼ææ¥@å½å¡é¢âçº¿ä¸æ¨å¹¿æ´»å¨" target="_blank">å­¦æ ¡æè²é³åæå¡ä¸­å¿ç»ç»å¼å±â...</a></li>
					<li><a href="/ygfwyw/1641.jhtml" title="ä¸åçâå¢åâåæ ·çæ¸©æ" target="_blank">ä¸åçâå¢åâåæ ·çæ¸©æ</a></li>
					<li class="more"><a href="/ygfwyw/index.jhtml">more></a></li>
				</ul>
			</div>
		</div>
		<div class="ggao fl">
			<p><img src="/u/cms/www/201511/10115457b1yu.gif" width="250" height="66" /></p>
			<div class="lb">
				<ul>
					<li><a href="/tzgg/1921.jhtml" title="2017å¹´6æ1æ¥æ ¡é¢å¯¼æ¥å¾æ¥å®æ" target="_blank">2017å¹´6æ1æ¥æ ¡é¢å¯¼æ¥å¾æ¥å®æ</a></li>
					<li><a href="/tzgg/1901.jhtml" title="å³äº2017å¹´ç«¯åèæ¾åçéç¥" target="_blank">å³äº2017å¹´ç«¯åèæ¾åçéç¥</a></li>
					<li><a href="/tzgg/1882.jhtml" title="2017å¹´5æ4æ¥æ ¡é¢å¯¼æ¥å¾æ¥å®æ" target="_blank">2017å¹´5æ4æ¥æ ¡é¢å¯¼æ¥å¾æ¥å®æ</a></li>
					<li><a href="/tzgg/1881.jhtml" title="å³äº2017å¹´âäºä¸âæ¾ååä½æ¯æ¶é´è°æ´çéç¥" target="_blank">å³äº2017å¹´âäºä¸âæ¾ååä½æ¯æ¶é´...</a></li>
					<li><a href="/tzgg/1861.jhtml" title="å³äºç§å¤§å¾®é¨æ·å¹³å°âæ±½è½¦å¥æ ¡ç³è¯·âåºç¨ä¸çº¿è¯è¿è¡çéç¥" target="_blank">å³äºç§å¤§å¾®é¨æ·å¹³å°âæ±½è½¦å¥æ ¡ç³è¯·...</a></li>
					<li class="more"><a href="/tzgg/index.jhtml">more></a></li>
				</ul>
			</div>
		</div>
		<div class="problem fr">
			<p><img src="/u/cms/www/201511/10115610we7k.gif" width="250" height="66" /></p>
			<div class="lb">
				<ul>
					<li><a href="/cjwt/1848.jhtml" title="å­¦çå®¿èæ ¡å­ç½å¸¸è§æéåè§£å³åæ³" target="_blank">å­¦çå®¿èæ ¡å­ç½å¸¸è§æéåè§£å³åæ³</a></li>
					<li><a href="/cjwt/1363.jhtml" title="å³äºå­¦çæ¥å¸¸ç»´ä¿®æ¥ä¿®æ¹å¼çè¯´æ" target="_blank">å³äºå­¦çæ¥å¸¸ç»´ä¿®æ¥ä¿®æ¹å¼çè¯´æ</a></li>
					<li><a href="/cjwt/1844.jhtml" title="æ ¡å­ç½è·¯ç±å¨ä½¿ç¨æå" target="_blank">æ ¡å­ç½è·¯ç±å¨ä½¿ç¨æå</a></li>
					<li><a href="/cjwt/1843.jhtml" title="æ ¡å­ç½è·¯ç±å¨åç¨è¯´æ" target="_blank">æ ¡å­ç½è·¯ç±å¨åç¨è¯´æ</a></li>
					<li><a href="/cjwt/1505.jhtml" title="å¦ä½ç³è¯·å­¦æ ¡ççµå­é®ç®±?" target="_blank">å¦ä½ç³è¯·å­¦æ ¡ççµå­é®ç®±?</a></li>
					<li class="more"><a href="/cjwt/index.jhtml">more></a></li>
				</ul>
			</div>
		</div>



	</div>

	<div class="f2 container">
		<div class="service">
			<p><img src="/r/cms/www/default/image/service.png" width="337" height="66" /><br /></p>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td colspan="2" valign="top">
						<table width="100%" border="0" align="right" cellpadding="0" cellspacing="2">
							<tr>
								<td align="right" style="line-height:30px;height:30px;">å³é®å­ï¼<input name="keywords" type="text" id="keywords" size="15"/>
									æ¥è¯¢ç ï¼<input name="cxm" type="text" id="cxm" size="15"/>
									<img src="/r/cms/www/default/image/tubiao7.gif" width="32" height="32" align="absmiddle"
										 title="æ¥è¯¢" style="cursor: pointer;" onclick="queryYgfw()"/>
									<a href="/ygfw/more.jspx" class="font12">more></a>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td width="212" valign="top">
						<div class="leftbg">
							<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="padding-top: 10px;">
								<tr>
									<td width="42%" height="50" align="center"><img src="/r/cms/www/default/image/tubiao3.gif" width="34"
																					height="32"/></td>
									<td width="58%" height="50"><a href="/tssl.jspx">æè¦æè¯</a></td>
								</tr>
								<tr>
									<td height="50" align="center"><img src="/r/cms/www/default/image/tubiao1.gif" width="34" height="32"/>
									</td>
									<td height="50"><a href="/zczx.jspx">æè¦å¨è¯¢</a></td>
								</tr>
								<tr>
									<td height="50" align="center"><img src="/r/cms/www/default/image/tubiao5.gif" width="34" height="32"/>
									</td>
									<td height="50"><a href="/yqhy.jspx">èæåæ </a></td>
								</tr>
								<tr>
									<td height="50" align="center"><img src="/r/cms/www/default/image/tubiao2.gif" width="34" height="32"/>
									</td>
									<td height="50"><a href="/biaoyang.jspx">æè¦è¡¨æ¬</a></td>
								</tr>
								<tr>
									<td height="50" align="center"><img src="/r/cms/www/default/image/tubiao4.gif" width="34" height="32"/>
									</td>
									<td height="50"><a href="/jianyi.jspx">æè¦å»ºè®®</a></td>
								</tr>
								<tr>
									<td height="50" align="center"><img src="/r/cms/www/default/image/tubiao6.gif" width="34" height="32"/>
									</td>
									<td height="50"><a href="/qzbf.jspx">å¯»æ±å¸®å©</a></td>
								</tr>
							</table>
							<table width="180" border="0" align="center" cellpadding="0" cellspacing="0"
								   style="margin:8px 0px 8px 25px;">
								<tr>
									<td height="35">æ»æ¶ä»¶ï¼<span class="red"><strong>991</strong></span>ä»¶</td>
								</tr>
								<tr>
									<td height="35">å·²å¤çï¼<span class="red"><strong>972</strong></span> ä»¶</td>
								</tr>
								<tr>
									<td height="35">å¤çä¸­ï¼<span class="red"><strong>15</strong></span> ä»¶</td>
								</tr>
<tr>
									<td height="35">æªåçï¼<span class="red"><strong>4</strong></span> ä»¶</td>
								</tr>
							</table>
						</div>
					</td>
					<td valign="top">
						<table width="100%" border="0" cellpadding="0" cellspacing="0" class="table">
							<tr>
								<th width="6%" align="center"> åºå·</th>
								<th width="30%" align="center">ä¸»é¢</th>
								<th width="12%" align="center">æäº¤æ¥æ</th>
								<th width="10%" align="center">ç±»å«</th>
								<th width="12%" align="center">åçé¨é¨</th>
								<th width="10%" align="center">å¤çç¶æ</th>
								<th width="10%" align="center">äº®ç¯æåµ</th>
							</tr>
							<tbody id="ygfwList">
							<tr>
								<td align="center">988</td>
								<td align="left"><a href="/ygfw/detail.jspx?id=ff8080815c3da2da015c7b977abb0581" title="å¾®ä¿¡ä¸å¡éåå¼ä»æ¨å¤©å¼å§å°±åºæéäº">å¾®ä¿¡ä¸å¡éåå¼ä»æ¨å¤©å¼å§å°±åºæéäº</a></td>
								<td align="center">2017-06-06</td>
								<td align="center">æè¯åç</td>
								<td align="center" title="è´¢å¡å¤">è´¢å¡å¤</td>
								<td align="center">å·²åç»</td>
								<td align="center"><img src="/r/cms/www/default/images/lamp_green.png"/></td>
							</tr>
							<tr>
								<td align="center">987</td>
								<td align="left"><a href="/ygfw/detail.jspx?id=ff8080815c3da2da015c7b1d976c0555" title="æ ¡å­å¡ä¸¢å¤±åï¼å·²æåæå¤±è¿è½è¢«çå·ï¼è¯·ä½åºåçè§£é">æ ¡å­å¡ä¸¢å¤±åï¼å·²æåæå¤±è¿è½è¢«çå·...</a></td>
								<td align="center">2017-06-06</td>
								<td align="center">æè¯åç</td>
								<td align="center" title="åå¤ç®¡çå¤ï¼åå¤åå§ï¼">åå¤ç®¡çå¤...</td>
								<td align="center">å·²åç</td>
								<td align="center"><img src="/r/cms/www/default/images/lamp_green.png"/></td>
							</tr>
							<tr>
								<td align="center">986</td>
								<td align="left"><a href="/ygfw/detail.jspx?id=ff8080815c3da2da015c7b1c2f88054e" title="æ ¡å­å¡ä¸¢å¤±ï¼æåæå¤±åè¢«çå·">æ ¡å­å¡ä¸¢å¤±ï¼æåæå¤±åè¢«çå·</a></td>
								<td align="center">2017-06-06</td>
								<td align="center">æè¯åç</td>
								<td align="center" title="åå¤ç®¡çå¤ï¼åå¤åå§ï¼">åå¤ç®¡çå¤...</td>
								<td align="center">å·²åç</td>
								<td align="center"><img src="/r/cms/www/default/images/lamp_green.png"/></td>
							</tr>
							<tr>
								<td align="center">984</td>
								<td align="left"><a href="/ygfw/detail.jspx?id=ff8080815c3da2da015c789d3bab051d" title="èªæ¥æ°´æ°´è´¨é®é¢">èªæ¥æ°´æ°´è´¨é®é¢</a></td>
								<td align="center">2017-06-05</td>
								<td align="center">æè¯åç</td>
								<td align="center" title="åå¤ç®¡çå¤ï¼åå¤åå§ï¼">åå¤ç®¡çå¤...</td>
								<td align="center">å·²åç</td>
								<td align="center"><img src="/r/cms/www/default/images/lamp_green.png"/></td>
							</tr>
							<tr>
								<td align="center">981</td>
								<td align="left"><a href="/ygfw/detail.jspx?id=ff8080815c3da2da015c7369ee07035e" title="èªæ¥æ°´æ°´è´¨é®é¢">èªæ¥æ°´æ°´è´¨é®é¢</a></td>
								<td align="center">2017-06-04</td>
								<td align="center">æè¯åç</td>
								<td align="center" title="åå¤ç®¡çå¤ï¼åå¤åå§ï¼">åå¤ç®¡çå¤...</td>
								<td align="center">å·²åç»</td>
								<td align="center"><img src="/r/cms/www/default/images/lamp_green.png"/></td>
							</tr>
							<tr>
								<td align="center">980</td>
								<td align="left"><a href="/ygfw/detail.jspx?id=ff8080815c3da2da015c731c045f0357" title="å®¿èé®é¢">å®¿èé®é¢</a></td>
								<td align="center">2017-06-04</td>
								<td align="center">æè¯åç</td>
								<td align="center" title="å½æèµäº§ç®¡çå¤ï¼éè´­ä¸æææ ç®¡çä¸­å¿ï¼">å½æèµäº§ç®¡...</td>
								<td align="center">å·²åç</td>
								<td align="center"><img src="/r/cms/www/default/images/lamp_green.png"/></td>
							</tr>
							<tr>
								<td align="center">979</td>
								<td align="left"><a href="/ygfw/detail.jspx?id=ff8080815c3da2da015c7317940e0350" title="å®¿èé®é¢">å®¿èé®é¢</a></td>
								<td align="center">2017-06-04</td>
								<td align="center">æè¯åç</td>
								<td align="center" title="åå¤ç®¡çå¤ï¼åå¤åå§ï¼">åå¤ç®¡çå¤...</td>
								<td align="center">å·²åç»</td>
								<td align="center"><img src="/r/cms/www/default/images/lamp_green.png"/></td>
							</tr>
							<tr>
								<td align="center">978</td>
								<td align="left"><a href="/ygfw/detail.jspx?id=ff8080815c3da2da015c7158baea0340" title="æ ¡å­ç½ç¨ä¸äº æ¾ç¤ºè´¦å·æå¯ç éè¯¯ æ¹äºå¯ç ä¹æ²¡ç¨">æ ¡å­ç½ç¨ä¸äº æ¾ç¤ºè´¦å·æå¯ç éè¯¯ æ¹...</a></td>
								<td align="center">2017-06-04</td>
								<td align="center">æè¯åç</td>
								<td align="center" title="ç½ç»ä¿¡æ¯ä¸­å¿">ç½ç»ä¿¡æ¯ä¸­å¿</td>
								<td align="center">å·²åç»</td>
								<td align="center"><img src="/r/cms/www/default/images/lamp_green.png"/></td>
							</tr>
							<tr>
								<td align="center">977</td>
								<td align="left"><a href="/ygfw/detail.jspx?id=ff8080815c3da2da015c7119add20339" title="å³äºæ ¡å­åé£è½¦åçæ§è¯">å³äºæ ¡å­åé£è½¦åçæ§è¯</a></td>
								<td align="center">2017-06-04</td>
								<td align="center">æè¯åç</td>
								<td align="center" title="ä¿å«å¤ï¼æ­¦è£é¨ï¼">ä¿å«å¤ï¼æ­¦...</td>
								<td align="center">å·²åç</td>
								<td align="center"><img src="/r/cms/www/default/images/lamp_green.png"/></td>
							</tr>
							<tr>
								<td align="center">976</td>
								<td align="left"><a href="/ygfw/detail.jspx?id=ff8080815c3da2da015c71084eea0332" title="ä¸åºäºæ çä½å®¿ç¯å¢å¾ä¸å°æ¹å">ä¸åºäºæ çä½å®¿ç¯å¢å¾ä¸å°æ¹å</a></td>
								<td align="center">2017-06-04</td>
								<td align="center">æè¯åç</td>
								<td align="center" title="åå¤ç®¡çå¤ï¼åå¤åå§ï¼">åå¤ç®¡çå¤...</td>
								<td align="center">å·²åç</td>
								<td align="center"><img src="/r/cms/www/default/images/lamp_green.png"/></td>
							</tr>
							<tr>
								<td align="center">975</td>
								<td align="left"><a href="/ygfw/detail.jspx?id=ff8080815c3da2da015c6e3cb635032b" title="ç¾é£å¹¿åºäºæ¥¼é¤åæèåéå¤ªå°">ç¾é£å¹¿åºäºæ¥¼é¤åæèåéå¤ªå°</a></td>
								<td align="center">2017-06-03</td>
								<td align="center">æè¯åç</td>
								<td align="center" title="åå¤ç®¡çå¤ï¼åå¤åå§ï¼">åå¤ç®¡çå¤...</td>
								<td align="center">å·²åç</td>
								<td align="center"><img src="/r/cms/www/default/images/lamp_green.png"/></td>
							</tr>
							<tr>
								<td align="center">974</td>
								<td align="left"><a href="/ygfw/detail.jspx?id=ff8080815c3da2da015c6e3316e80324" title="ä¸åºæ®å®¿æ´æ¼±é´ååæèä¹±å·®æåµ">ä¸åºæ®å®¿æ´æ¼±é´ååæèä¹±å·®æåµ</a></td>
								<td align="center">2017-06-03</td>
								<td align="center">èæåæ </td>
								<td align="center" title="åå¤ç®¡çå¤ï¼åå¤åå§ï¼">åå¤ç®¡çå¤...</td>
								<td align="center">å·²åç»</td>
								<td align="center"><img src="/r/cms/www/default/images/lamp_green.png"/></td>
							</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</div>
<div class="f3 container">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<!--<td><img src="/r/cms/www/default/image/wx.gif" width="91" height="122" /></td>-->
			<td>
				<a href="http://www.hnedu.gov.cn/zwgk.jsp" onclick="$.get('/friendlink_view.jspx?id=122')" target="_blank"><img class="bk" title="æ¹åçæè²å" src="/u/cms/www/201511/10155915e5qx.jpg" /></a>
			</td>
			<td>
				<a href="http://fuwu.hnedu.cn/web/index.jsp" onclick="$.get('/friendlink_view.jspx?id=123')" target="_blank"><img class="bk" title="æ¹åçæè²é³åæå¡å¤§å" src="/u/cms/www/201511/10160100r73d.jpg" /></a>
			</td>
			<td>
				<a href="http://xtjyyg.jy.xiangtan.gov.cn/" onclick="$.get('/friendlink_view.jspx?id=141')" target="_blank"><img class="bk" title="æ¹æ½­å¸æè²é³åæå¡å¤§å" src="/u/cms/www/201511/1016021750p6.jpg" /></a>
			</td>
			<td>
				<a href="http://www.hnust.cn/" onclick="$.get('/friendlink_view.jspx?id=124')" target="_blank"><img class="bk" title="æ¹åç§æå¤§å­¦" src="/u/cms/www/201511/121749398tpv.jpg" /></a>
			</td>
			<td>
				<a href="http://www.hnedu.gov.cn/zwgk.jsp" onclick="$.get('/friendlink_view.jspx?id=161')" target="_blank"><img class="bk" title="æ¹åæè²æ¿å¡ç½å¾®ä¿¡" src="/u/cms/www/201511/10160850us11.jpg" /></a>
			</td>
		</tr>
	</table>

</div><div class="foot">å°åï¼æ¹åÂ·æ¹æ½­å¸æ¡å­è·¯&nbsp;&nbsp;é®æ¿ç¼ç ï¼411201&nbsp;&nbsp;Copyright&copy;2009-2015&nbsp;&nbsp;All Rights Reserved&nbsp;&nbsp;æ¹åç§æå¤§å­¦ååæ ¡åçæææ&nbsp;&nbsp;<a href="/admin/cms/index.do">ç®¡çåå°</a></div></div>
</body>
</html>
<script type="text/javascript">
	function queryYgfw(){
		var cxm = $("#cxm").val();
		var keywords = $("#keywords").val();
		$.ajax({
			url : "/ygfw/query.jspx",
			data:"count=12&cxm="+cxm+"&keywords="+keywords,
			type:"POST",
			dataType:"json",
			success : function (data) {
				if(data!=null && data.length>0){
					$("#ygfwList").html("");
					for(var i=0; i<data.length; i++){
						var tr = '<tr><td align="center">'+(i+1)+'</td>';
						var bt = data[i].BT;
						if(bt.length>18){
							bt = bt.substring(0,17)+"...";
						}
						tr+='<td align="left"><a href="/ygfw/detail.jspx?id='+data[i].ID+'" title="'+data[i].BT+'">'+bt+'</td>';
						tr+='<td align="center">'+data[i].SCRQ+'</td>';
						tr+='<td align="center">'+data[i].LBMC+'</td>';
						var sldwmc=data[i].SLDWMC;
						if(sldwmc!=null){
							if(sldwmc.length>6){
								sldwmc = sldwmc.substring(0,5)+'...';
							}
						}
						else{
							sldwmc='';
						}
						tr+='<td align="center">'+sldwmc+'</td>';
						var blzt=data[i].BLZT;
						if(blzt==null){
							blzt='';
						}
						tr+='<td align="center">'+blzt+'</td><td align="center">';
						var lamp = data[i].LAMP;
						if(lamp=="green"){
							tr+='<img src="/r/cms/www/default/images/lamp_green.png"/>';
						}
						else if(lamp=="yellow"){
							tr+='<img src="/r/cms/www/default/images/lamp_yellow.png"/>';
						}
						else if(lamp=="red"){
							tr+='<img src="/r/cms/www/default/images/lamp_red.png"/>';
						}
						tr+='</td></tr>';
						$("#ygfwList").append(tr);
					}
				}
			},
			fail : function(res) {
				alert("ç³»ç»éè¯¯");
			}
		});
	}
</script>