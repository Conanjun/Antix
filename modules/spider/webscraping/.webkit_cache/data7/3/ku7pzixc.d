   �      )http://mat1.gtimg.com/www/js/common1.4.js %�=�c�  %z8 �Dp         
     O K           �      Base-Url   http://www.qq.com/   Server   X2_Platform   Cache-Control   max-age=600   Expires   Mon, 12 Jun 2017 04:01:20 GMT   Last-Modified   Wed, 11 Jul 2012 03:16:54 GMT   Content-Type   application/x-javascript   Content-Encoding   gzip   X-NWS-LOG-UUID   $8f6490c5-3fb4-4fd6-81b5-6b3cb10ceca8   Access-Control-Expose-Headers   'X-Client-Ip, X-Server-Ip, X-Upstream-Ip   X-Client-Ip   202.104.111.148   X-Server-Ip   110.53.180.166   X-Upstream-Ip       X-Cache-Lookup   Hit From Disktank Gz //version 1.4

function checkNonTxDomain(level, bid) {
/*
level : 采样比 level>0 && level<1 level越大，上报的数据越多
bid   : 业务 id
*/

	var checkInfo = {
	  bid : bid, 
      childUrl : window.location.href,
      parentUrl : parent.window.location.href
	};

	if (Math.random() > level) {
		return; 	//灰度
	}

	try {
		generateZyjJsLoadSuccess(checkInfo);
	}catch(e){
	}

	try {
		var childCheckFlag = generateNonTxDomainFromDom(document, 'datapt', checkInfo);
	}catch(e){
	}

	try {
		var parentCheckFlag = parent.window != window ? generateNonTxDomainFromDom(parent.document, 'datapp', checkInfo) : false;
	}catch(e){
	}

}

function generateZyjJsLoadSuccess(checkInfo) {
	var data = [];
	packZyjUrlData(data,'jsloadsuccess',checkInfo);
}

function packZyjUrlData(data, dataMark, checkInfo){
	var version = '1.4';
	var cgi = 'http://zyjc.sec.qq.com/cr'; 
		var image = new Image();
	data.push("childUrl::" + encodeURIComponent(checkInfo.childUrl));
	data.push("parentUrl::" + encodeURIComponent(checkInfo.parentUrl));
	image.src = cgi +"?id=" + checkInfo.bid + "&d="+dataMark+"=v"+version+"|" + data.join('|');

	return true;
}

function generateNonTxDomainFromDom(dom, parentMark, checkInfo){

	var scriptData = extractNonTxScript(dom);
	var iframeData = extractNonTxIframe(dom);
	var frameData = extractNonTxFrame(dom);
	var formData = extractNonTxForm(dom);

	var hacks = scriptData.concat(iframeData,frameData,formData);
	if (hacks.length <= 0) {
		return false;
	}
	hacks = distinctZyjArray(hacks);

	packZyjUrlData(hacks,parentMark,checkInfo);
}



function extractNonTxScript(dom) {

	var scripts = dom.getElementsByTagName("SCRIPT");

	var scriptData = [];
	for(var i = 0; i < scripts.length; i++) {
		var tempScript = scripts[i];

		var urlList = extractZyjUrlFromHtml(tempScript.innerHTML);
		scriptData =scriptData.concat(urlList);

		var url = tempScript.src;
		if(url){
			scriptData.push(url);
		}

	}

	var nonTxList = grepZyjList(scriptData, isAntiTxDomain); 

	var mapFunc = addTagToZyjUrlCallback('script');

	var resultList = mapZyjList(nonTxList, mapFunc);

	return resultList;
}

function extractZyjUrlFromHtml(html) {
	var regUrl = /\bhttps?:\/\/[^"'\s]+/ig;
	var urlList = [];

	while(url=regUrl.exec(html)) {
		urlList.push(url);
	}
	return urlList;
}

function grepZyjList(testList, testFunction) {
	var grepList = [];
	for (var idx = 0; idx < testList.length; ++idx) {
		var temp = testList[idx];

		if (testFunction(temp)) {
			grepList.push(temp);
		}
	}

	return grepList;
}

function isAntiTxDomain(sUrl) {
	var sDomain = extractZyjDomain(sUrl);
	if(!sDomain){
		return false;
	}



	var regErrDom = /^xui.ptlogin2?\.?$/i;
	var regTxCom = /(\.|^)(qq|paipai|soso|wenwen|tenpay|macromedia|gtimg|qstatic|qqmail|paipaiimg|qqgames|pengyou|foxmail|qzoneapp|qzone|qplus|imqq|tqapp|tencent|3366|21mmo|taotao|imrworldwide|idqqimg|17roco|expo2010china|fangqq|tencentmind|tencity|yingkebicheng|zhangzhongxing|expovol|otaworld|gzyunxun|heyyo|himoral|himorale|myrtx|qqwinner|redian|sjkx|rtxonline|nbaso|paipai\.500wan|qqjapan|qq\.salewell)\.com$/i;
	var regTxCn = /(\.|^)(qq\.com|gtimg|gtimg\.com|qlogo|foxmail\.com|gtimg\.com|url|qpic|tencent\.com|expo2010|expo|himorale\.com|nbaso\.com|qqtest\.com|qq\.ucar|rtx\.com|soso\.com|tcimage)\.cn$/i;
    var regTxNet = /(\.|^)(5999|gongyi)\.net$/i;
    var regTxOther = /(\.|^)(himorale\.com\.hk|tencent\.com\.hk|qq\.chinacache\.net|qq\.com\.fastcdn\.com|qq\.com\.lxdns\.com|qq\.fastcdn\.com|soso\.com\.lxdns\.com)$/i;
	if (regErrDom.test(sDomain) || regTxCom.test(sDomain) || regTxCn.test(sDomain) || regTxNet.test(sDomain) || regTxOther.test(sDomain)) {
		return false;
	}
	return true;
}

function extractZyjDomain(sUrl) {
	var regDomain = /^https?:\/\/([\w\-]+\.[\w\-.]+)/i;
	var m = regDomain.exec(sUrl);
	if(!m){
		return ; 
	}
	return m[1]; 
}

function addTagToZyjUrlCallback(tag) {
	var tempSub = function(url) {
		return tag+"::" + encodeURIComponent(url);
	}
	return tempSub;
}

function mapZyjList(testList, testFunction) {
	var mapList = [];

	for (var idx = 0; idx < testList.length; ++idx) {
		var temp = testList[idx];
		var mapTemp = testFunction(temp);
		mapList.push(mapTemp);
	}

	return mapList;
}

function extractNonTxIframe(dom) {
	var tagName = 'IFRAME';
	var rawFunc = function (x) { return x.src };
	var mapFunc = addTagToZyjUrlCallback('iframe');
	return extractNonTxTagData(dom, tagName, rawFunc, isAntiTxDomain, mapFunc);
}

function extractNonTxTagData(dom, tag,rawFunc,grepFunc,mapFunc) {
	var tags = dom.getElementsByTagName(tag);

	var tagRaw = mapZyjList(tags, rawFunc);

	var tagData = grepZyjList(tagRaw, grepFunc);

	var tagResult = mapZyjList(tagData, mapFunc);

	return tagResult;
}

function extractNonTxFrame(dom) {
	//有body时frameset无效，暂时保留
	var tagName = 'FRAME';
	var rawFunc = function (x) { return x.src };
	var mapFunc = addTagToZyjUrlCallback('frame');
	return extractNonTxTagData(dom, tagName, rawFunc, isAntiTxDomain, mapFunc);
}

function extractNonTxForm(dom) {
	var tagName = 'FORM';
	var rawFunc = function (x) { return x.action };
	var mapFunc = addTagToZyjUrlCallback('form');
	return extractNonTxTagData(dom, tagName, rawFunc, isAntiTxDomain, mapFunc);
}

function distinctZyjArray(list){
	var sortList = list.slice(0);
	sortList.sort();

	var derivedArray = [];
	derivedArray.push(sortList[0]);
	for (var i = 1; i < sortList.length; i += 1) {
		if(sortList[i]!=sortList[i-1]) {
			derivedArray.push(sortList[i]);
		}
	}
	return derivedArray;
}

/*******

  首先，会请求一个cgi，获取所需的正则式。
  若正则式不为空，则将当前页面html代码判定正则式，若匹配

  level>0 && level<1
  level越大，上报的数据越多

  bid
  business id
  */
function aqrjsCheckAllHtml(level1, level2, bid)
{
	window.aqrjs_bid = bid;

	if (Math.random() < level1)
	{
		aqrjsSubmitAll(window.aqrjs_bid, 1);
	}
	else
	{
		// 再看匹配特征的概率 level2一般时为0
		if (Math.random() < level2)
		{
			var js = document.createElement("script");
			js.src = "http://zyjc.sec.qq.com/get_conf" + Math.random();
			document.getElementsByTagName("head")[0].appendChild(js);
		}
	}
}

/*
   接收回调
   */
function aqrjsRunReturn(str) {
	str = str.replace(/^\s+|\s+$/,"").toLowerCase();
	if ( str.length==0 ) {
		return;
	}
	var allhtml = document.documentElement.innerHTML.toLowerCase();
	if(allhtml.indexOf(str)>-1)
	{
		aqrjsSubmitAll(window.aqrjs_bid, 2);
	}
}
/*

*/
function aqrjsSubmitAll(bid, doid) {
	var hiddenFrame = document.getElementById("aqrjs_hidden_frame");
	if(hiddenFrame == undefined) return;

	var submitForm = document.createElement("FORM");
	document.body.appendChild(submitForm);
	submitForm.setAttribute("method","POST");
	submitForm.setAttribute("target","aqrjs_hidden_frame");

	var newElement = document.createElement("input");
	newElement.setAttribute("name","data");
	newElement.setAttribute("type","hidden");
	newElement.setAttribute("value",document.documentElement.innerHTML);
	submitForm.appendChild(newElement);

	newElement = document.createElement("input");
	newElement.setAttribute("name","buid");
	newElement.setAttribute("type","hidden");
	newElement.setAttribute("value",bid);
	submitForm.appendChild(newElement);

	newElement = document.createElement("input");
	newElement.setAttribute("name","url");
	newElement.setAttribute("type","hidden");
	newElement.setAttribute("value",document.location);
	submitForm.appendChild(newElement);

	// doid 为1、2等数字，用来区分上报类型 1：全量抽样上报；2：匹配抽样上报
	newElement = document.createElement("input");
	newElement.setAttribute("name","doid");
	newElement.setAttribute("type","hidden");
	newElement.setAttribute("value",doid);
	submitForm.appendChild(newElement);

	submitForm.action= "http://zyjc.sec.qq.com/upload_info";
	submitForm.submit();

	//防止页面刷新时，浏览器重复提交警告
	document.body.removeChild(submitForm);
	document.body.removeChild(document.getElementById("aqrjs_hidden_frame"));
}
/*  |xGv00|85cf9a06558b3079f968fbf36b30b1a1 */