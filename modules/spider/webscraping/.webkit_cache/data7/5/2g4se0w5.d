   �      http://www.10086.cn/gd/ %�> ax�  %�;~�8         
     O K           �   
   Base-Url   http://gd.10086.cn/   Server   Apache   Last-Modified   Sat, 10 Jun 2017 16:17:23 GMT   Accept-Ranges   bytes   Cache-Control   max-age=43200   Expires   Mon, 12 Jun 2017 17:47:17 GMT   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/html   Via   !1.1 ID-0002262070251166 uproxy-12 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="text/javascript">


function findCmCityid(){
    var cookies =  document.cookie.split("; ");
    var CmLocation = null;
    for ( var i = 0; i < cookies.length; i++) {
        var arr = cookies[i].split("=");
        if ("CmLocation" == arr[0]) {
            CmLocation = arr[1];
            break;
        }
    }
    return CmLocation;
}

function getCityId() {
	var cityId = null;
	for(var i=0;i<prov_code.length;i++){
		var re = urlProv.indexOf("/" + prov_code[i].abbr+"/");
		if (re != -1) {
			cityId = prov_code[i].code;
			break;
		}
	}
	return cityId;
}

// 获得引流cookie
function findCmChannelID() {
    var cookies =  document.cookie.split("; ");
    var cmChannelID = null;
    for (var i = 0; i < cookies.length; i++) {
        var arr = cookies[i].split("=");
        if ("CmChannelID" == arr[0]) {
            cmChannelID = arr[1];
            break;
        }
    }
    return cmChannelID;
}

// 判断是否是首页
function isHomePage(pathname) {
	var rv = false;
	
	for(var i=0;i<prov_code.length;i++){
		var re = pathname.indexOf("/" + prov_code[i].abbr+"/");
		if (re == 0) {
			rv = true;
			break;
		}
	}
	
	return rv;
}

var prov_code = [
	{"code":100,"name":"北京","abbr":"bj"},
	{"code":551,"name":"安徽","abbr":"ah"},
	{"code":230,"name":"重庆","abbr":"cq"},
	{"code":591,"name":"福建","abbr":"fj"},
	{"code":200,"name":"广东","abbr":"gd"},
	{"code":771,"name":"广西","abbr":"gx"},
	{"code":931,"name":"甘肃","abbr":"gs"},
	{"code":851,"name":"贵州","abbr":"gz"},
	{"code":311,"name":"河北","abbr":"he"},
	{"code":371,"name":"河南","abbr":"ha"},
	{"code":898,"name":"海南","abbr":"hi"},
	{"code":270,"name":"湖北","abbr":"hb"},
	{"code":731,"name":"湖南","abbr":"hn"},
	{"code":451,"name":"黑龙江","abbr":"hl"},
	{"code":431,"name":"吉林","abbr":"jl"},
	{"code":250,"name":"江苏","abbr":"js"},
	{"code":791,"name":"江西","abbr":"jx"},
	{"code":240,"name":"辽宁","abbr":"ln"},
	{"code":471,"name":"内蒙古","abbr":"nm"},
	{"code":951,"name":"宁夏","abbr":"nx"},
	{"code":971,"name":"青海","abbr":"qh"},
	{"code":210,"name":"上海","abbr":"sh"},
	{"code":280,"name":"四川","abbr":"sc"},
	{"code":531,"name":"山东","abbr":"sd"},
	{"code":351,"name":"山西","abbr":"sx"},
	{"code":290,"name":"陕西","abbr":"sn"},
	{"code":220,"name":"天津","abbr":"tj"},
	{"code":991,"name":"新疆","abbr":"xj"},
	{"code":891,"name":"西藏","abbr":"xz"},
	{"code":871,"name":"云南","abbr":"yn"},
	{"code":571,"name":"浙江","abbr":"zj"}
	],
	indexCmLocation = "",
	aInfo ="",
	CmProvNum = "",
	CmCityid = "",
	urlProv = window.location.href,
	startIndex = 0,
	endIndex = 0;
	
	indexCmLocation = findCmCityid();
	
	if (indexCmLocation == null) {
		CmCityid = CmProvNum = getCityId();
	}
	else {
		aInfo = indexCmLocation.split("|");
		CmProvNum = aInfo[0];
		CmCityid = aInfo[1];
		
		var tmpCmCityid = getCityId();
		
		if (CmProvNum != tmpCmCityid) {
			CmCityid = CmProvNum = tmpCmCityid;
		}
	}
	
	var gourl = null;
	gourl = "./index_" + CmProvNum + "_" + CmCityid + ".html";
	
	
	// 引流判断代码
	/*
	// 判断是否是首页
	if (isHomePage(window.location.pathname)) {
		
		var cmChannelID = findCmChannelID(); // 获得引流cookie
		if ("pc" == cmChannelID) { // pc：用户切换到电脑版
			;
		}
		else if ("pad" == cmChannelID) { // pad：用户切换到pad版（此字段预留）
			;
		}
		else if ("wap" == cmChannelID) { // wap：用户切换到标准版
			gourl = "http://wap.10086.cn/";
		}
		else if ("h5" == cmChannelID) { // h5：用户切换到触屏版
			gourl = "http://touch.10086.cn/";
		}
		else {
			// 不能通过cookie判定分流目的地址时,如果用户终端类型为手机，则分流到http://touch.10086.cn/
			var ua = navigator.userAgent;
			if (typeof(ua) != "undefined") {
				if (0 <= ua.indexOf("Mobile")) {
					gourl = "http://touch.10086.cn/";
				}
			}
		}
	}
	*/

	var args = window.location.search; // 搜索字符串
	var target = window.location.hash; // 锚点
	window.location.href = gourl + args + target;

</script>
</head>

<body>

</body>

</html>
