   �      jhttp://mat1.gtimg.com/finance/js/st/p/boqiu/q_final_v20170329115216.js?0.22486224072054029&_=1497247089564 %�=��  %�� ԩh         
     O K           �      Base-Url   http://news.qq.com/   Server   X2_Platform   Cache-Control   max-age=600   Expires   Mon, 12 Jun 2017 06:08:10 GMT   Last-Modified   Wed, 29 Mar 2017 03:52:17 GMT   Content-Type   application/x-javascript   Content-Encoding   gzip   X-NWS-LOG-UUID   $db8a259d-c5be-402a-81af-b1a6042e554a   Access-Control-Expose-Headers   'X-Client-Ip, X-Server-Ip, X-Upstream-Ip   X-Client-Ip   202.104.111.148   X-Server-Ip   36.101.205.15   X-Upstream-Ip       X-Cache-Lookup   Hit From Disktank Gz (function(a) {
    var f = a.__ = a.__ || {},
        d = /^[a-z0-9\-\.:_]+$/,
        b = /^http(s)?:\/\/|^\.|^\//,
        e = Array.prototype.slice;
    f.global = a;
    f.doc = a.document;
    f.topLayer = 1;
    (function() {
        var c = f.global.navigator && navigator.userAgent;
        f.ua = {};
        if (c) { f.ua.browser = true;
            if (/MSIE \d/.test(c)) { f.ua.ie = c.match(/MSIE (\d)/)[1] } else {
                if (/KHTML/.test(c)) { f.ua.webkit = true } else {
                    if (/Gecko/.test(c)) { f.ua.gecko = true } else {
                        if (/Opera/.test(c)) { f.ua.opera = c.match(/Opera\/([0-9.]+)/)[1] } } } } } })();
    f._isDebug = false;
    f.debug = function(c) { this._isDebug = c === false ? false : true };
    f.isDebug = function() {
        return this._isDebug };
    f.each = function(g, c, i) {
        var h;
        if (g) {
            if (i) {
                for (h in g) { g.hasOwnProperty(h) && c(g[h], h) } } else {
                if (typeof g === "string" || typeof g.length !== "number" || g.tagName || g === this.global) { g = [g] }
                h = 0;
                for (i = g.length; h < i; ++h) { c(g[h], h) } } } };
    f.extend = function(g, c, i) {
        var h;
        i = i === false ? false : true;
        for (h in c) {
            if (c.hasOwnProperty(h) && (i || g[h] === void 0)) { g[h] = c[h] } } };
    f._uIdx = 0;
    f.getUid = function(g) {
        var c;
        if (!g) {
            return g }
        if (!c) { c = "_duid_" + ++f._uIdx;
            try { g._duid = c } catch (h) { c = null } }
        return c };
    f.set = function(g, c, j) {
        var i, h;
        g = g.split(".");
        j = j || f.global;
        i = 0;
        for (h = g.length - 1; i < h; ++i) { j[g[i]] = j[g[i]] || {};
            j = j[g[i]] }
        g = g[g.length - 1];
        j[g] = c === void 0 ? j[g] === void 0 ? {} : j[g] : c;
        return j[g] };
    f.get = function(h, c) {
        var l, k, j = h.split("."),
            i = c || f.global;
        l = 0;
        for (k = j.length; l < k; ++l) {
            if (!i) {
                return }
            i = i[j[l]] }
        return i };
    f.exportPath = function(g, c, h) { f.set(g, c, h) };
    f.inherits = function(g, c) {
        function h() {}
        h.prototype = c.prototype;
        g._super = c.prototype;
        g.prototype = new h;
        g.prototype.constructor = g };
    f.preLoadJs = function(c) { f.ua.ie || f.ua.opera ? f.downloadScriptImage(c) : f.downloadScriptObject(c) };
    f.downloadScriptImage = function(c) {
        (new Image).src = c };
    f.downloadScriptObject = function(g) {
        var c;
        if (f.doc.body) { c = f.doc.createElement("object");
            c.data = g;
            c.width = 0;
            c.height = 0;
            f.doc.body.appendChild(c) } else { setTimeout(function() { f.downloadScriptObject(g) }, 50) } };
    f.loadJs = function(i, c) {
        var n = f.doc,
            m = n.getElementsByTagName("head")[0] || n.documentElement,
            l, k, j = false;
        k = c.onSuccess;
        if (c.cache === false || f.isDebug() && c.cache !== true) { i += (i.indexOf("?") > 0 ? "&" : "?") + "_du_r_t=" + Math.random() }
        l = n.createElement("script");
        l.type = "text/javascript";
        l.src = i;
        if (c.charset) { l.charset = c.charset }
        l.onload = l.onreadystatechange = function() {
            if (!j && (!this.readyState || this.readyState === "loaded" || this.readyState === "complete")) { j = true;
                k && k();
                k = l.onload = l.onreadystatechange = null;
                m && l.parentNode && m.removeChild(l) } };
        m.appendChild(l) };
    f.BasicModule = function(g, c) { c = c || {};
        this.mname = g;
        this.detailObj = c };
    f.BasicModule.modules = {};
    f.BasicModule.waitingReg = [];
    f.BasicModule.loadingMods = {};
    f.BasicModule.loadedMods = {};
    f.BasicModule.add = function(g, c) {
        var h = new f.BasicModule(g, c);
        return this.modules[":" + g] = h };
    f.BasicModule.load = function(i, c) {
        var n, m, l, k, j;
        (n = this.modules[":" + i]) || (n = this.add(i));
        n = n.getURI(c);
        if (c.preload) { f.preLoadJs(n, c) } else { j = c.onSuccess;
            k = this.loadingMods;
            m = this.waitingReg;
            l = this.loadedMods;
            j && m.push(["_", false, c.dependency, j]);
            if (!k[i]) {
                if (l[i] !== void 0) { f.BasicModule.register("_", false) } else { k[i] = c;
                    f.loadJs(n, { cache: c.cache }) } } } };
    f.BasicModule.register = function(v, u, t, s) {
        var r, q, p, o, l, j, c = false;
        p = this.loadedMods;
        if (p[v] === void 0) { t = t || [];
            q = this.waitingReg;
            o = this.loadingMods;
            r = this.getMissingMods(v, t);
            if (o[v] !== void 0) { l = o[v] }
            if (r.length) { j = e.call(arguments);
                c = true;
                f.each(r, function(g) {
                    if (p[g] === void 0) { c = false;
                        o[g] === void 0 && f.BasicModule.load(g, { version: l && l.version }) } });
                c || q.push(j) } else { delete o[v];
                s && s();
                if (v !== "_") { p[v] = u }
                f.each(q, function(g, h) {
                    if (g && g != j) { q[h] = false;
                        f.BasicModule.register.apply(f.BasicModule, g) } }) } } };
    f.BasicModule.getMissingMods = function(g, c) {
        var i, h = [];
        c = c || [];
        i = this.loadedMods;
        f.each(c, function(k, j) {
            if (k === g) { k = "_";
                c[j] = k }
            k !== "_" && i[k] === void 0 && h.push(k) });
        return h };
    (function() {
        var c = f.doc.getElementsByTagName("script");
        c = c[c.length - 1].src;
        f.BasicModule.prototype.baseURI = c.substr(0, c.lastIndexOf("/")) })();
    f.BasicModule.prototype.getURI = function(h) {
        var c, l, k = this.detailObj,
            j, i;
        h = h || {};
        c = k.base || this.baseURI;
        if (k.fullPath) { c = k.fullPath } else {
            if (k.afterBasePath) { c = [c, k.afterBasePath].join("/") } else { j = this.mname.split(":");
                i = j[1];
                j = j[0].split(".");
                l = k.dirName == void 0 ? j.join("/") : k.dirName;
                if (k.dynamic) { h = h.version ? h.version : k.dynamic;
                    c = [c, l, this.mname].join("/");
                    c += "_" + h + ".js" } else { h = f.isDebug() ? "0" : h.version ? h.version : "0";
                    if (h !== "0") { c += "/" + h }
                    c = [c, l, (i || j[j.length - 1]) + ".js"].join("/") } } }
        return c };
    f._loadOne = function(g, c) {
        if (c._isMod) { f.BasicModule.load(g, c) } else { g.match(b) || (g = "http://" + g);
            c.preload ? f.preLoadJs(g, c) : f.loadJs(g, c) } };
    f.load = function(i, c, n) {
        var m, l, k, j = false;
        c = c || {};
        if (typeof c === "function") { m = n || {};
            m.onSuccess = c;
            c = m }
        c.onSuccess = c.onSuccess || function() {};
        k = typeof i === "string" ? i.split(" ") : e.call(i);
        if (i = c._isMod === void 0) { c._isMod = d.test(k[0]) }
        if (c._isMod) { c._isMod = true;
            if (c.onSuccess) { m = c.onSuccess;
                l = false;
                c.onSuccess = function() {
                    if (!l) { l = true;
                        m() } } } } else {
            if (c.onSuccess) {
                if (i) { c.onAllLoad = c.onSuccess;
                    j = c.preload === true ? true : false }
                c.onSuccess = function() { k.shift();
                    if (k.length === 0) { c.onAllLoad() } else { f.load(k, c) } } } }
        c.dependency = c.dependency || k;
        f.each(k, function(h, g) {
            if (g > 0) { j && f._loadOne(h, { preload: true, version: c.version }) } else { setTimeout(function() { f._loadOne(h, c) }, 0) } }) };
    f.each("load widget app jslog".split(" "), function(c) { f.exportPath("__." + c) });
    f.jslog.error = f.jslog.iferror = function() {} })(this);
__.BasicModule.register("lang", "0.4.0", [], function() { __.exportPath("__.lang");
    __.lang.OPER = { "+": function(d, c) {
            return d + c }, "-": function(d, c) {
            return d - c }, "*": function(d, c) {
            return d * c }, "/": function(d, c) {
            return d / c }, "%": function(d, c) {
            return d % c }, "-2": function(d, c) {
            return c - d }, "/2": function(d, c) {
            return c / d }, "%2": function(d, c) {
            return c % d }, ">": function(d, c) {
            return d > c }, "<": function(d, c) {
            return d < c }, ">=": function(d, c) {
            return d >= c }, "<=": function(d, c) {
            return d <= c }, "==": function(d, c) {
            return d == c }, "===": function(d, c) {
            return d === c }, "&&": function(d, c) {
            return d && c }, "||": function(d, c) {
            return d || c }, "&": function(d, c) {
            return d & c }, "|": function(d, c) {
            return d | c }, "^": function(d, c) {
            return d ^ c }, "++": function(b) {
            return b + 1 }, "--": function(b) {
            return b - 1 }, "!": function(b) {
            return !b } };
    __.lang.NODE_TYPE = { ELEMENT_NODE: 1, ATTRIBUTE_NODE: 2, TEXT_NODE: 3, CDATA_SECTION_NODE: 4, ENTITY_REFERENCE_NODE: 5, ENTITY_NODE: 6, PROCESSING_INSTRUCTION_NODE: 7, COMMENT_NODE: 8, DOCUMENT_NODE: 9, DOCUMENT_TYPE_NODE: 10, DOCUMENT_FRAGMENT_NODE: 11, NOTATION_NODE: 12 };
    __.lang.EF = function() {};
    __.lang.K = function(b) {
        return b };
    __.lang.isArray = function(b) {
        return Object.prototype.toString.apply(b) === "[object Array]" };
    __.lang.isUndefined = function(b) {
        return b === void 0 };
    __.lang.isNull = function(b) {
        return b === null };
    __.lang.isBoolean = function(b) {
        return typeof b === "boolean" };
    __.lang.isFunction = function(b) {
        return typeof b === "function" };
    __.lang.isNumber = function(b) {
        return typeof b === "number" && isFinite(b) };
    __.lang.isInt = function(d) {
        var c = parseInt(d, 10);
        if (isNaN(c)) {
            return false }
        return d === c };
    __.lang.isFloat = function(d) {
        var c = parseFloat(d);
        if (isNaN(c)) {
            return false }
        return d === c };
    __.lang.isObject = function(b) {
        return b && (typeof b === "object" || __.lang.isFunction(b)) || false };
    __.lang.isString = function(b) {
        return typeof b === "string" };
    __.lang.isEmpty = function(b) {
        return b === null || typeof b === "undefined" || b === 0 || b === false || b === "" || typeof b.length === "number" && b.length === 0 };
    __.lang.isNode = function(d, c) {
        return __.lang.isObject(d) && (!c && (d === __.global || d === __.doc) || d.nodeType === __.lang.NODE_TYPE.ELEMENT_NODE) };
    __.lang.range = function(f, e, h) {
        var g = [];
        h = h || 1;
        if (e === void 0) { e = f;
            f = 0 }
        for (; e > f;) { g[g.length] = f;
            f += h }
        return g };
    __.lang.each = __.each;
    __.lang.all = function(f, e, h) {
        var g;
        if (!f) {
            return true }
        if (h) {
            for (g in f) {
                if (f.hasOwnProperty(g) && !e(f[g], g)) {
                    return false } } } else {
            if (typeof f === "string" || typeof f.length !== "number" || f.tagName || f === __.global) { f = [f] }
            g = 0;
            for (h = f.length; g < h; ++g) {
                if (!e(f[g], g)) {
                    return false } } }
        return true };
    __.lang.find = function(f, e, h) {
        var g;
        if (!f) {
            return -1 }
        if (h) {
            for (g in f) {
                if (f.hasOwnProperty(g) && e(f[g], g)) {
                    return g } } } else {
            if (typeof f === "string" || typeof f.length !== "number" || f.tagName || f === __.global) { f = [f] }
            g = 0;
            for (h = f.length; g < h; ++g) {
                if (e(f[g], g)) {
                    return g } } }
        return -1 };
    __.lang.findByAttr = function(f, e, h, g) {
        return __.lang.find(f, function(a) {
            return a && a[e] === h }, g) };
    __.lang.any = function(f, e, h) {
        var g;
        if (!f) {
            return false }
        if (h) {
            for (g in f) {
                if (f.hasOwnProperty(g) && e(f[g], g)) {
                    return true } } } else {
            if (typeof f === "string" || typeof f.length !== "number" || f.tagName || f === __.global) { f = [f] }
            g = 0;
            for (h = f.length; g < h; ++g) {
                if (e(f[g], g)) {
                    return true } } }
        return false };
    __.lang.reduce = function(f, e, h, g) { __.each(f, function(b, a) { h = e(h, b, a) }, g);
        return h };
    __.lang.map = function(f, e, h) {
        var g = [];
        __.each(f, function(b, a) { g[a] = e(b) }, h);
        return g };
    __.lang.a = function(e) {
        var d, f;
        if (!e) {
            return [] }
        d = e.length || 0;
        for (f = Array(d); d--;) { f[d] = e[d] }
        return f };
    __.lang.w = function(b) {
        if (!__.lang.isString(b)) {
            return [] }
        return (b = __.lang.trim(b)) ? b.split(__.lang.getReg("\\s+")) : [] };
    __.lang.unique = function(d, c) {
        return __.lang.reduce(d, function(f, b, a) {
            if (0 === a || (c ? f[f.length - 1] !== b : !__.lang.inArray(b, f, true))) { f.push(b) }
            return f }, []) };
    __.lang.inArray = function(e, d) {
        var f = false;
        __.each(d, function(b, a) {
            if (b === e) { f = f === false ? [] : f;
                f.push(a) } });
        return f };
    __.lang.arrayRemove = function(f, e, h) {
        var g = f.length;
        e = f < 0 ? parseInt(e, 10) + g : e;
        h = h < 0 ? parseInt(h, 10) + g : h;
        if (h < e || e >= g || h >= g) {
            return false }
        h = f.slice((h || e) + 1 || f.length);
        f.length = e < 0 ? f.length + e : e;
        return f.push.apply(f, h) };
    __.lang.absorb = function(e, d) {
        var f = [];
        __.each(e, function(a) { f.push(a[d]) });
        return f };
    __.lang.curry = function(d) {
        var c;
        d = typeof d === "string" && __.lang.OPER[d] ? __.lang.OPER[d] : d;
        c = __.lang.a(arguments);
        c.shift();
        return function() {
            return d.apply(null, c.concat(__.lang.a(arguments))) } };
    __.lang.compose = function(d, c) {
        return function() {
            return d(c.apply(null, arguments)) } };
    __.lang.negate = function(b) {
        return function() {
            return !b.apply(null, arguments) } };
    __.lang.keys = function(d) {
        var c = [];
        __.each(d, function(b, a) { c.push(a) }, true);
        return c };
    __.lang.values = function(d) {
        var c = [];
        __.each(d, function(a) { c.push(a) }, true);
        return c };
    __.lang.clone = function(e) {
        var d, f;
        if (e === null || typeof e !== "object") {
            return e }
        d = new e.constructor;
        for (f in e) {
            if (e.hasOwnProperty(f)) { d[f] = __.lang.clone(e[f]) } }
        return d };
    __.lang.mergeObj = function() {
        var f, e, h, g = {};
        for (h = __.lang.a(arguments);
            (e = h.shift()) !== void 0;) {
            for (f in e) {
                if (e.hasOwnProperty(f)) { g[f] = e[f] } } }
        return g };
    __.lang.trim = function(e) {
        var d, f;
        e = e.replace(__.lang.getReg("^\\s\\s*"), "");
        d = __.lang.getReg("\\s");
        for (f = e.length - 1; d.test(e.charAt(f));) { f-- }
        return e.slice(0, f + 1) };
    __.lang.truncate = function(i, h, n, m) {
        var l, k = i.length,
            j = 0;
        h = h || 30;
        n = n === void 0 ? "..." : n;
        if (m !== void 0 && k > h / 2) { m = 0;
            for (l = n.length; m < l; m++) { j += n.charCodeAt(m) > 255 ? 2 : 1 }
            for (m = 0; m < k; m++) { j += i.charCodeAt(m) > 255 ? 2 : 1;
                if (j > h) {
                    break } }
            i = i.substring(0, m) + n } else { i = i.length > h ? i.slice(0, h - n.length) + n : String(i) }
        return i };
    __.lang.strRepeat = function(e, d) {
        var f = [];
        __.each(__.lang.range(d), function() { f.push(e) });
        return f.join("") };
    __.lang.baseConvert = function(e, d, f) {
        if (!e || !d) {
            return false }
        e = String(e).toLowerCase();
        if (f === void 0) { f = __.lang.startWith(e, "0x") ? 16 : __.lang.startWith(e, "0") ? 8 : 10 }
        e = parseInt(e, f);
        return e.toString(d) };
    __.lang.stripTags = function(b) {
        return b.replace(__.lang.getReg("<\\/?[^>]+>", "gi"), "") };
    __.lang.camelize = function(f) {
        var e, h = f.split("_"),
            g = h.length;
        if (g === 1) {
            return h[0] }
        e = f.charAt(0) === "_" ? h[0].charAt(0).toUpperCase() + h[0].substring(1) : h[0];
        for (f = 1; f < g; ++f) { e += h[f].charAt(0).toUpperCase() + h[f].substring(1) }
        return e };
    __.lang.underscore = function(b) {
        return b.replace(__.lang.getReg("([A-Z]+)([A-Z][a-z])", "g"), "$1_$2").replace(__.lang.getReg("([a-z\\d])([A-Z])", "g"), "$1_$2").toLowerCase() };
    __.lang.capitalize = function(b) {
        return b.charAt(0).toUpperCase() + b.substring(1).toLowerCase() };
    __.lang.sprintf = function(d) {
        for (var c = 1; arguments[c] !== void 0;) { d = d.replace(__.lang.getReg("%s"), arguments[c++]) }
        return d };
    __.lang.startWith = function(d, c) {
        return d.indexOf(c) === 0 };
    __.lang.beginWith = __.lang.startWith;
    __.lang.endWith = function(e, d) {
        var f = e.length - d.length;
        return f >= 0 && e.lastIndexOf(d) === f };
    __.lang.greplace = function(i, h, n) {
        var m, l = __.lang.getReg(h, "g"),
            k = __.lang.getReg(h),
            j = "";
        __.each(i.match(l), function(b, a) { m = i.indexOf(b) + b.length;
            j += i.substring(0, m).replace(k, n(b, a));
            i = i.substring(m) });
        return j + i };
    __.lang.rand = function(d, c) {
        if (c === void 0) { c = d;
            d = 0 }
        return Math.round(Math.random() * (c - d)) + d };
    __.lang.getReg = function() {
        var d = {},
            c;
        c = function(f, b) {
            var a = f + (b || "");
            d[a] || (d[a] = RegExp(f, b));
            return d[a] };
        c.purge = function() { d = {} };
        return c }();
    __.lang.log = function() {
        var d = 0,
            c = 0;
        return __.global.console ? function() {
            var f, b, a;
            if (__.isDebug()) { f = (new Date).getTime();
                a = __.global.console;
                b = d || f;
                d = f;
                f = ++c + ",(" + f + ",+" + (f - b) + "ms): ";
                b = __.lang.a(arguments);
                b.unshift(f);
                a.log.apply ? a.log.apply(a, b) : a.log(b.join(" ")) } } : __.lang.EF }();
    __.lang.toCall = function(h, g, l) {
        var k, j, i = false;
        l = l || 1000;
        j = typeof g === "function" ? g : function() {
            var a = false;
            if (__.get(g) !== void 0) { a = true }
            return a };
        if (!i && j()) { i = true;
            h() } else { k = setInterval(function() {
                if (!i && j()) { i = true;
                    clearInterval(k);
                    h() } }, l) } } });
__.BasicModule.register("dom", "0.4.0", ["lang"], function() { __.exportPath("__.dom");
    __.dom.id = function(b) {
        return typeof b === "string" ? __.doc.getElementById(b) : b };
    __.dom.$ = function(b) {
        return (b = __.dom.id(b)) ? [b] : [] };
    __.dom.f = __.dom.id;
    __.dom.hasClass = function(d, c) {
        return __.lang.getReg("(?:^|\\s+)" + c + "(?:\\s+|$)").test(d.className) };
    __.dom.addClass = function(d, c) {
        if (!__.dom.hasClass(d, c)) { d.className = __.lang.trim([d.className, c].join(" ")) } };
    __.dom.remClass = function(d, c) {
        if (c && __.dom.hasClass(d, c)) { d.className = __.lang.trim(d.className.replace(__.lang.getReg("(?:^|\\s+)" + c + "(?:\\s+|$)"), " "));
            __.dom.hasClass(d, c) && __.dom.remClass(d, c) } };
    __.dom.getElementsByClassName = function() {
        return __.doc.getElementsByClassName ? function(d, c) {
            return d.getElementsByClassName(c) } : function(v, u) {
            var s, r, t, p;
            t = u.split(" ");
            var q = [],
                o = v.all ? v.all : v.getElementsByTagName("*"),
                m, n = [],
                l;
            s = 0;
            for (r = t.length; s < r; s += 1) { q.push(__.lang.getReg("(^|\\s)" + t[s] + "(\\s|$)")) }
            s = 0;
            for (r = o.length; s < r; s += 1) { m = o[s];
                l = false;
                t = 0;
                for (p = q.length; t < p; t += 1) { l = q[t].test(m.className);
                    if (!l) {
                        break } }
                l && n.push(m) }
            return n } }();
    __.dom.insertBefore = function(d, c) { c.parentNode && c.parentNode.insertBefore && c.parentNode.insertBefore(d, c) };
    __.dom.insertAfter = function(d, c) { c.nextSibling ? c.parentNode.insertBefore(d, c.nextSibling) : c.parentNode.appendChild(d) };
    __.dom.addEl = function(r, q, o) {
        var n, p, l, m, k, i;
        if (!r) {
            return false }
        k = function(a) { __.dom.addClass(n, a) };
        i = function(a) { __.dom.addEl(a, n) };
        if (__.lang.isArray(r)) { m = __.doc.createDocumentFragment();
            __.each(r, function(a) { __.dom.addEl(a, m) });
            if (q = __.dom.id(q)) {
                if (o) { q.innerHTML = "" }
                m = q.appendChild(m) }
            return m }
        if (r._t) { r.tag = "_text";
            r.text = r._t }
        p = r.tag;
        if (!p && q && q.tagName) {
            switch (q.tagName.toLowerCase()) {
                case "table":
                case "tbody":
                    p = "tr";
                    break;
                case "tr":
                    p = "td";
                    break;
                case "ul":
                    p = "li";
                    break;
                case "select":
                    p = "option" } }
        p = p || "div";
        if (__.ua.ie && (p === "input" || p === "select") && r.name) { n = __.doc.createElement("<input name=" + r.name + ">") } else {
            if (p === "_text") { n = __.doc.createTextNode(r.text);
                r = {} } else { n = __.doc.createElement(p) } }
        if (!n) {
            return false }
        for (l in r) {
            if (r.hasOwnProperty(l)) { p = r[l];
                switch (l) {
                    case "cls":
                        __.each(p, k);
                        break;
                    case "child":
                        __.each(p, i);
                        break;
                    case "text":
                        n.appendChild(__.doc.createTextNode(p));
                        break;
                    case "css":
                        n.style.cssText = p;
                        break;
                    case "html":
                        n.innerHTML = p;
                        break;
                    case "attrs":
                        __.each(p, function(b, a) { n.setAttribute(a, b) }, true);
                        break;
                    default:
                        n[l] = p } } }
        if ((q = __.dom.f(q)) && q.appendChild) {
            if (o) { q.innerHTML = "" }
            n = q.appendChild(n) }
        return n };
    __.dom.remEl = function(e) {
        var c, f = function(a) { a = __.dom.$(a);
            __.each(a, function(b) { b && b.parentNode && b.parentNode.removeChild(b) }) };
        if (__.lang.isArray(e)) {
            for (c = e.length - 1; c > -1; c--) { f(e[c]) } } else { f(e) } };
    __.dom.addText = function(d, c) { d.appendChild(__.doc.createTextNode(c)) };
    __.dom.fillText = function(d, c) { d.innerHTML = "";
        __.dom.addText(d, c) };
    __.dom.addStyle = function(d) {
        var c;
        if (__.doc.createStyleSheet) { c = __.doc.createStyleSheet("");
            c.cssText = d } else { __.dom.addEl({ tag: "style", textContent: d }, __.doc.getElementsByTagName("head")[0]) }
        d = __.doc.styleSheets;
        return d[d.length - 1] };
    __.dom.addRules = function(e, c) {
        var f;
        if (!c) {
            if (!__.dom._style) { __.dom._style = __.dom.addStyle("") }
            c = __.dom._style }
        f = c.insertRule ? function(b) {
            var d = c,
                a = [];
            __.each(b, function(k, i) { a[i] = [d.cssRules.length];
                try { d.insertRule(k, d.cssRules.length) } catch (g) {} });
            return a } : c.addRule ? function(b) {
            var d = c,
                a = [];
            __.each(b, function(i, g) { i = i.split(__.lang.getReg("[{}]"));
                a[g] = [];
                __.each(i[0].split(/\s*,\s*/), function(h) { a[g].push(d.rules.length);
                    d.addRule(h, i[1], d.rules.length) }) });
            return a } : __.lang.EF;
        __.dom.addRules = f;
        return f(e) };
    __.dom.remRules = function(f, c) {
        var h = c || __.dom._style || __.doc.styleSheets[0],
            g;
        if (h.deleteRule) { g = true } else {
            if (h.removeRule) { g = false } else {
                return } }
        __.each(f, function(a) { g ? h.deleteRule(a) : h.removeRule(a) }) };
    __.dom.getScrollXY = function() {
        var b = function(a) { a = "scroll" + a;
            return Math.max(__.doc.documentElement[a], __.doc.body[a]) };
        return [b("Left"), b("Top")] };
    __.dom.getPosition = function(e, c) {
        for (var f = 0; e && !__.lang.isEmpty(e.offsetParent);) { f += e[c];
            e = e.offsetParent }
        f += parseInt(__.doc.body[c], 10);
        return f };
    __.dom.v = function(b) {
        if (b = __.dom.f(b)) {
            return b.value }
        return false };
    __.dom.getWindowXY = function() {
        var e = __.global.innerHeight,
            c = __.global.innerWidth,
            f = __.doc.compatMode;
        if (f || __.ua.ie) {
            if (f === "CSS1Compat") { e = __.ua.opera ? e : __.doc.documentElement.clientHeight;
                c = __.doc.documentElement.clientWidth } else { e = __.ua.opera ? e : __.doc.body.clientHeight;
                c = __.doc.body.clientWidth } }
        return [c, e] };
    __.dom.getDocumentXY = function() {
        var e, c, f;
        if (__.doc.compatMode !== "CSS1Compat" || __.ua.webkit) { e = __.doc.body.scrollWidth;
            c = __.doc.body.scrollHeight } else { e = __.doc.documentElement.scrollWidth;
            c = __.doc.documentElement.scrollHeight }
        f = __.dom.getWindowXY();
        return [Math.max(e, f[0]), Math.max(c, f[1])] };
    __.dom.setCenter = function(g) {
        var f = __.dom.getWindowXY(),
            i = __.dom.getScrollXY(),
            h = g.offsetWidth || g.clientWidth || parseInt(g.style.width, 10),
            j = g.offsetHeight || g.clientHeight || parseInt(g.style.height, 10);
        g.style.position = "absolute";
        g.style.left = (f[0] - h) / 2 + i[0] + "px";
        f = (f[1] - j) / 2 + i[1];
        g.style.top = (f < 50 ? 50 : f) + "px" };
    __.dom.getOpacity = function(f) {
        var c;
        if (__.lang.isUndefined(f.style.opacity)) { c = 100;
            try { c = f.filters["DXImageTransform.Microsoft.Alpha"].opacity } catch (h) {
                try { c = f.filters("alpha").opacity } catch (g) {} }
            c /= 100 } else { c = f.style.opacity;
            c = c === "" ? "1" : c }
        return c };
    __.dom.setOpacity = function(d, c) {
        if (!__.lang.isUndefined(d.style.opacity)) { d.style.opacity = c }
        if (__.lang.isString(d.style.filter)) { d.style.filter = "alpha(opacity=" + (c * 100).toFixed(0) + ")";
            if (!d.currentStyle || !d.currentStyle.hasLayout) { d.style.zoom = 1 } } };
    __.dom.contains = function(d, c) {
        if (d.contains && c.nodeType == __.lang.NODE_TYPE.ELEMENT_NODE) {
            return d == c || d.contains(c) }
        if (typeof d.compareDocumentPosition != "undefined") {
            return d == c || Boolean(d.compareDocumentPosition(c) & 16) }
        for (; c && d != c;) { c = c.parentNode }
        return c == d } });
__.BasicModule.register("event", "0.4.0", ["lang"], function() { __.exportPath("__.event");
    __.event.listeners = 0;
    __.event._allEvents = {};
    __.event._getEl = function(b) {
        return __.lang.isString(b) ? __.dom ? __.dom.$(b) : __.doc.getElementById(b) : b };
    __.event.on = function(j, p, n, o) {
        var e, m, l, k;
        if (j = __.event._getEl(j)) {
            if (__.lang.isArray(j)) { __.each(j, function(a) { __.event.on(a, p, n, o) }) } else {
                if (__.lang.isArray(p)) { __.each(p, function(a) { __.event.on(j, a, n, o) }) } else { l = __.getUid(j);
                    e = __.event._allEvents;
                    e[p] = e[p] || {};
                    e = e[p];
                    e[l] = e[l] || [];
                    l = e[l];
                    for (e = 0; e < l.length; e++) {
                        if (l[e].listener == n) {
                            return } }
                    if (p.indexOf(":") > -1) { m = "dataavailable";
                        e = function(a) { a = a || __.global.event;
                            if (!a.target) { a.target = a.srcElement }
                            if (a.eventName === p) {
                                return n(a) }
                            return true } } else { m = p;
                        e = function(a) { a = a || __.global.event;
                            if (!a.target) { a.target = a.srcElement }
                            return n(a) } }
                    k = { type: m, listener: n, proxy: e };
                    if (j.addEventListener) { j.addEventListener(m, e, !!o) } else { j.attachEvent && j.attachEvent("on" + m, e) }
                    l.push(k);
                    __.event.listeners++ } } } };
    __.event.off = function(i, n, l, m) {
        var e, k, j;
        if (i = __.event._getEl(i)) {
            if (__.lang.isArray(i)) { __.each(i, function(a) { __.event.off(a, n, l, m) }) } else { e = __.getUid(i);
                if (j = (__.event._allEvents[n] || {})[e]) {
                    for (e = 0; e < j.length; e++) {
                        if (j[e].listener == l) { k = j[e];
                            j.splice(e, 1);
                            break } } }
                if (k) {
                    if (i.removeEventListener) { i.removeEventListener(k.type, k.proxy, !!m) } else { i.detachEvent && i.detachEvent("on" + k.type, k.proxy) }
                    __.event.listeners-- } } } };
    __.event.fire = function(g, j, h) {
        var i, e = __.event._getEl(g);
        if (__.lang.isArray(e)) { __.each(e, function(a) { __.event.fire(a, j, h) }) } else { e = e || __.doc;
            if (e === __.doc && __.doc.createEvent && !e.dispatchEvent) { e = __.doc.documentElement }
            if (e.dispatchEvent || e.fireEvent) {
                if (__.doc.createEvent) { i = __.doc.createEvent("HTMLEvents");
                    i.initEvent("dataavailable", true, true) } else { i = __.doc.createEventObject();
                    i.eventType = "ondataavailable" }
                i.eventName = j;
                i.memo = h || {};
                __.doc.createEvent ? e.dispatchEvent(i) : e.fireEvent(i.eventType, i) } else {
                if (e = __.event._allEvents[j]) {
                    if (e = e[__.getUid(g)]) { i = { eventType: j, eventName: j, target: g, memo: h };
                        for (g = 0; g < e.length; g++) { e[g].listener(i) } } } }
            return i } };
    __.event.stopPropagation = function(b) {
        if (b.stopPropagation) { b.stopPropagation() } else { b.cancelBubble = true } };
    __.event.preventDefault = function(b) {
        if (b.preventDefault) { b.preventDefault() } else { b.returnValue = false } };
    __.event.stopEvent = function(b) { __.event.preventDefault(b);
        __.event.stopPropagation(b) };
    __.event.bind = function(b, d) {
        return function() { b.apply(d, __.lang.a(arguments)) } };
    __.event.onReady = function(b) {
        var d = __.event.onReady;
        d._bindReady();
        d._isReady ? b.call(__.global) : d._readyList.push(function() {
            return b.call(__.global) }) };
    __.event.onReady._readyList = [];
    __.event.onReady._isReady = false;
    __.event.onReady._isBound = false;
    __.event.onReady._hlReady = function() {
        var b = __.event.onReady;
        if (!b._isReady) { b._isReady = true;
            __.each(b._readyList, function(a) { a() });
            b._readyList = null } };
    __.event.onReady._bindReady = function() {
        var b = this,
            d;
        if (!b._isBound) { b._isBound = true;
            if (__.doc.readyState) {
                if (__.doc.readyState === "complete") { b._hlReady();
                    return } }
            if (__.ua.ie) { b._domReadyId = setInterval(function() {
                    try { __.doc.documentElement.doScroll("left");
                        clearInterval(b._domReadyId);
                        b._domReadyId = null;
                        b._hlReady() } catch (a) {} }, 50) } else { __.doc.addEventListener("DOMContentLoaded", b._hlReady, false) }
            d = __.global.onload;
            __.global.onload = typeof d !== "function" ? b._hlReady : function() { b._hlReady();
                d() } } } });
__.BasicModule.register("cookie", "0.4.0", [], function() { __.exportPath("__.cookie");
    __.cookie.get = function(g) {
        var h = __.doc.cookie,
            l = g + "=",
            k = h.indexOf("; " + l),
            j;
        if (k === -1) { k = h.indexOf(l);
            if (k !== 0) {
                return "" } } else { k += 2 }
        g = h.indexOf(";", k);
        if (g === -1) { g = h.length }
        h = h.substring(k + l.length, g);
        try { j = decodeURIComponent(h) } catch (i) { j = h }
        return j };
    __.cookie.del = function(e, f, h) {
        var g = e + "=";
        if (__.cookie.get(e)) {
            if (f) { g += "; path=" + f }
            if (h) { g += "; domain=" + h }
            g += "; expires=Thu, 01-Jan-70 00:00:01 GMT";
            __.doc.cookie = g } };
    __.cookie.set = function(d, e, f) { f = f || {};
        d = d + "=" + encodeURIComponent(e);
        if (f.expires) { e = f.expires;
            e.toGMTString || (e = new Date(e));
            d += "; expires=" + e.toGMTString() }
        if (f.path) { d += "; path=" + f.path }
        if (f.domain) { d += "; domain=" + f.domain }
        if (f.secure) { d += "; secure" }
        __.doc.cookie = d } });
__.BasicModule.register("selector", "0.4.0", ["lang", "dom"], function() { __.exportPath("__.selector");
    __.dom.$ = function(f, d, g) {
        var h;
        if (f) {
            if (f.nodeType) { h = [f] } else {
                if (f.item) { h = [];
                    d = 0;
                    for (g = f.length; d < g; ++d) { h.push(f[d]) } } else {
                    if (__.lang.isString(f)) { h = (h = d ? null : __.dom.id(f)) ? [h] : __.selector.query(f, d, g) } else { h = [f] } } } } else { h = [] }
        return h };
    __.dom.f = function() {
        return __.dom.$.apply(__.dom, __.lang.a(arguments))[0] };
    __.selector.query = function() {
        return __.doc.querySelectorAll ? function(f, d, g) {
            var h = [];
            if (d && !d.nodeName) { d = __.dom.f(d);
                if (!d) {
                    return h } }
            d = d || __.doc;
            if (g) { h[0] = d.querySelector(f) } else { g = d.querySelectorAll(f);
                f = 0;
                for (d = g.length; f < d; ++f) { h.push(g[f]) } }
            return h } : function(B, A, x) {
            var z, y, u, v, w, t, s, r, q, p, o;
            z = [];
            if (!B) {
                return z }
            B = __.lang.trim(B);
            y = __.lang.trim(B).split(",");
            if (y.length > 1) { B = 0;
                for (v = y.length; B < v; ++B) { u = __.selector.query(y[B], A, x);
                    if (x && u.length > 1) { z[0] = u[0];
                        break } else { z = z.concat(u) } }
                return z }
            if (A && !A.nodeName) { A = __.dom.f(A);
                if (!A) {
                    return z } }
            A = A || __.doc;
            A = [A];
            x = B.split(" ");
            r = false;
            y = 0;
            for (u = x.length; y < u; y++) { B = x[y];
                if (B === ">") { r = true } else { z = [];
                    w = B.match(__.lang.getReg("^([^.#]+)"));
                    t = B.match(__.lang.getReg("#([^.#]+)"));
                    s = (B = B.match(__.lang.getReg("\\.[^.#]+", "g"))) ? B.join(" ").replace(__.lang.getReg("\\.", "g"), "") : "";
                    if (t) { z = (z = __.dom.id(t[1])) ? [z] : [];
                        w = w ? w[1] : null } else {
                        if (w || B) { B = 0;
                            for (v = A.length; B < v; ++B) { q = w ? A[B].getElementsByTagName(w[1]) : __.dom.getElementsByClassName(A[B], s);
                                if (r) { p = 0;
                                    for (o = q.length; p < o; p++) { q[p].parentNode === A[B] && z.push(q[p]) } } else { z = z.concat(__.lang.a(q)) } }
                            s = w ? s : null;
                            w = null } }
                    z = __.selector._nodeFilter(z, { tagname: w, classname: s });
                    if (t && z[0]) { t = false;
                        B = 0;
                        for (v = A.length; B < v; ++B) { w = A[B];
                            if (r ? z[0].parentNode === w : w === __.doc || __.dom.contains(z[0], w)) { t = true;
                                break } }
                        t || (z = []) }
                    r = false;
                    A = z;
                    if (A.length === 0) {
                        break } } }
            return A } }();
    __.selector._nodeFilter = function(t, s) {
        var p, r, q, m, n, o, l, k;
        t = __.lang.unique(t);
        if (s.tagname) { p = [];
            r = __.lang.getReg("\\b" + s.tagname + "\\b", "i");
            q = 0;
            for (m = t.length; q < m; ++q) { r.test(t[q].tagName) && p.push(t[q]) }
            t = p }
        if (s.classname) { p = [];
            n = s.classname.split(" ");
            r = [];
            q = 0;
            for (m = n.length; q < m; ++q) { r.push(__.lang.getReg("(^|\\s)" + n[q] + "(\\s|$)")) }
            q = 0;
            for (m = t.length; q < m; ++q) { k = t[q];
                l = false;
                n = 0;
                for (o = r.length; n < o; n++) { l = r[n].test(k.className);
                    if (!l) {
                        break } }
                l && p.push(k) }
            t = p }
        return t } });
if (!this.JSON) { this.JSON = {} }(function() {
    function j(c) {
        return c < 10 ? "0" + c : c }

    function o(c) { p.lastIndex = 0;
        return p.test(c) ? '"' + c.replace(p, function(f) {
            var b = r[f];
            return typeof b === "string" ? b : "\\u" + ("0000" + f.charCodeAt(0).toString(16)).slice(-4) }) + '"' : '"' + c + '"' }

    function m(c, f) {
        var b, d, g, k, i = h,
            e, a = f[c];
        if (a && typeof a === "object" && typeof a.toJSON === "function") { a = a.toJSON(c) }
        if (typeof l === "function") { a = l.call(f, c, a) }
        switch (typeof a) {
            case "string":
                return o(a);
            case "number":
                return isFinite(a) ? String(a) : "null";
            case "boolean":
            case "null":
                return String(a);
            case "object":
                if (!a) {
                    return "null" }
                h += n;
                e = [];
                if (Object.prototype.toString.apply(a) === "[object Array]") { k = a.length;
                    for (b = 0; b < k; b += 1) { e[b] = m(b, a) || "null" }
                    g = e.length === 0 ? "[]" : h ? "[\n" + h + e.join(",\n" + h) + "\n" + i + "]" : "[" + e.join(",") + "]";
                    h = i;
                    return g }
                if (l && typeof l === "object") { k = l.length;
                    for (b = 0; b < k; b += 1) { d = l[b];
                        if (typeof d === "string") {
                            if (g = m(d, a)) { e.push(o(d) + (h ? ": " : ":") + g) } } } } else {
                    for (d in a) {
                        if (Object.hasOwnProperty.call(a, d)) {
                            if (g = m(d, a)) { e.push(o(d) + (h ? ": " : ":") + g) } } } }
                g = e.length === 0 ? "{}" : h ? "{\n" + h + e.join(",\n" + h) + "\n" + i + "}" : "{" + e.join(",") + "}";
                h = i;
                return g } }
    if (typeof Date.prototype.toJSON !== "function") { Date.prototype.toJSON = function() {
            return isFinite(this.valueOf()) ? this.getUTCFullYear() + "-" + j(this.getUTCMonth() + 1) + "-" + j(this.getUTCDate()) + "T" + j(this.getUTCHours()) + ":" + j(this.getUTCMinutes()) + ":" + j(this.getUTCSeconds()) + "Z" : null };
        String.prototype.toJSON = Number.prototype.toJSON = Boolean.prototype.toJSON = function() {
            return this.valueOf() } }
    var q = /[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,
        p = /[\\\"\x00-\x1f\x7f-\x9f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,
        h, n, r = { "": "\\b", "\t": "\\t", "\n": "\\n", "": "\\f", "\r": "\\r", '"': '\\"', "\\": "\\\\" },
        l;
    if (typeof JSON.stringify !== "function") { JSON.stringify = function(c, f, b) {
            var d;
            n = h = "";
            if (typeof b === "number") {
                for (d = 0; d < b; d += 1) { n += " " } } else {
                if (typeof b === "string") { n = b } }
            if ((l = f) && typeof f !== "function" && (typeof f !== "object" || typeof f.length !== "number")) {
                throw Error("JSON.stringify") }
            return m("", { "": c }) } }
    if (typeof JSON.parse !== "function") { JSON.parse = function(c, f) {
            function b(g, k) {
                var i, e, a = g[k];
                if (a && typeof a === "object") {
                    for (i in a) {
                        if (Object.hasOwnProperty.call(a, i)) { e = b(a, i);
                            if (e !== undefined) { a[i] = e } else { delete a[i] } } } }
                return f.call(g, k, a) }
            var d;
            q.lastIndex = 0;
            if (q.test(c)) { c = c.replace(q, function(g) {
                    return "\\u" + ("0000" + g.charCodeAt(0).toString(16)).slice(-4) }) }
            if (/^[\],:{}\s]*$/.test(c.replace(/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g, "@").replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g, "]").replace(/(?:^|:|,)(?:\s*\[)+/g, ""))) { d = eval("(" + c + ")");
                return typeof f === "function" ? b({ "": d }, "") : d }
            throw new SyntaxError("JSON.parse") } } })();
typeof __ != "undefined" && !__.Json && function() { __.json = { toJson: function(a) {
            return JSON.stringify(a) }, fromJson: function(a) {
            return JSON.parse(a) } } }();
__.BasicModule.register("disposable", "0.4.0", [], function() { __.Disposable = function() { __.Disposable._instances[__.getUid(this)] = this };
    __.Disposable._instances = {};
    __.Disposable.getUndisposedObjects = function() {
        var b = [];
        __.each(__.Disposable._instances, function(d, a) { b.push(__.Disposable._instances[a]) }, true);
        return b };
    __.Disposable.disposeAll = function() { __.each(__.Disposable._instances, function(b) { b.dispose() }, true) };
    __.Disposable.prototype._disposed = false;
    __.Disposable.prototype.isDisposed = function() {
        return this._disposed };
    __.Disposable.prototype.dispose = function() {
        if (!this._disposed) { this._disposed = true;
            this.disposeInternal();
            delete __.Disposable._instances[__.getUid(this)] } };
    __.Disposable.prototype.disposeInternal = function() {} });
__.BasicModule.register("clientstore", "0.4.0", ["lang"], function() { __.exportPath("__.clientStore");
    __.clientStore._inited = false;
    __.clientStore._store = null;
    __.clientStore._searchOrder = ["localStorage", "userData", "globalStorage"];
    __.clientStore._engines = { localStorage: { test: function() {
                return __.global.localStorage ? true : false }, init: function() { __.clientStore._store = __.global.localStorage }, get: function(b) {
                return __.clientStore._store.getItem(b) }, set: function(d, c) {
                return __.clientStore._store.setItem(d, c) }, del: function(b) {
                return __.clientStore._store.removeItem(b) } }, globalStorage: { test: function() {
                return __.global.globalStorage ? true : false }, init: function() { __.clientStore._store = __.global.globalStorage[__.doc.domain] }, get: function(b) {
                return __.clientStore._store.getItem(b).value }, set: function(d, c) {
                return __.clientStore._store.setItem(d, c) }, del: function(b) {
                return __.clientStore._store.removeItem(b) } }, userData: { test: function() {
                return __.global.ActiveXObject ? true : false }, init: function() {
                try { __.clientStore._store = __.doc.documentElement;
                    __.clientStore._store.addBehavior("#default#userdata") } catch (b) {} }, get: function(e) {
                var d;
                try { __.clientStore._store.load(e);
                    d = __.clientStore._store.getAttribute(e) } catch (f) { d = "" }
                return d }, set: function(e, d) {
                try { __.clientStore._store.load(e);
                    __.clientStore._store.setAttribute(e, d);
                    __.clientStore._store.save(e) } catch (f) {} }, del: function(d) {
                try { __.clientStore._store.load(d);
                    __.clientStore._store.expires = (new Date(315532799000)).toUTCString();
                    __.clientStore._store.save(d) } catch (c) {} } } };
    __.clientStore._init = function() {
        var d;
        __.clientStore._inited = true;
        if (__.lang.find(__.clientStore._searchOrder, function(a) { d = __.clientStore._engines[a];
                return d.test() }) !== -1) {
            try { d.init();
                delete d.test;
                delete d.init;
                __.extend(__.clientStore, d, true) } catch (c) {} } };
    __.clientStore.set = function() {
        if (!__.clientStore._inited) { __.clientStore._init();
            return __.clientStore.set.apply(__.clientStore, __.lang.a(arguments)) } };
    __.clientStore.get = function() {
        if (!__.clientStore._inited) { __.clientStore._init();
            return __.clientStore.get.apply(__.clientStore, __.lang.a(arguments)) } };
    __.clientStore.del = function() {
        if (!__.clientStore._inited) { __.clientStore._init();
            return __.clientStore.del.apply(__.clientStore, __.lang.a(arguments)) } } });
__.BasicModule.register("widget", "2.0.0", ["disposable"], function() { __.exportPath("__.widget");
    __.widget.Base = function() { __.Disposable.call(this);
        this.cssRules && this._addCssRules(this.cssRules) };
    __.inherits(__.widget.Base, __.Disposable);
    __.widget.Base.prototype.cssRules = "";
    __.widget.Base.prototype.disposeInternal = function() { __.widget.Base._super.disposeInternal.call(this);
        if (this.cssRules) { __.dom.remRules(this.cssRules);
            delete this.cssRules } };
    __.widget.Base.prototype._addCssRules = function(b) { this._cssRuleIds = __.dom.addRules(b) };
    __.widget.Base.prototype._READYSTATE = 1;
    __.widget.Base.prototype._EVENT_READYSTATE_CHANGE = "readystatechange";
    __.widget.Base.prototype._readystate_ = 0;
    __.widget.Base.prototype._changeReadyState = function(b) {
        if (this._readystate_ != b) { __.event.fire(this, this._EVENT_READYSTATE_CHANGE, { oldState: this._readystate_, newState: b });
            this._readystate_ = b;
            if (this._readystate_ == this._READYSTATE) { this.onReady() } } };
    __.widget.Base.prototype._onReady_ = [];
    __.widget.Base.prototype.onReady = function(b) { __.lang.isFunction(b) && this._onReady_.push(b);
        this._readystate_ == this._READYSTATE && __.each(this._onReady_, function(a) { a() }) } });
__.BasicModule.register("fn-table", "2.0.0", ["lang", "dom"], function() { __.exportPath("__.fnTable");
    __.fnTable.mapNumMarket = { 0: "jj", 1: "sh", 51: "sz", 100: "hk", 200: "us" };
    __.fnTable.findNextEl = function(b) {
        for (;;) { b = b.nextSibling;
            if (!b || b.nodeType === 1) {
                break } }
        return b };
    __.fnTable.getPageUrl = function(d, c) {
        var e = "";
        d = String(d);
        switch (String(c)) {
            case "":
            case "0":
                if (d.length > 5) { e = "http://gu.qq.com/fund/djj_jjcx/" + d + ".htm" }
                break;
            case "1":
                e = d.substr(0, 3) === "000" ? "http://gu.qq.com/hqing/zhishu/" + d + ".htm" : "http://gu.qq.com/sstock/ggcx/" + d + ".shtml";
                break;
            case "51":
                e = d.substr(0, 2) === "39" ? "http://gu.qq.com/hqing/zhishu/" + d + ".htm" : "http://gu.qq.com/sstock/ggcx/" + d + ".shtml";
                break;
            case "100":
                if (d.length <= 5) { e = "http://gu.qq.com/hk/ggcx/" + d + ".htm" }
                break;
            case "200":
                if (d.substr(0, 1) === ".") { d = d.substr(1) }
                e = "http://gu.qq.com/astock/ggcx/" + d.toUpperCase() + ".htm";
                break;
            case "300":
                e = "http://gu.qq.com/if/ggcx/" + d.toUpperCase() + ".shtml";
                break;
            case "350":
                e = "http://gu.qq.com/money/future/quotpage/f/" + d.toUpperCase() + ".htm" }
        return e || "http://finance.qq.com/" };
    __.fnTable.fill = function(z, y, u, x) {
        var w, v, t, l, r, p, h, s, q;
        x = x || {};
        p = __.lang.isBoolean(x.cloneTr) ? x.cloneTr : true;
        h = __.lang.isInt(x.lineCount) ? x.lineCount : Infinity;
        y = __.dom.f(y);
        if (p) { s = y.cloneNode(true);
            s.id = "" }
        v = y;
        if (__.lang.isObject(z)) { z = __.lang.values(z) }
        q = [];
        if (__.lang.isString(z)) { __.each(z.split(","), function(b) {
                var a = __.global["v_" + b];
                q.push(a ? a.split("~") : b) }) } else {
            if (__.lang.isArray(z)) { __.each(z, function(a) {
                    if (__.lang.isString(a)) { a = (a = __.global["v_" + a] || a) && a.split("~") }
                    q.push(a) }) } else {
                return } }
        z = q;
        y = 0;
        for (w = z.length; y < w && y < h; y++) { l = true;
            if (!__.lang.isObject(z[y]) && (!__.lang.isArray(z[y]) || z[y].length < 2)) {
                if (x.showError) { z[y] = [] } else { l = false } }
            if (l) {
                if (!v) {
                    if (p) { v = s.cloneNode(true);
                        t.parentNode.insertBefore(v, t.nextSibling) } else {
                        break } }
                t = v;
                l = z[y];
                if (y % 2 === 0 && x.evenTr) { v.style.cssText = x.evenTr } else {
                    if (y % 2 === 1 && x.oddTr) { v.style.cssText = x.oddTr } }
                r = t.firstChild;
                r = r.nodeType === 1 ? r : __.fnTable.findNextEl(r);
                for (v = 0; r;) { r.innerHTML = __.fnTable.process(u[v], l, v, r, y);
                    r = __.fnTable.findNextEl(r);
                    v++ }
                v = __.fnTable.findNextEl(t) } } };
    __.fnTable.clear = function(e) {
        var d, g, h;
        if (e) {
            if (e.tagName === "TABLE") { e = e.getElementsByTagName("tr")[0] }
            for (g = e; g;) { d = g;
                g = __.fnTable.findNextEl(d);
                if (d !== e) { __.dom.remEl(d) } else { d = d.firstChild;
                    d = d.nodeType === 1 ? d : __.fnTable.findNextEl(d);
                    for (h = 0; d;) { d.innerHTML = "";
                        d = __.fnTable.findNextEl(d);
                        h++ } } } } };
    __.fnTable.fastFill = function(B, A, w, z) {
        var y, x, v, p, s, q, l, t, r, u = [];
        v = false;
        z = z || {};
        __.lang.isUndefined(z.cloneTr);
        l = __.lang.isUndefined(z.lineCount) ? Infinity : z.lineCount;
        r = __.lang.isUndefined(z.trProcessor) ? false : z.trProcessor;
        y = A.parentNode.innerHTML.toLowerCase();
        y = y.substring(y.indexOf("<tr"), y.indexOf("</tr>") + 5);
        s = [];
        t = y.indexOf("<td");
        x = y.indexOf("<th");
        if (x < t && x > -1) { t = x;
            v = true }
        for (s.push(y.substr(0, t)); t >= 0;) { y = y.substr(t);
            t = y.indexOf(">");
            s.push(y.substr(0, t + 1));
            t = y.indexOf(v ? "</th>" : "</td>");
            if (t === -1) {
                break }
            y = y.substr(t + 5);
            t = y.indexOf("<td");
            x = y.indexOf("<th");
            if (x > -1 && (x < t || t === -1)) { t = x;
                v = true } else { v = false } }
        if (__.lang.isObject(B)) { B = __.lang.values(B) }
        t = [];
        if (__.lang.isString(B)) { __.each(B.split(","), function(a) {
                var b = __.global["v_" + a];
                t.push(b ? b.split("~") : a) }) } else {
            if (__.lang.isArray(B)) { __.each(B, function(a) {
                    if (__.lang.isString(a)) { a = (a = __.global["v_" + a] || a) && a.split("~") }
                    t.push(a) }) } else {
                return } }
        B = t;
        y = 0;
        for (x = B.length; y < x && y < l; y++) { v = true;
            if (!__.lang.isArray(B[y]) || B[y].length < 2) {
                if (z.showError) { B[y] = [] } else { v = false } }
            if (v) { q = B[y];
                v = 0;
                for (p = s.length; v < p; ++v) {
                    if (v === 0) { u.push(r ? r(y) : s[v]) } else { u.push(s[v]);
                        t = __.fnTable.process(w[v - 1], q, v - 1, void 0, y);
                        u.push((t === void 0 ? "" : t) + "</td>") } } } }
        A.parentNode.parentNode.parentNode.innerHTML = "<table><tbody>" + u.join("") + "</tbody></table>";
        w = A = null };
    __.fnTable.process = function(i, h, k, n, m) {
        var l;
        if (h.length === 1) { l = "--";
            if (__.lang.isFunction(i)) {
                try { l = i(h, k, n, m) } catch (j) {} } else {
                if (__.lang.isString(i) && !__.lang.isFunction(__.fnTable.processors[i])) { l = i } } } else { l = __.lang.isFunction(i) ? i(h, k, n, m) : __.lang.isFunction(__.fnTable.processors[i]) ? __.fnTable.processors[i](h, k, n) : !__.lang.isUndefined(h[i]) ? h[i] : __.lang.isString(i) ? i : h[k];
            if (l === "" || l === void 0 || l === null) { l = "--" } }
        return l };
    __.fnTable.processors = { R_PRICE: function(d, c) {
            return __.fnTable.processors.GET_COLOR(d[3], d[2], c) }, S_PRICE: function(d, c) {
            return __.fnTable.processors.GET_COLOR(d[3], d[4], c) }, L_PRICE: function(d, c) {
            return __.fnTable.processors.GET_COLOR(d[3], d[32], c) }, L_CHANGE: function(b) {
            return __.fnTable.processors.GET_SIGNED_COLOR(b[31], b[31]) }, S_PERCENT: function(b) {
            return __.fnTable.processors.GET_PERCENT(b[5]) }, L_PERCENT: function(b) {
            return __.fnTable.processors.GET_PERCENT(b[32]) }, TITLE: function(b) {
            return __.fnTable.processors.GET_TITLE(b[2], b[0], b[1], false, "_blank") }, GET_COLOR: function(d, c, e) {
            return c > 0 ? '<span style="color:#fe0002">' + d + "</span>" : c < 0 ? '<span style="color:#009900">' + d + "</span>" : e !== false ? '<span style="color:#000">' + d + "</span>" : d }, GET_SIGNED_COLOR: function(d, c, e) {
            return __.fnTable.processors.GET_COLOR((c > 0 ? "+" : "") + d, c, e) }, GET_PERCENT: function(d, c) {
            return __.lang.isNumber(Number(d)) && d !== "" && d !== "-" ? __.fnTable.processors.GET_COLOR((d > 0 ? "+" : "") + d + "%", d, c) : "--" }, GET_TITLE: function(i, h, k, n, m) {
            var l, j;
            k = k.replace(__.lang.getReg("[\\s\u3000]*", "ig"), "");
            n = n ? Math.ceil(n / 2) * 2 : 8;
            m = m || "";
            l = n / 2;
            j = k;
            if (k.length > l) {
                for (j = 0; j < n; j++) { k.charCodeAt(j) > 255 && n > l && n-- }
                j = k.substring(0, n) }
            return '<a href="' + __.fnTable.getPageUrl(i, h) + '" title="' + k + "(" + i + ')"' + (m ? ' target="' + m + '"' : "") + ">" + j + "</a>" } };
    __.fnTable.sort = function(x, w, s, v) {
        var u = __.dom.f(x),
            t = __.dom.$("tr", u),
            r = [],
            k = __.lang.getReg("^\\s+$"),
            p = {},
            l, h = null,
            q = function(a) { a = a.cloneNode(true);
                var b = [];
                if (a && a.nodeType === __.lang.NODE_TYPE.TEXT_NODE) { k.test(a.nodeValue) || b.push(a.nodeValue) } else { a && a.nodeType === __.lang.NODE_TYPE.ELEMENT_NODE && a.hasChildNodes() && __.each(a.childNodes, function(c) { b.push(q(c)) }) }
                return b.join("") };
        s = s === false ? false : true;
        __.each(t, function(b, c) {
            var a;
            if (v) { r[c] = v[c] } else { a = q(b.childNodes[w]).replace("%", "");
                a = parseFloat(a);
                r[c] = isNaN(a) ? 0 : a }
            if (p[r[c]]) { p[r[c]].push(c) } else { p[r[c]] = [c] }
            __.dom.addClass(b, "du-table-sort-" + c) });
        __.each(r.sort(s ? __.lang.OPER["-"] : __.lang.OPER["-2"]), function(b) {
            try {
                var c = "du-table-sort-" + p[b].pop();
                l = __.dom.f("." + c, u);
                h ? __.dom.insertAfter(l, h) : __.dom.insertBefore(l, t[0].parentNode.firstChild);
                __.dom.remClass(l, c);
                h = l } catch (a) {} }) };
    __.fnTable.load = function(d, c) {
        var e = "http://qt.gtimg.cn/r=" + Math.random() + "q=";
        d = __.lang.isArray(d) ? d.join(",") : d;
        __.load(e + d, c, { charset: "gbk", cache: true }) };
    __.fnTable.pFill = function(g, e, h) {
        var j, i;
        __.lang.isString(g) && __.each(g.split(","), function(a) {
            if (__.global["v_" + a]) {
                if (__.lang.isString(g)) { g = [__.global["v_" + a]] } else { g.push(__.global["v_" + a]) } } });
        __.each(g, function(b, a) { b = b.split("~");
            __.each(h, function(f, d) {
                if (j = __.dom.f([e, a, d].join("-"))) {
                    try { i = __.fnTable.process(f, b, d, j) } catch (c) { i = "--" }
                    j.innerHTML = i } }) }) };
    __.fnTable.getFloatByLength = function(g, e) {
        var h, j, i = parseFloat(g);
        g = String(g);
        h = g.length;
        j = g.indexOf(".");
        return h <= e ? g : j <= 0 || j >= e ? i.toFixed(0) : i.toFixed(e - j - 1) } });
__.BasicModule.register("fn-cronloader", "2.0.0", ["lang", "dom", "fn-table", "clientstore"], function() { __.FnCronLoader = function(b) { b = b || {};
        if (b.pushBases) { __.FnCronLoader.pushBases = b.pushBases }
        if (b.pushDummy) { __.FnCronLoader.pushDummy = b.pushDummy }
        this._maxCount = b.max || 172800;
        this._autoCache = b.autoCache === true ? true : false;
        this._idIntv = null;
        this.stop() };
    __.FnCronLoader.version = "2.0.0";
    __.FnCronLoader.QT_LIMIT = 60;
    __.FnCronLoader.PUSH_LIMIT = 60;
    __.FnCronLoader.NO_MATCH = "pv_none_match";
    __.FnCronLoader.TIME_OUT = "pv_timeout";
    __.FnCronLoader.defaultInterval = 5;
    __.FnCronLoader.pushDummy = "./pushiframe.html";
    __.FnCronLoader.pushBases = ["http://push1.gtimg.cn/q=", "http://push2.gtimg.cn/q=", "http://push3.gtimg.cn/q="];
    __.FnCronLoader._pushInited = false;
    __.FnCronLoader._pushIfrCtn = null;
    __.FnCronLoader._aIframes = [];
    __.FnCronLoader.prototype._jobUidIdx = 0;
    __.FnCronLoader.prototype._fastCount = 0;
    __.FnCronLoader.prototype._defSendDelay = 100;
    __.FnCronLoader.prototype.pushSessions = [];
    __.FnCronLoader._initPush = function() { this._pushInited = true;
        this._pushIfrCtn = __.dom.addEl({ css: "position:absolute;visibility:hidden;top:0;left:0;height:0;width:0;" }, __.doc.body) };
    __.FnCronLoader._createIfr = function() {
        var b = __.dom.addEl({ tag: "iframe", id: "du-push-ifr" + this._aIframes.length, css: "height:0;width:0;border:0;" }, this._pushIfrCtn);
        this._aIframes.push(b);
        return b };
    __.FnCronLoader._getIframe = function(e) {
        var f, c = this._aIframes;
        f = __.lang.findByAttr(c, "className", "");
        f = f === -1 ? this._createIfr() : c[f];
        if (e || !f.src) { f.src = this._getDummySrc() }
        f.className = "active";
        return f };
    __.FnCronLoader._getDummySrc = function() {
        return this.pushDummy + "?_u=" + new Date % 100000 + Math.random() };
    __.FnCronLoader._purgeIframe = function(b, c) {
        if (b) { b.className = "";
            if (c) {
                if (b.contentWindow) { b.contentWindow.__ = null }
                b.src = this._getDummySrc() } } };
    __.FnCronLoader.setCache = function(b) {
        var c = +new Date;
        __.each(b, function(a, d) { __.clientStore.set("du-cl~" + d, c + "~" + a) }, true) };
    __.FnCronLoader.getCache = function(h, k) {
        var e, l, j, i = {};
        k = parseInt(k, 10);
        if (!__.lang.isInt(k) || k < 0) { k = 0 }
        e = +new Date;
        __.each(h, function(a) { j = null;
            if (l = __.clientStore.get("du-cl~" + a)) { l = l.split("~");
                if (k === 0 || e - l[0] <= k) { l.shift();
                    j = l.join("~") } }
            i[a] = j });
        return i };
    __.FnCronLoader.prototype._getPushBase = function() {
        var b = __.FnCronLoader.pushBases.length,
            c = parseInt(__.clientStore.get("du_push_id"), 10);
        b = __.lang.isInt(c) ? (c + 1) % b : __.lang.rand(b);
        __.clientStore.set("du_push_id", String(b));
        return __.FnCronLoader.pushBases[b] };
    __.FnCronLoader.prototype.getJobById = function(f, g) {
        var e, h;
        if (g === true) { e = this.jobs[0];
            h = __.lang.isArray(e) ? __.lang.findByAttr(e, "id", f) : -1;
            if (h === -1) {
                return null } } else { e = this.jobs[f.split("-")[1]];
            h = __.lang.isArray(e) ? __.lang.findByAttr(e, "id", f) : -1;
            if (h === -1) {
                return this.getJobById(f, true) } }
        return e[h] };
    __.FnCronLoader.prototype._doPolling = function(v) {
        var s = this,
            u = [],
            t, q = true,
            p = this.pollingCount,
            r = [],
            o = [],
            k = [],
            h = {},
            l = function() {
                if (u.length > 0) { t = u.splice(__.FnCronLoader.QT_LIMIT, u.length);
                    __.fnTable.load(u.join(","), l);
                    u = t } else { __.each(r, function(c) {
                        var b = "v_" + c,
                            a;
                        a = __.global[b];
                        if (a !== void 0 && a !== null) { h[c] = a;
                            __.global[b] = null } });
                    s._onDataLoaded(h, k) } };
        v ? __.each(this.jobs[v.split("-")[1]], function(b) {
            var a;
            if (b.id === v) { a = b.judge(0);
                if (b && (a & 1) === 1 && b.keys) { q = false;
                    r = r.concat(b.keys) }(a & 2) === 2 && k.push(v) } }) : __.each(this.jobs, function(b, a) { a > 0 && p % a === 0 && __.each(b, function(c) {
                var d;
                d = c.judge(p);
                if ((d & 1) === 1 && c.keys) { q = false;
                    r = r.concat(c.keys) }(d & 2) === 2 && k.push(c.id) }) }, true);
        if (!q || o.length > 0) {
            if (r.length === 0) { l() } else { r = __.lang.unique(r);
                u = r.slice(0);
                t = u.splice(__.FnCronLoader.QT_LIMIT, u.length);
                __.fnTable.load(u.join(","), l);
                u = t } } };
    __.FnCronLoader.prototype._consumePushJob = function() {
        var h, k, e = [],
            l = __.FnCronLoader.PUSH_LIMIT,
            j, i;
        for (__.each(this.jobs[0], function(a) { __.lang.isUndefined(a.sessionId) && e.push(a.id) }); e.length;) { h = [];
            for (k = []; e.length;) { i = this.getJobById(e[0], true);
                if (i.keys.length >= l) {
                    if (h.length) {
                        break }
                    j || (j = __.lang.a(i.keys));
                    k.push(i.id);
                    if (j.length > l) { h = j.splice(0, l);
                        break } else { h = j;
                        j = null;
                        e.shift() } } else {
                    if (i.keys.length + h.length <= l) { e.shift();
                        h = h.concat(i.keys);
                        k.push(i.id) } else {
                        break } } }
            this._updateSession(this._assignSession(h, k)) } };
    __.FnCronLoader.prototype._assignSession = function(h, k) {
        var e, l, j, i = this;
        e = __.lang.find(this.pushSessions, function(a) { l = [];
            l = __.lang.unique(l.concat(a.keys).concat(h));
            return l.length <= __.FnCronLoader.PUSH_LIMIT });
        if (e === -1) { e = this.pushSessions.length;
            this.pushSessions.push({ keys: h, ids: k, id: e }) } else { j = this.pushSessions[e];
            j.ids = j.ids.concat(k);
            j.keys = l }
        __.each(k, function(a) { a = i.getJobById(a);
            if (a.sessionId) { a.sessionId.push(e) } else { a.sessionId = [e] } });
        return e };
    __.FnCronLoader.prototype._updateSession = function(g, i) {
        var e, j, h;
        h = this.jobs[0];
        j = this.pushSessions[g];
        if (i) { e = [];
            __.each(j.ids, function(a) { e.push(h[a].keys) });
            e = __.lang.unique(e);
            j.keys = e } else { e = j.keys;
            j.running = true;
            j.iframe = null;
            this._sendPushReq(g) } };
    __.FnCronLoader.prototype._sendPushReq = function(h) {
        var k, e, l = this,
            j = __.FnCronLoader.NO_MATCH,
            i = __.FnCronLoader.TIME_OUT;
        e = this.pushSessions[h];
        if (!(this._paused || !e || !e.running || this.pushCount > this._maxCount)) {
            if (__.ua.webkit) { k = e.iframe;
                delete e.iframe }
            if (!e.iframe) { e.iframe = __.FnCronLoader._getIframe() }
            e.pushCount = ++this.pushCount;
            __.lang.toCall(function() {
                var c = e.iframe.contentWindow,
                    b, a;
                if (!c || !c.__) { l._paused || l._delayPushReq(h);
                    l = e = c = null } else { b = +new Date;
                    c.reqCount = e.pushCount;
                    a = c.__;
                    a.load(e.url, function() {
                        var f = {},
                            d;
                        if (!(l._paused || !e || !e.running)) {
                            if (c[j] === 1) { c[j] = 0;
                                throw Error("No data for:" + e.keys.join(",")) } else {
                                if (c[i] === 1) { c[i] = 0;
                                    l._delayPushReq(h) } else {
                                    if (c.reqCount === e.pushCount) {
                                        if (new Date - b < 1000) { l._fastCount++ } else { l._fastCount = 0 }
                                        __.each(e.keys, function(g) { d = "pv_" + g;
                                            if (c[d] !== void 0 && c[d] !== null) { f[g] = c[d];
                                                c[d] = void 0 } });
                                        l._onDataLoaded(f, e.ids, e.id);
                                        l._delayPushReq(h);
                                        l = e = f = a = c = null } } } } }, { charset: "gbk", cache: true });
                    if (k) { __.FnCronLoader._purgeIframe(k, true);
                        k = null } } }, function() {
                var b;
                try { b = e.iframe.contentWindow && e.iframe.contentWindow.__ } catch (a) {}
                return !!b }, 100) } };
    __.FnCronLoader.prototype._delayPushReq = function(f) {
        var g = this,
            e = this._defSendDelay;
        e *= Math.pow(2, Math.floor(this._fastCount / 2));
        try { setTimeout(function() { g._sendPushReq(f) }, e) } catch (h) {} };
    __.FnCronLoader.prototype._onDataLoaded = function(i, m, h) {
        var n, k, j = this,
            l = __.lang.isInt(h);
        k = l ? j.pushCount : j.pollingCount;
        this._autoCache && __.FnCronLoader.setCache(i);
        __.each(m, function(a) {
            if (n = j.getJobById(a, l)) {
                if (n && n.onData) {
                    if (!n.__created || l && !n.__created[h]) { n.onData(i, k);
                        if (l) { n.__created[h] = true } else { n.__created = true }
                        n.runOnce && j.remJob(n.id) } else {
                        if (n.onUpdate) { n.onUpdate(i, k) } else { n.onData(i, k) } } } } }) };
    __.FnCronLoader.prototype._addPolling = function(f) {
        var g = f && f.judge,
            e, h = this;
        if (__.lang.isUndefined(f.judge)) { g = f.interval;
            f.judge = g }
        if (g && __.lang.isInt(f.judge) && g > 0) { f.judge = function(a) {
                if (a % g === 0) {
                    return 3 }
                return 0 } }
        e = parseInt(f.interval, 10);
        this.jobs[e] || (this.jobs[e] = []);
        this.jobs[e].push(f);
        f.noWait && setTimeout(function() { h._doPolling(f.id) }, 0) };
    __.FnCronLoader.prototype._addPush = function(b) { this.jobs[0] || (this.jobs[0] = []);
        b.__created = [];
        this.jobs[0].push(b);
        this._paused || this._consumePushJob() };
    __.FnCronLoader.prototype._remPushJob = function(h) {
        var k, e, l, j;
        k = false;
        var i = this;
        if (this.jobs[0]) { e = __.lang.findByAttr(this.jobs[0], 