(function(){var p=this,aa=function(a){var b=typeof a;if("object"==b)if(a){if(a instanceof Array)return"array";if(a instanceof Object)return b;var c=Object.prototype.toString.call(a);if("[object Window]"==c)return"object";if("[object Array]"==c||"number"==typeof a.length&&"undefined"!=typeof a.splice&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("splice"))return"array";if("[object Function]"==c||"undefined"!=typeof a.call&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("call"))return"function"}else return"null";
else if("function"==b&&"undefined"==typeof a.call)return"object";return b},ba=function(a,b,c){return a.call.apply(a.bind,arguments)},ca=function(a,b,c){if(!a)throw Error();if(2<arguments.length){var d=Array.prototype.slice.call(arguments,2);return function(){var c=Array.prototype.slice.call(arguments);Array.prototype.unshift.apply(c,d);return a.apply(b,c)}}return function(){return a.apply(b,arguments)}},r=function(a,b,c){r=Function.prototype.bind&&-1!=Function.prototype.bind.toString().indexOf("native code")?
ba:ca;return r.apply(null,arguments)};var v=(new Date).getTime();var da=function(){},y=function(a,b,c){switch(typeof b){case "string":ea(b,c);break;case "number":c.push(isFinite(b)&&!isNaN(b)?b:"null");break;case "boolean":c.push(b);break;case "undefined":c.push("null");break;case "object":if(null==b){c.push("null");break}if(b instanceof Array){var d=b.length;c.push("[");for(var e="",h=0;h<d;h++)c.push(e),y(a,b[h],c),e=",";c.push("]");break}c.push("{");d="";for(e in b)b.hasOwnProperty(e)&&(h=b[e],"function"!=typeof h&&(c.push(d),ea(e,c),c.push(":"),y(a,h,c),d=
","));c.push("}");break;case "function":break;default:throw Error("Unknown type: "+typeof b);}},B={'"':'\\"',"\\":"\\\\","/":"\\/","\b":"\\b","\f":"\\f","\n":"\\n","\r":"\\r","\t":"\\t","\x0B":"\\u000b"},fa=/\uffff/.test("\uffff")?/[\\\"\x00-\x1f\x7f-\uffff]/g:/[\\\"\x00-\x1f\x7f-\xff]/g,ea=function(a,b){b.push('"');b.push(a.replace(fa,function(a){if(a in B)return B[a];var b=a.charCodeAt(0),e="\\u";16>b?e+="000":256>b?e+="00":4096>b&&(e+="0");return B[a]=e+b.toString(16)}));b.push('"')};var ga=/&/g,ha=/</g,ia=/>/g,ja=/"/g,ka=/'/g,la=/\x00/g,C={"\x00":"\\0","\b":"\\b","\f":"\\f","\n":"\\n","\r":"\\r","\t":"\\t","\x0B":"\\x0B",'"':'\\"',"\\":"\\\\"},D={"'":"\\'"},F=function(a,b){return a<b?-1:a>b?1:0};var G=function(a){G[" "](a);return a};G[" "]=function(){};var H=function(a){try{var b;if(b=!!a&&null!=a.location.href)t:{try{G(a.foo);b=!0;break t}catch(c){}b=!1}return b}catch(d){return!1}};var I=document,J=window;var K=function(a,b){for(var c in a)Object.prototype.hasOwnProperty.call(a,c)&&b.call(null,a[c],c,a)},L=function(a){return!!a&&"function"==typeof a&&!!a.call},ma=function(a,b){if(!(2>arguments.length))for(var c=1,d=arguments.length;c<d;++c)a.push(arguments[c])},M=function(a,b){if(!(1E-4>Math.random())){var c=Math.random();if(c<b){try{var d=new Uint16Array(1);window.crypto.getRandomValues(d);c=d[0]/65536}catch(e){c=Math.random()}return a[Math.floor(c*a.length)]}}return null},na=function(a){a.google_unique_id?
++a.google_unique_id:a.google_unique_id=1},N=function(a){a=a.google_unique_id;return"number"==typeof a?a:0},oa=function(a){var b=a.length;if(0==b)return 0;for(var c=305419896,d=0;d<b;d++)c^=(c<<5)+(c>>2)+a.charCodeAt(d)&4294967295;return 0<c?c:4294967296+c},O=function(a,b){return b.getComputedStyle?b.getComputedStyle(a,null):a.currentStyle};var pa={google_analytics_domain_name:!0,google_analytics_uacct:!0},qa=function(a){a.google_page_url&&(a.google_page_url=String(a.google_page_url));var b=[];K(a,function(a,d){if(null!=a){var e;try{var h=[];y(new da,a,h);e=h.join("")}catch(f){}e&&ma(b,d,"=",e,";")}});return b.join("")};var P=function(a){a=parseFloat(a);return isNaN(a)||1<a||0>a?0:a},Q=function(a,b){return/^true$/.test(a)?!0:/^false$/.test(a)?!1:b},ra=/^([\w-]+\.)*([\w-]{2,})(\:[0-9]+)?$/,sa=function(a,b){if(!a)return b;var c=a.match(ra);return c?c[0]:b};var ta=P("0.15"),ua=P("0.0"),va=P("0.001"),wa=P("0.001"),xa=P("0.001"),ya=P("0.001"),za=P("0.2"),Aa=Q("true",!0);var Ba=Q("false",!1);var Ca={rectangle:1,horizontal:2,vertical:4},Da=/^([0-9.]+)px$/,Ea=/^([0-9.]+)$/,Fa=[{width:970,height:90,format:2,i:9},{width:728,height:90,format:2,i:4},{width:468,height:60,format:2,i:7},{width:336,height:280,format:1,i:1},{width:320,height:50,format:2,i:3},{width:300,height:600,format:4,i:2},{width:300,height:250,format:1,i:5},{width:250,height:250,format:1,i:11},{width:234,height:60,format:2,i:8},{width:200,height:200,format:1,i:13},{width:180,height:150,format:1,i:10},{width:160,height:600,
format:4,i:6},{width:125,height:125,format:1,i:15},{width:120,height:600,format:4,i:12},{width:120,height:240,format:4,i:14}],Ga=function(a){return(a=Da.exec(a))?Number(a[1]):null},Ha=function(a){return(a=Ga(a))?Math.round(a):null},R=function(a,b,c){for(var d=0;d<c.length;d++){var e="google_ad_"+c[d];if(!b.hasOwnProperty(e)){var h=Ha(a[c[d]]);null!=h&&(b[e]=h)}}},Ia=function(a){var b=a.style.width;a.style.width="100%";var c=a.offsetWidth;a.style.width=b;return c},Ja=function(a,b){return a<=b},La=
function(a,b,c){if("auto"==c)return c=Ka(a),c=Math.min(1200,c),.25>=b/c?4:3;b=0;for(var d in Ca)-1!=c.indexOf(d)&&(b|=Ca[d]);return b},Ma=function(a,b,c,d){c=Fa.sort(c);for(var e=0;e<c.length;e++)if(b(c[e].width,a)&&c[e].format&d)return c[e];return null},Na=function(a,b){return b.width-a.width||b.height-a.height},Oa=function(a,b,c,d){b=La(c,a,b);d&&(d.google_responsive_formats=b);return Ma(a,Ja,Na,b)},Pa=function(a,b){return a.i-b.i},Qa=function(a,b){var c=a/b;return.66<=c&&1>=c},Ra=function(a,b,
c,d){b=La(c,a,b);d&&(d.google_responsive_formats=b);d=Ma(a,Qa,Pa,b);return null==d?Ma(a,Ja,Na,b):d},Ka=function(a){a=a.document;return a.documentElement.clientWidth||a.body.clientWidth},Sa={C:"E1",n:"C"},Ta={B:"SE",n:"SC"};var Ua={J:1,K:8,L:16,I:24};var Va=!!window.google_async_iframe_id,S=Va&&window.parent||window,Wa=function(a,b,c){var d=["<iframe"],e;for(e in a)a.hasOwnProperty(e)&&ma(d,e+"="+a[e]);d.push('style="left:0;position:absolute;top:0;"');d.push("></iframe>");b="border:none;height:"+c+"px;margin:0;padding:0;position:relative;visibility:visible;width:"+b+"px;background-color:transparent";return['<ins style="display:inline-table;',b,'"><ins id="',a.id+"_anchor",'" style="display:block;',b,'">',d.join(" "),"</ins></ins>"].join("")};var Xa=!0,Ya={},Za=function(a){var b=a.toString();a.name&&-1==b.indexOf(a.name)&&(b+=": "+a.name);a.message&&-1==b.indexOf(a.message)&&(b+=": "+a.message);if(a.stack){a=a.stack;var c=b;try{-1==a.indexOf(c)&&(a=c+"\n"+a);for(var d;a!=d;)d=a,a=a.replace(/((https?:\/..*\/)[^\/:]*:\d+(?:.|\n)*)\2/,"$1");b=a.replace(/\n */g,"\n")}catch(e){b=c}}return b},bb=function(a,b,c,d){var e=$a,h,f=Xa;try{h=b()}catch(g){try{var n=Za(g);b="";g.fileName&&(b=g.fileName);var m=-1;g.lineNumber&&(m=g.lineNumber);f=e(a,
n,b,m,c)}catch(k){try{var s=Za(k);a="";k.fileName&&(a=k.fileName);c=-1;k.lineNumber&&(c=k.lineNumber);$a("pAR",s,a,c,void 0,void 0)}catch(E){ab({context:"mRE",msg:E.toString()+"\n"+(E.stack||"")},void 0)}}if(!f)throw g;}finally{if(d)try{d()}catch(z){}}return h},$a=function(a,b,c,d,e,h){var f={};if(e)try{e(f)}catch(g){}f.context=a;f.msg=b.substring(0,512);c&&(f.file=c);0<d&&(f.line=d.toString());f.url=I.URL.substring(0,512);f.ref=I.referrer.substring(0,512);cb(f);ab(f,h);return Xa},ab=function(a,b){try{if(Math.random()<
(b||.01)){var c="/pagead/gen_204?id=jserror"+db(a),d="http"+("https:"==J.location.protocol?"s":"")+"://pagead2.googlesyndication.com"+c,c=d=d.substring(0,2E3);J.google_image_requests||(J.google_image_requests=[]);var e=J.document.createElement("img");e.src=c;J.google_image_requests.push(e)}}catch(h){}},cb=function(a){var b=a||{};K(Ya,function(a,d){b[d]=J[a]})},eb=function(a,b){return function(){var c=arguments;return bb(a,function(){return b.apply(void 0,c)},void 0,void 0)}},fb=function(a,b){return eb(a,
b)},db=function(a){var b="";K(a,function(a,d){if(0===a||a)b+="&"+d+"="+("function"==typeof encodeURIComponent?encodeURIComponent(a):escape(a))});return b};var gb=null,hb=function(){if(!gb){for(var a=window,b=a,c=0;a!=a.parent;)if(a=a.parent,c++,H(a))b=a;else break;gb=b}return gb};Xa=!Q("false",!1);Ya={client:"google_ad_client",format:"google_ad_format",slotname:"google_ad_slot",output:"google_ad_output",ad_type:"google_ad_type",async_oa:"google_async_for_oa_experiment",dimpr:"google_always_use_delayed_impressions_experiment",peri:"google_top_experiment",pse:"google_pstate_expt"};var ib=function(a,b,c){c||(c=Ba?"https":"http");return[c,"://",a,b].join("")};var T=null;var U;t:{var jb=p.navigator;if(jb){var kb=jb.userAgent;if(kb){U=kb;break t}}U=""}var V=function(a){return-1!=U.indexOf(a)};var lb=V("Opera")||V("OPR"),W=V("Trident")||V("MSIE"),mb=V("Gecko")&&-1==U.toLowerCase().indexOf("webkit")&&!(V("Trident")||V("MSIE")),nb=-1!=U.toLowerCase().indexOf("webkit"),ob=function(){var a=p.document;return a?a.documentMode:void 0},pb=function(){var a="",b;if(lb&&p.opera)return a=p.opera.version,"function"==aa(a)?a():a;mb?b=/rv\:([^\);]+)(\)|;)/:W?b=/\b(?:MSIE|rv)[: ]([^\);]+)(\)|;)/:nb&&(b=/WebKit\/(\S+)/);b&&(a=(a=b.exec(U))?a[1]:"");return W&&(b=ob(),b>parseFloat(a))?String(b):a}(),qb={},
rb=function(a){if(!qb[a]){for(var b=0,c=String(pb).replace(/^[\s\xa0]+|[\s\xa0]+$/g,"").split("."),d=String(a).replace(/^[\s\xa0]+|[\s\xa0]+$/g,"").split("."),e=Math.max(c.length,d.length),h=0;0==b&&h<e;h++){var f=c[h]||"",g=d[h]||"",n=RegExp("(\\d*)(\\D*)","g"),m=RegExp("(\\d*)(\\D*)","g");do{var k=n.exec(f)||["","",""],s=m.exec(g)||["","",""];if(0==k[0].length&&0==s[0].length)break;b=F(0==k[1].length?0:parseInt(k[1],10),0==s[1].length?0:parseInt(s[1],10))||F(0==k[2].length,0==s[2].length)||F(k[2],
s[2])}while(0==b)}qb[a]=0<=b}},sb=p.document,tb=sb&&W?ob()||("CSS1Compat"==sb.compatMode?parseInt(pb,10):5):void 0;var ub;if(!(ub=!mb&&!W)){var vb;if(vb=W)vb=W&&9<=tb;ub=vb}ub||mb&&rb("1.9.1");W&&rb("9");var wb=function(a,b,c){if(!a||!b||!c)return"XS";var d;if(Va&&!H(S)){for(d="."+I.domain;2<d.split(".").length&&!H(S);)I.domain=d=d.substr(d.indexOf(".")+1),S=window.parent;H(S)||(S=window)}d=S;for(a=a.parentElement;a;){try{var e=a.style}catch(h){}var f=a.parentElement;if(e){var g=Ga(e.width),n=Ga(e.height),m=f&&1==f.childNodes.length;if(n&&(m||g&&b>=g)&&c<n)return"NS";if(g&&(m||n&&c>=n)){if(b<g)return"NS"}else if(g||n)return"NS"}if((a=O(a,d))&&("absolute"==a.position||"fixed"==a.position))return"absolute"==
a.position?"CA":"CF";a=f;if(!a)try{a=d.frameElement;var k=d.parent;k&&k!=d&&(d=k)}catch(s){return"XS"}}return"CS"};var X=function(a){this.k=a;a.google_iframe_oncopy||(a.google_iframe_oncopy={handlers:{},upd:r(this.w,this)});this.t=a.google_iframe_oncopy},xb;var Y="var i=this.id,s=window.google_iframe_oncopy,H=s&&s.handlers,h=H&&H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&&d&&(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}";
/[\x00&<>"']/.test(Y)&&(-1!=Y.indexOf("&")&&(Y=Y.replace(ga,"&amp;")),-1!=Y.indexOf("<")&&(Y=Y.replace(ha,"&lt;")),-1!=Y.indexOf(">")&&(Y=Y.replace(ia,"&gt;")),-1!=Y.indexOf('"')&&(Y=Y.replace(ja,"&quot;")),-1!=Y.indexOf("'")&&(Y=Y.replace(ka,"&#39;")),-1!=Y.indexOf("\x00")&&(Y=Y.replace(la,"&#0;")));xb=Y;X.prototype.set=function(a,b){this.t.handlers[a]=b;this.k.addEventListener&&this.k.addEventListener("load",r(this.u,this,a),!1)};
X.prototype.u=function(a){a=this.k.document.getElementById(a);try{var b=a.contentWindow.document;if(a.onload&&b&&(!b.body||!b.body.firstChild))a.onload()}catch(c){}};X.prototype.w=function(a,b){var c=yb("rx",a),d;t:{if(a&&(d=a.match("dt=([^&]+)"))&&2==d.length){d=d[1];break t}d=""}d=(new Date).getTime()-d;c=c.replace(/&dtd=(\d+|M)/,"&dtd="+(1E4>d?d+"":"M"));this.set(b,c);return c};var yb=function(a,b){var c=new RegExp("\\b"+a+"=(\\d+)"),d=c.exec(b);d&&(b=b.replace(c,a+"="+(+d[1]+1||1)));return b};var Z,$=function(a){this.l=[];this.k=a||window;this.j=0;this.m=null;this.o=0},zb=function(a,b){this.v=a;this.s=b};$.prototype.D=function(a,b){0!=this.j||0!=this.l.length||b&&b!=window?this.r(a,b):(this.j=2,this.q(new zb(a,window)))};$.prototype.r=function(a,b){this.l.push(new zb(a,b||this.k));Ab(this)};$.prototype.F=function(a){this.j=1;if(a){var b=fb("sjr::timeout",r(this.p,this,!0));this.m=this.k.setTimeout(b,a)}};
$.prototype.p=function(a){a&&++this.o;1==this.j&&(null!=this.m&&(this.k.clearTimeout(this.m),this.m=null),this.j=0);Ab(this)};$.prototype.G=function(){return!(!window||!Array)};$.prototype.H=function(){return this.o};$.prototype.nq=$.prototype.D;$.prototype.nqa=$.prototype.r;$.prototype.al=$.prototype.F;$.prototype.rl=$.prototype.p;$.prototype.sz=$.prototype.G;$.prototype.tc=$.prototype.H;var Ab=function(a){var b=fb("sjr::tryrun",r(a.A,a));a.k.setTimeout(b,0)};
$.prototype.A=function(){if(0==this.j&&this.l.length){var a=this.l.shift();this.j=2;var b=fb("sjr::run",r(this.q,this,a));a.s.setTimeout(b,0);Ab(this)}};$.prototype.q=function(a){this.j=0;a.v()};
var Bb=function(a){try{return a.sz()}catch(b){return!1}},Cb=function(a){return!!a&&("object"==typeof a||"function"==typeof a)&&Bb(a)&&L(a.nq)&&L(a.nqa)&&L(a.al)&&L(a.rl)},Db=function(){if(Z&&Bb(Z))return Z;var a=hb(),b=a.google_jobrunner;return Cb(b)?Z=b:a.google_jobrunner=Z=new $(a)},Eb=function(a,b){Db().nq(a,b)},Fb=function(a,b){Db().nqa(a,b)};var Gb={"120x90":!0,"160x90":!0,"180x90":!0,"200x90":!0,"468x15":!0,"728x15":!0},Hb=Va?1==N(J):!N(J),Ib=function(){var a=G("script"),b;b=sa("","pagead2.googlesyndication.com");return["<",a,' src="',ib(b,"/pagead/js/r20140708/r20140417/show_ads_impl.js",""),'"></',a,">"].join("")},Jb=function(a,b,c,d){return function(){var e=!1;
d&&Db().al(3E4);var h=a.document.getElementById(b);h&&!H(h.contentWindow)&&3==a.google_top_js_status&&(a.google_top_js_status=6);try{if(H(a.document.getElementById(b).contentWindow)){var f=a.document.getElementById(b).contentWindow,g=f.document;g.body&&g.body.firstChild||(g.open(),f.google_async_iframe_close=!0,g.write(c))}else{var n=a.document.getElementById(b).contentWindow,m;h=c;h=String(h);if(h.quote)m=h.quote();else{f=['"'];for(g=0;g<h.length;g++){var k=h.charAt(g),s=k.charCodeAt(0),E=g+1,z;
if(!(z=C[k])){var x;if(31<s&&127>s)x=k;else{var l=k;if(l in D)x=D[l];else if(l in C)x=D[l]=C[l];else{var q=l,A=l.charCodeAt(0);if(31<A&&127>A)q=l;else{if(256>A){if(q="\\x",16>A||256<A)q+="0"}else q="\\u",4096>A&&(q+="0");q+=A.toString(16).toUpperCase()}x=D[l]=q}}z=x}f[E]=z}f.push('"');m=f.join("")}n.location.replace("javascript:"+m)}e=!0}catch(t){n=hb().google_jobrunner,Cb(n)&&n.rl()}e&&(e=yb("google_async_rrc",c),(new X(a)).set(b,Jb(a,b,e,!1)))}},Kb=function(a){var b=["<iframe"];K(a,function(a,d){null!=
a&&b.push(" "+d+'="'+a+'"')});b.push("></iframe>");return b.join("")},Lb=function(a,b,c,d){d=d?'"':"";var e=d+"0"+d;a.width=d+b+d;a.height=d+c+d;a.frameborder=e;a.marginwidth=e;a.marginheight=e;a.vspace=e;a.hspace=e;a.allowtransparency=d+"true"+d;a.scrolling=d+"no"+d;a.allowfullscreen=d+"true"+d},Nb=function(a,b,c){Mb(a,b,c,function(a,b,h){a=a.document;for(var f=b.id,g=0;!f||a.getElementById(f);)f="aswift_"+g++;b.id=f;b.name=f;f=Number(h.google_ad_width);g=Number(h.google_ad_height);16==h.google_reactive_ad_format?
(h=a.createElement("div"),h.innerHTML=Wa(b,f,g),c.appendChild(h.firstChild)):c.innerHTML=Wa(b,f,g);return b.id})},Mb=function(a,b,c,d){var e=G("script"),h={};Lb(h,b.google_ad_width,b.google_ad_height,!0);h.onload='"'+xb+'"';d=d(a,h,b);var h=b.google_override_format||!Gb[b.google_ad_width+"x"+b.google_ad_height]&&"aa"==b.google_loader_used?M(["c","e"],za):null,f=b.google_ad_output,g=b.google_ad_format;g||"html"!=f&&null!=f||(g=b.google_ad_width+"x"+b.google_ad_height,"e"==h&&(g+="_as"));f=!b.google_ad_slot||
b.google_override_format||!Gb[b.google_ad_width+"x"+b.google_ad_height]&&"aa"==b.google_loader_used;g=g&&f?g.toLowerCase():"";b.google_ad_format=g;for(var g=[b.google_ad_slot,b.google_ad_format,b.google_ad_type,b.google_ad_width,b.google_ad_height],f=[],n=0,m=c;m&&25>n;m=m.parentNode,++n)f.push(9!=m.nodeType&&m.id||"");(f=f.join())&&g.push(f);b.google_ad_unit_key=oa(g.join(":")).toString();g=a.google_adk2_experiment=a.google_adk2_experiment||M(["C","E"],ya)||"N";if("E"==g){g=c;f=[];for(n=0;g&&25>
n;++n){var m=(m=9!=g.nodeType&&g.id)?"/"+m:"",k;t:{var s=g.parentElement;k=g.nodeName.toLowerCase();if(s)for(var s=s.childNodes,E=0,z=0;z<s.length;++z){var x=s[z];if(x.nodeName&&x.nodeName.toLowerCase()==k){if(g==x){k="."+E;break t}++E}}k=""}f.push((g.nodeName&&g.nodeName.toLowerCase())+m+k);g=g.parentElement}g=f.join()+":";f=a;n=[];if(f)try{for(var l=f.parent,m=0;l&&l!=f&&25>m;++m){var q=l.frames;for(k=0;k<q.length;++k)if(f==q[k]){n.push(k);break}f=l;l=f.parent}}catch(A){}b.google_ad_unit_key_2=
oa(g+n.join()).toString()}else"C"==g&&(b.google_ad_unit_key_2="ctrl");if(l=a)l=H(a.top)?a.top:null;if(l){var l=b.google_reactive_ad_format,t;t:{for(t in Ua)if(Ua[t]==l){t=!0;break t}t=!1}l=!(t&&""+l)}c=l?wb(c,b.google_ad_width,b.google_ad_height):"XS";b.google_ablation_signals=c;b=qa(b);var u;if(c=Hb){if(!T)r:{t=[J.top];c=[];for(l=0;q=t[l++];){c.push(q);try{if(q.frames)for(var w=q.frames.length,g=0;g<w&&1024>t.length;++g)t.push(q.frames[g])}catch(Xb){}}for(w=0;w<c.length;w++)try{if(u=c[w].frames.google_esf){T=
u;break r}}catch(Yb){}T=null}c=!T}c?(u={},Lb(u,0,0,!1),u.style="display:none",u.id="google_esf",u.name="google_esf",w=ib(sa("","googleads.g.doubleclick.net"),"/pagead/html/r20140708/r20140417/zrt_lookup.html"),u.src=w,u=Kb(u)):u="";w=(new Date).getTime();c=a.google_top_experiment;t=a.google_async_for_oa_experiment;l=a.google_always_use_delayed_impressions_experiment;q=a.google_available_width_experiment;
g=a.google_auto_width_experiment;f=a.google_responsive_optimization_experiment;h=["<!doctype html><html><body>",u,"<",e,">",b,"google_show_ads_impl=true;google_unique_id=",a.google_unique_id,';google_async_iframe_id="',d,'";google_start_time=',v,";",c?'google_top_experiment="'+c+'";':"",t?'google_async_for_oa_experiment="'+t+'";':"",l?'google_always_use_delayed_impressions_experiment="'+l+'";':"",h?'google_append_as_for_format_override="'+h+'";':"",q?'google_available_width_experiment="'+q+'";':"",
g?'google_auto_width_experiment="'+g+'";':"",f?'google_responsive_optimization_experiment="'+f+'";':"","google_bpp=",w>v?w-v:1,";google_async_rrc=0;</",e,">",Ib(),"</body></html>"].join("");(a.document.getElementById(d)?Eb:Fb)(Jb(a,d,h,!0))},Ob=Math.floor(1E6*Math.random()),Pb=function(a){for(var b=a.data.split("\n"),c={},d=0;d<b.length;d++){var e=b[d].indexOf("=");-1!=e&&(c[b[d].substr(0,e)]=b[d].substr(e+1))}b=c[3];if(c[1]==Ob&&(window.google_top_js_status=4,a.source==top&&0==b.indexOf(a.origin)&&
(window.google_top_values=c,window.google_top_js_status=5),window.google_top_js_callbacks)){for(a=0;a<window.google_top_js_callbacks.length;a++)window.google_top_js_callbacks[a]();window.google_top_js_callbacks.length=0}},Qb=function(a,b){var c=navigator;if(Aa&&a&&b&&c){var d=a.document,c=d.createElement("script"),e;(e=b)?(e=e.toLowerCase())&&"ca-"!=e.substring(0,3)&&(e="ca-"+e):e="";c.async=!0;c.type="text/javascript";c.src=ib("www.gstatic.com","/pub-config/"+e+".js");d=d.getElementsByTagName("script")[0];
d.parentNode.insertBefore(c,d)}};var Rb=function(a){return/(^| )adsbygoogle($| )/.test(a.className)&&"done"!=a.getAttribute("data-adsbygoogle-status")},Tb=function(a,b,c){na(c);Sb(a,b,c);var d=O(a,c);if(!d||"none"!=d.display||"on"==b.google_adtest||0<b.google_reactive_ad_format){1==N(c)&&Qb(c,b.google_ad_client);K(pa,function(a,d){b[d]=b[d]||c[d]});b.google_loader_used="aa";if((d=b.google_ad_output)&&"html"!=d)throw Error("No support for google_ad_output="+d);bb("aa::main",function(){Nb(c,b,a)})}else c.document.createComment&&a.appendChild(c.document.createComment("No ad requested because of display:none on the adsbygoogle tag"))},
Sb=function(a,b,c){for(var d=a.attributes,e=d.length,h=0;h<e;h++){var f=d[h];if(/data-/.test(f.nodeName)){var g=f.nodeName.replace("data","google").replace(/-/g,"_");b.hasOwnProperty(g)||(f=f.nodeValue,"google_reactive_ad_format"==g&&(f=+f,f=isNaN(f)?null:f),null===f||(b[g]=f))}}if(b.google_enable_content_recommendations&&1==b.google_reactive_ad_format)b.google_ad_width=Ka(c),b.google_ad_height=50,a.style.display="none";else if(1==b.google_reactive_ad_format)b.google_ad_width=320,b.google_ad_height=
50,a.style.display="none";else if(8==b.google_reactive_ad_format)d=c.document,b.google_ad_width=("CSS1Compat"==d.compatMode?d.documentElement:d.body).clientWidth,c=c.document,b.google_ad_height=Math.max(("CSS1Compat"==c.compatMode?c.documentElement:c.body).clientHeight-200,200),a.style.display="none";else if(d=b.google_ad_format,"auto"==d||/^((^|,) *(horizontal|vertical|rectangle) *)+$/.test(d)){void 0===window.google_responsive_optimization_experiment&&(d=Sa,d=[d.n,d.C],e=wa,window.google_responsive_optimization_experiment=
M(d,e),window.google_responsive_optimization_experiment||(d=Ta,d=[d.n,d.B],e=xa,window.google_responsive_optimization_experiment=M(d,e)));d=a.offsetWidth;e=b.google_ad_format;h=Oa;"E1"==c.google_responsive_optimization_experiment&&(h=Ra);h=h(d,e,c,b);if(!h)throw Error("Cannot find a responsive size for a container of width="+d+"px and data-ad-format="+e);b.google_ad_height=h.height;c="SE"==c.google_responsive_optimization_experiment?h.width:300<d&&300<h.height?h.width:1200<d?1200:Math.round(d);b.google_ad_width=
c;a.style.height=b.google_ad_height+"px";b.google_ad_resizable=!0;delete b.google_ad_format;b.google_loader_features_used=128}else!Ea.test(b.google_ad_width)&&!Da.test(a.style.width)||!Ea.test(b.google_ad_height)&&!Da.test(a.style.height)?(c=O(a,c),a.style.width=c.width,a.style.height=c.height,R(c,b,["width","height"]),b.google_loader_features_used=256):(void 0!==window.google_auto_width_experiment?c="":(window.google_auto_width_experiment=M(["C","E"],va),c=window.google_auto_width_experiment),"E"==
c?(c=a.style,R(c,b,["height"]),d=Ia(a),e=Ha(c.width),h=Ha(c.height),50>h||120>d?R(c,b,["width"]):(d=Math.min(1200,d),300<h&&(d=Math.min(300,d)),d<=e?R(c,b,["width"]):(b.google_ad_width=d,b.google_original_width=e,a.style.width=d+"px"))):(void 0!==window.google_available_width_experiment?c="":(window.google_available_width_experiment=M(["C","E"],ua),c=window.google_available_width_experiment),"E"==c&&(b.google_available_width=Ia(a)),R(a.style,b,["width","height"])))},Ub=function(a){for(var b=document.getElementsByTagName("ins"),
c=0,d=b[c];c<b.length;d=b[++c])if(Rb(d)&&(!a||d.id==a))return d;return null},Vb=function(a){var b=a.element;a=a.params||{};if(b){if(!Rb(b)&&(b=b.id&&Ub(b.id),!b))throw Error("adsbygoogle: 'element' has already been filled.");if(!("innerHTML"in b))throw Error("adsbygoogle.push(): 'element' is not a good DOM element.");}else if(b=Ub(),!b)throw Error("adsbygoogle.push(): All ins elements in the DOM with class=adsbygoogle already have ads in them.");var c=window;b.setAttribute("data-adsbygoogle-status",
"done");Tb(b,a,c)},Wb=function(){if(!window.google_top_experiment&&!window.google_top_js_status){var a=window;if(2!==(a.top==a?0:H(a.top)?1:2))window.google_top_js_status=0;else if(top.postMessage){var b;try{b=J.top.frames.google_top_static_frame?!0:!1}catch(c){b=!1}if(b){if(window.google_top_experiment=M(["jp_c","jp_zl","jp_wfpmr","jp_zlt","jp_wnt"],ta),"jp_c"!==window.google_top_experiment){a=window;a.addEventListener?a.addEventListener("message",Pb,!1):a.attachEvent&&a.attachEvent("onmessage",
Pb);window.google_top_js_status=3;a={0:"google_loc_request",1:Ob};b=[];for(var d in a)b.push(d+"="+a[d]);top.postMessage(b.join("\n"),"*")}}else window.google_top_js_status=2}else window.google_top_js_status=1}if((d=window.adsbygoogle)&&d.shift)for(b=20;(a=d.shift())&&0<b--;)try{Vb(a)}catch(e){throw window.setTimeout(Wb,0),e;}window.adsbygoogle={push:Vb}};Wb();})();