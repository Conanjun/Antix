   �      Dhttp://static-alias-1.360buyimg.com/jzt/libs/behavior/v2/behavior.js %�=���  %�#��`         
     O K           �      Base-Url   http://www.qq.com/   Server   JDWS/2.0   Content-Type   application/javascript   Last-Modified   Wed, 17 May 2017 12:35:40 GMT   Vary   Accept-Encoding   Expires   Mon, 12 Jun 2017 03:48:51 GMT   Cache-Control   max-age=3600   access-control-allow-origin   *   Content-Encoding   gzip   Via   7BJ-Y-NX-108(HIT), http/1.1 GZ-UNI-1-JCS-170 ( [cRs f ])   Age   641 !function(a,b){function c(b){var c=b||a.event;try{return{x:parseInt(c.changedTouches[0].clientX),y:parseInt(c.changedTouches[0].clientY),t:(new Date).getTime()}}catch(a){}return c.pageX||c.pageY?{x:parseInt(c.pageX),y:parseInt(c.pageY),t:(new Date).getTime()}:{x:parseInt(c.clientX+x.scrollLeft-x.clientLeft),y:parseInt(c.clientY+x.scrollTop-x.clientTop),t:(new Date).getTime()}}function d(a){var b,c,d,e,f,g;for(d=a.length,c=0,b="";c<d;){if(e=255&a.charCodeAt(c++),c==d){b+=u.charAt(e>>2),b+=u.charAt((3&e)<<4),b+="==";break}if(f=a.charCodeAt(c++),c==d){b+=u.charAt(e>>2),b+=u.charAt((3&e)<<4|(240&f)>>4),b+=u.charAt((15&f)<<2),b+="=";break}g=a.charCodeAt(c++),b+=u.charAt(e>>2),b+=u.charAt((3&e)<<4|(240&f)>>4),b+=u.charAt((15&f)<<2|(192&g)>>6),b+=u.charAt(63&g)}return b}var e=function(a){return a.indexOf("re.m.jd.com")>=0||a.indexOf("re.jd.com")>=0},f=function(a){var b=new Image;b.onload=b.onerror=function(){b=null},b.src=a},g=function(a){var b=s(z,a);"string"==typeof b&&/^([a-zA-Z]+:)?\/\//g.test(b)&&f(b)},h=function(a){for(var b=a.length,c=parseInt(b/12),d="",e=0;e<12;e++)d+=(a.charCodeAt(e*c)%A).toString(16);return d},i=function(a){var b=c(a);v=b.x,w=b.y,D=(new Date).getTime()},j=function(a){C=(new Date).getTime(),n(a)},k=function(a){var b=-1;try{b=decodeURIComponent(a).search(J)}catch(a){}if(b>-1){if(0==b)return s(a,"log");var c=a.slice(b,a.length);return s(c,"log")}return null},l=function(a,b){var c=decodeURIComponent(a).search(J);return function(){var e,f=s(a,"ac");if(f)return a.replace(f,d(b));if(0==c)e=a+"&ac="+d(b);else{var g=m(a);e=a.replace(g,g+encodeURIComponent("&ac=")+d(b))}return e}()},m=function(a){var b=decodeURIComponent(a).search(J);if(0==b)return a;for(var c=a.split("&"),d=0,e=c.length;d<e;d++){var f=c[d],b=f.search(/http.*ccc.*x.*jd.*com/i);if(b>-1)return f.split("=")[1]}return a},n=function(a){var b,d,e,f,i=10,j=G.length<i+1?1:parseInt(G.length/(i+1)),m=[],n=c(a),o=[],p=0,q=[];if(d=r(a)){b=d.getAttribute("href",2);for(var s=0;s<i;s++){var t,u=G[s*j];if(t=0==s?0:u.t-o[s-1],null==u)break;o.push(u.t),m.push([u.x,u.y,t>=9999?9999:t])}if(o.length>0){var v=n.t-o.pop();p=v>=9999?9999:v}else p=0;m.push([n.x,n.y,p]),m.unshift([G.length,C-D,C-E,H,I]),E=null,e=k(b),e&&(encryptString=h(e),q=encryptString+"|"+m.join("|"),f=l(b,q),d.setAttribute("href",f),g("clkmn"))}},o=function(a){E||(E=(new Date).getTime());var b=c(a);G.length>400?(G.splice(1,1),G.push(b)):G.push(b)},p=function(a){D=(new Date).getTime()},q=function(a){C=(new Date).getTime()},r=function(a){var b=a.srcElement?a.srcElement:a.target;if("A"!=b.tagName.toUpperCase()){for(var c=5;c>0;c--){if(!(b=b.parentNode)||!b.tagName)return null;if("A"==b.tagName.toUpperCase())break}if("A"!=b.tagName.toUpperCase())return null}return void 0===b.href?null:"A"==b.tagName.toUpperCase()&&0!==b.getAttribute("href",2).indexOf("http")?null:b},s=function(a,b){var c=new RegExp("(^|&)"+b+"=([^&]*)(&|$)","i"),d=null;try{d=decodeURIComponent(a).substr(1).match(c)}catch(a){}return null!=d?d[2]:null},t=function(a,b){C=(new Date).getTime();var d,e,f,g=10,i=G.length<g+1?1:parseInt(G.length/(g+1)),j=[],m=c(b),n=[],o=0,p=[];if(e=a){d=e;for(var q=0;q<g;q++){var r,s=G[q*i];if(r=0==q?0:s.t-n[q-1],null==s)break;n.push(s.t),j.push([s.x,s.y,r>=9999?9999:r])}if(n.length>0){var t=m.t-n.pop();o=t>=9999?9999:t}else o=0;if(j.push([m.x,m.y,o]),j.unshift([G.length,C-D,C-E,H,I]),E=null,f=k(d))return encryptString=h(f),p=encryptString+"|"+j.join("|"),l(d,p)}},u="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";if(!a.__jdAdClickbind__){a.__jdAdClickbind__=!0;var v,w,x=b.body,y=a.location.host,z=a.location.search,A=e(y)?13:a.stamp||a._Jconf&&_Jconf.stamp||12,B=!(!a.attachEvent||a.opera),C=(location.protocol,(new Date).getTime()),D=(new Date).getTime(),E=null,F="ontouchstart"in a,G=[],H=x.clientWidth||0,I=x.clientHeight||0,J=new RegExp(/(http|https):\/\/(ccc\.x|ccc-x)\.jd\.com/);g("expose"),F?(b.addEventListener("touchstart",i,!1),b.addEventListener("touchend",j,!1),b.addEventListener("touchmove",o,!1)):B?(x.attachEvent("onclick",n),x.attachEvent("onmousemove",o),x.attachEvent("onmouseup",q),x.attachEvent("onmousedown",p)):(x.addEventListener("click",n,!1),x.addEventListener("mousemove",o,!1),x.addEventListener("mouseup",q,!1),x.addEventListener("mousedown",p,!1))}a.__behaivor__={getBehavior:t}}(window,document);
//# sourceMappingURL=index.min.js.map
/*! behaviorV2.1.1  end edit Time:2017-05-17|05:21:19 */