!
function(t, e) {
    "object" == typeof exports && "object" == typeof module ? module.exports = e() : "function" == typeof define && define.amd ? define([], e) : "object" == typeof exports ? exports.tableExport = e() : t.tableExport = e()
} (this,
function() {
    return function(t) {
        function e(r) {
            if (n[r]) return n[r].exports;
            var o = n[r] = {
                exports: {},
                id: r,
                loaded: !1
            };
            return t[r].call(o.exports, o, o.exports, e),
            o.loaded = !0,
            o.exports
        }
        var n = {};
        return e.m = t,
        e.c = n,
        e.p = "",
        e(0)
    } ([function(t, e, n) {
        t.exports = function(t, e, r) {
            var o = document,
            i = o.getElementById(t),
            a = o.characterSet,
            s = {
                json: "application/json;charset=" + a,
                txt: "csv/txt;charset=" + a,
                csv: "csv/txt;charset=" + a,
                xml: "application/xml",
                doc: "application/msword",
                xls: "application/vnd.ms-excel",
                docx: "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
                xlsx: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
            },
            c = {
                json: n(10),
                txt: n(3),
                csv: n(3),
                xml: n(13),
                doc: n(5),
                xls: n(5),
                image: n(9),
                pdf: n(12),
                docx: ""
            },
            u = c[r];
            if ("function" != typeof u) throw new Error("the supported types are: json, txt, csv, xml, doc, xls, image, pdf");
            if ("image" === r || "pdf" === r) u(i, e);
            else {
                var f = u(i, a, r);
                n(2).saveAs(new Blob([f], {
                    type: s[r]
                }), e + "." + r)
            }
        }
    },
    function(t, e) {
        e.getText = function(t) {
            var e = t.textContent || t.innerText;
            return null == e ? "": e.replace(/^\s*(.*?)\s+$/, "$1")
        },
        e.template = function(t, e) {
            return t.replace(/{{(\w+)}}/g,
            function(t, n) {
                return e[n]
            })
        }
    },
    function(t, e, n) {
        var r, o, i = i ||
        function(t) {
            "use strict";
            if ("undefined" == typeof navigator || !/MSIE [1-9]\./.test(navigator.userAgent)) {
                var e = t.document,
                n = function() {
                    return t.URL || t.webkitURL || t
                },
                r = e.createElementNS("http://www.w3.org/1999/xhtml", "a"),
                o = "download" in r,
                i = function(t) {
                    var e = new MouseEvent("click");
                    t.dispatchEvent(e)
                },
                a = /Version\/[\d\.]+.*Safari/.test(navigator.userAgent),
                s = t.webkitRequestFileSystem,
                c = t.requestFileSystem || s || t.mozRequestFileSystem,
                u = function(e) { (t.setImmediate || t.setTimeout)(function() {
                        throw e
                    },
                    0)
                },
                f = "application/octet-stream",
                l = 0,
                d = 4e4,
                h = function(t) {
                    var e = function() {
                        "string" == typeof t ? n().revokeObjectURL(t) : t.remove()
                    };
                    setTimeout(e, d)
                },
                p = function(t, e, n) {
                    e = [].concat(e);
                    for (var r = e.length; r--;) {
                        var o = t["on" + e[r]];
                        if ("function" == typeof o) try {
                            o.call(t, n || t)
                        } catch(i) {
                            u(i)
                        }
                    }
                },
                g = function(t) {
                    return /^\s*(?:text\/\S*|application\/xml|\S*\/\S*\+xml)\s*;.*charset\s*=\s*utf-8/i.test(t.type) ? new Blob([String.fromCharCode(65279), t], {
                        type: t.type
                    }) : t
                },
                v = function(e, u, d) {
                    d || (e = g(e));
                    var v, y, b, m = this,
                    w = e.type,
                    C = !1,
                    A = function() {
                        p(m, "writestart progress write writeend".split(" "))
                    },
                    x = function() {
                        if (y && a && "undefined" != typeof FileReader) {
                            var r = new FileReader;
                            return r.onloadend = function() {
                                var t = r.result;
                                y.location.href = "data:attachment/file" + t.slice(t.search(/[,;]/)),
                                m.readyState = m.DONE,
                                A()
                            },
                            r.readAsDataURL(e),
                            void(m.readyState = m.INIT)
                        }
                        if (!C && v || (v = n().createObjectURL(e)), y) y.location.href = v;
                        else {
                            var o = t.open(v, "_blank");
                            void 0 === o && a && (t.location.href = v)
                        }
                        m.readyState = m.DONE,
                        A(),
                        h(v)
                    },
                    E = function(t) {
                        return function() {
                            return m.readyState !== m.DONE ? t.apply(this, arguments) : void 0
                        }
                    },
                    S = {
                        create: !0,
                        exclusive: !1
                    };
                    return m.readyState = m.INIT,
                    u || (u = "download"),
                    o ? (v = n().createObjectURL(e), void setTimeout(function() {
                        r.href = v,
                        r.download = u,
                        i(r),
                        A(),
                        h(v),
                        m.readyState = m.DONE
                    })) : (t.chrome && w && w !== f && (b = e.slice || e.webkitSlice, e = b.call(e, 0, e.size, f), C = !0), s && "download" !== u && (u += ".download"), (w === f || s) && (y = t), c ? (l += e.size, void c(t.TEMPORARY, l, E(function(t) {
                        t.root.getDirectory("saved", S, E(function(t) {
                            var n = function() {
                                t.getFile(u, S, E(function(t) {
                                    t.createWriter(E(function(n) {
                                        n.onwriteend = function(e) {
                                            y.location.href = t.toURL(),
                                            m.readyState = m.DONE,
                                            p(m, "writeend", e),
                                            h(t)
                                        },
                                        n.onerror = function() {
                                            var t = n.error;
                                            t.code !== t.ABORT_ERR && x()
                                        },
                                        "writestart progress write abort".split(" ").forEach(function(t) {
                                            n["on" + t] = m["on" + t]
                                        }),
                                        n.write(e),
                                        m.abort = function() {
                                            n.abort(),
                                            m.readyState = m.DONE
                                        },
                                        m.readyState = m.WRITING
                                    }), x)
                                }), x)
                            };
                            t.getFile(u, {
                                create: !1
                            },
                            E(function(t) {
                                t.remove(),
                                n()
                            }), E(function(t) {
                                t.code === t.NOT_FOUND_ERR ? n() : x()
                            }))
                        }), x)
                    }), x)) : void x())
                },
                y = v.prototype,
                b = function(t, e, n) {
                    return new v(t, e, n)
                };
                return "undefined" != typeof navigator && navigator.msSaveOrOpenBlob ?
                function(t, e, n) {
                    return n || (t = g(t)),
                    navigator.msSaveOrOpenBlob(t, e || "download")
                }: (y.abort = function() {
                    var t = this;
                    t.readyState = t.DONE,
                    p(t, "abort")
                },
                y.readyState = y.INIT = 0, y.WRITING = 1, y.DONE = 2, y.error = y.onwritestart = y.onprogress = y.onwrite = y.onabort = y.onerror = y.onwriteend = null, b)
            }
        } ("undefined" != typeof self && self || "undefined" != typeof window && window || this.content);
        "undefined" != typeof t && t.exports ? t.exports.saveAs = i: null !== n(7) && null !== n(8) && (r = [], o = function() {
            return i
        }.apply(e, r), !(void 0 !== o && (t.exports = o)))
    },
    function(t, e, n) {
        var r = n(1),
        o = function(t) {
            var e = t,
            n = -1 !== t.indexOf(",") || -1 !== t.indexOf("\r") || -1 !== t.indexOf("\n"),
            r = -1 !== t.indexOf('"');
            return r && (e = e.replace(/"/g, '""')),
            (n || r) && (e = '"' + e + '"'),
            e
        };
        t.exports = function(t) {
            for (var e, n = "\ufeff",
            i = 0; e = t.rows[i]; i++) {
                for (var a, s = 0; a = e.cells[s]; s++) n = n + (s ? ",": "") + o(r.getText(a));
                n += "\r\n"
            }
            return n
        }
    },
    function(t, e, n) {
        var r = n(1),
        o = function(t) {
            function e(t) {
                return ("0" + parseInt(t).toString(16)).slice( - 2)
            }
            return "transparent" === t.toLowerCase() || "rgba(0, 0, 0, 0)" === t ? "#fff": -1 === t.search("rgb") ? t: (t = t.match(/^rgba?\((\d+),\s*(\d+),\s*(\d+)(?:,\s*(\d+))?\)$/), "#" + e(t[1]) + e(t[2]) + e(t[3]))
        },
        i = function(t, e) {
            var n = new Image,
            r = "data:image/svg+xml;utf8," + encodeURIComponent(t),
            o = function() {
                n.onload = null,
                n.onerror = null
            };
            n.onload = function() {
                o(),
                e(n)
            },
            n.src = r
        };
        t.exports = function(t, e, n) {
            var a = t.offsetWidth,
            s = t.offsetHeight + 8,
            c = document.createElement("canvas"),
            u = c.getContext("2d");
            c.width = a,
            c.height = s;
            var f = new DOMParser,
            l = f.parseFromString(t.outerHTML, "text/html"),
            d = (new XMLSerializer).serializeToString(l),
            h = '<svg xmlns="http://www.w3.org/2000/svg" width="{{width}}" height="{{height}}"><style scoped="">html::-webkit-scrollbar { display: none; }</style><foreignObject x="0" y="0" width="{{width}}" height="{{height}}" style="float: left;" externalResourcesRequired="true">{{xhtml}}</foreignObject></svg>',
            p = r.template(h, {
                width: a,
                height: s,
                xhtml: d
            });
            "function" == typeof e && (n = e, e = null),
            i(p,
            function(r) {
                e && "png" !== e.format && (u.fillStyle = o(t.style.backgroundColor || getComputedStyle(t, null).getPropertyValue("background-color")), u.fillRect(0, 0, r.width, r.height)),
                u.drawImage(r, 0, 0),
                n(c)
            })
        }
    },
    function(t, e, n) {
        var r = n(1);
        t.exports = function(t, e, n) {
            var o = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:{{type}}" xmlns="http://www.w3.org/TR/REC-html40">';
            o += '<head><meta charset="{{charset}}" /><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>',
            o += "表格1</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]-->",
            o += "</head><body><table>{{table}}</table></body></html>";
            for (var i, a = "",
            s = [["<thead><tr>", "</tr></thead>"], ["<tbody><tr>", "</tr></tbody>"], ["<tr>", "</tr>"]], c = [["<th>", "</th>"], ["<td>", "</td>"]], u = +!t.tHead, f = 1 - u, l = 0; i = t.rows[l]; l++) {
                u = l > f ? 2 : u,
                a += s[u][0];
                for (var d, h = 0; d = i.cells[h]; h++) a += c[ + !!u][0] + r.getText(d) + c[ + !!u][1];
                a += s[u][1],
                u++
            }
            return r.template(o, {
                charset: e,
                type: n,
                table: a
            })
        }
    },
    function(t, e, n) {
        var r; !
        function(o) {
            "use strict";
            var i = o.HTMLCanvasElement && o.HTMLCanvasElement.prototype,
            a = o.Blob &&
            function() {
                try {
                    return Boolean(new Blob)
                } catch(t) {
                    return ! 1
                }
            } (),
            s = a && o.Uint8Array &&
            function() {
                try {
                    return 100 === new Blob([new Uint8Array(100)]).size
                } catch(t) {
                    return ! 1
                }
            } (),
            c = o.BlobBuilder || o.WebKitBlobBuilder || o.MozBlobBuilder || o.MSBlobBuilder,
            u = /^data:((.*?)(;charset=.*?)?)(;base64)?,/,
            f = (a || c) && o.atob && o.ArrayBuffer && o.Uint8Array &&
            function(t) {
                var e, n, r, o, i, f, l, d, h;
                if (e = t.match(u), !e) throw new Error("invalid data URI");
                for (n = e[2] ? e[1] : "text/plain" + (e[3] || ";charset=US-ASCII"), r = !!e[4], o = t.slice(e[0].length), i = r ? atob(o) : decodeURIComponent(o), f = new ArrayBuffer(i.length), l = new Uint8Array(f), d = 0; d < i.length; d += 1) l[d] = i.charCodeAt(d);
                return a ? new Blob([s ? l: f], {
                    type: n
                }) : (h = new c, h.append(f), h.getBlob(n))
            };
            o.HTMLCanvasElement && !i.toBlob && (i.mozGetAsFile ? i.toBlob = function(t, e, n) {
                t(n && i.toDataURL && f ? f(this.toDataURL(e, n)) : this.mozGetAsFile("blob", e))
            }: i.toDataURL && f && (i.toBlob = function(t, e, n) {
                t(f(this.toDataURL(e, n)))
            })),
            r = function() {
                return f
            }.call(e, n, e, t),
            !(void 0 !== r && (t.exports = r))
        } (window)
    },
    function(t, e) {
        t.exports = function() {
            throw new Error("define cannot be used indirect")
        }
    },
    function(t, e) { (function(e) {
            t.exports = e
        }).call(e, {})
    },
    function(t, e, n) {
        var r = n(2).saveAs;
        n(6);
        var o = n(4);
        t.exports = function(t, e) {
            o(t,
            function(t) {
                t.toBlob(function(t) {
                    r(t, e + ".png")
                })
            })
        }
    },
    function(t, e, n) {
        var r = n(1);
        t.exports = function(t) {
            var e = [],
            n = [];
            if (t.tHead) for (var o, i = 0; o = t.tHead.rows[0].cells[i]; i++) e.push(r.getText(o));
            if (t.tBodies) for (var a, s = 0; a = t.tBodies[s]; s++) for (var c, u = 0; c = a.rows[u]; u++) {
                var f = n.length;
                n[f] = [];
                for (var l, d = 0; l = c.cells[d]; d++) n[f].push(r.getText(l))
            }
            return JSON.stringify({
                header: e,
                data: n
            })
        }
    },
    function(t, e, n) {
        var r, o = function(o) {
            "use strict";
            function i(t) {
                var e = {};
                this.subscribe = function(t, n, r) {
                    if ("function" != typeof n) return ! 1;
                    e.hasOwnProperty(t) || (e[t] = {});
                    var o = Math.random().toString(35);
                    return e[t][o] = [n, !!r],
                    o
                },
                this.unsubscribe = function(t) {
                    for (var n in e) if (e[n][t]) return delete e[n][t],
                    !0;
                    return ! 1
                },
                this.publish = function(n) {
                    if (e.hasOwnProperty(n)) {
                        var r = Array.prototype.slice.call(arguments, 1),
                        i = [];
                        for (var a in e[n]) {
                            var s = e[n][a];
                            try {
                                s[0].apply(t, r)
                            } catch(c) {
                                o.console && console.error("jsPDF PubSub Error", c.message, c)
                            }
                            s[1] && i.push(a)
                        }
                        i.length && i.forEach(this.unsubscribe)
                    }
                }
            }
            function a(t, e, n, r) {
                var u = {};
                "object" == typeof t && (u = t, t = u.orientation, e = u.unit || e, n = u.format || n, r = u.compress || u.compressPdf || r),
                e = e || "mm",
                n = n || "a4",
                t = ("" + (t || "P")).toLowerCase();
                var f, l, d, h, p, g, v, y, b, m = !!r && "function" == typeof Uint8Array,
                w = u.textColor || "0 g",
                C = u.drawColor || "0 G",
                A = u.fontSize || 16,
                x = u.lineHeight || 1.15,
                E = u.lineWidth || .200025,
                S = 2,
                I = !1,
                D = [],
                j = {},
                O = {},
                P = 0,
                T = [],
                R = [],
                B = [],
                F = [],
                L = [],
                U = 0,
                k = 0,
                N = 0,
                M = {
                    title: "",
                    subject: "",
                    author: "",
                    keywords: "",
                    creator: ""
                },
                _ = {},
                G = new i(_),
                z = function(t) {
                    return t.toFixed(2)
                },
                W = function(t) {
                    return t.toFixed(3)
                },
                H = function(t) {
                    return ("0" + parseInt(t)).slice( - 2)
                },
                J = function(t) {
                    I ? T[h].push(t) : (N += t.length + 1, F.push(t))
                },
                V = function() {
                    return S++,
                    D[S] = N,
                    J(S + " 0 obj"),
                    S
                },
                X = function() {
                    var t = 2 * T.length + 1;
                    t += L.length;
                    var e = {
                        objId: t,
                        content: ""
                    };
                    return L.push(e),
                    e
                },
                q = function() {
                    return S++,
                    D[S] = function() {
                        return N
                    },
                    S
                },
                Y = function(t) {
                    D[t] = N
                },
                K = function(t) {
                    J("stream"),
                    J(t),
                    J("endstream")
                },
                Z = function() {
                    var t, e, n, r, i, s, c, u, f, d = [];
                    for (c = o.adler32cs || a.adler32cs, m && "undefined" == typeof c && (m = !1), t = 1; P >= t; t++) {
                        if (d.push(V()), u = (p = B[t].width) * l, f = (g = B[t].height) * l, J("<</Type /Page"), J("/Parent 1 0 R"), J("/Resources 2 0 R"), J("/MediaBox [0 0 " + z(u) + " " + z(f) + "]"), G.publish("putPage", {
                            pageNumber: t,
                            page: T[t]
                        }), J("/Contents " + (S + 1) + " 0 R"), J(">>"), J("endobj"), e = T[t].join("\n"), V(), m) {
                            for (n = [], r = e.length; r--;) n[r] = e.charCodeAt(r);
                            s = c.from(e),
                            i = new Deflater(6),
                            i.append(new Uint8Array(n)),
                            e = i.flush(),
                            n = new Uint8Array(e.length + 6),
                            n.set(new Uint8Array([120, 156])),
                            n.set(e, 2),
                            n.set(new Uint8Array([255 & s, s >> 8 & 255, s >> 16 & 255, s >> 24 & 255]), e.length + 2),
                            e = String.fromCharCode.apply(null, n),
                            J("<</Length " + e.length + " /Filter [/FlateDecode]>>")
                        } else J("<</Length " + e.length + ">>");
                        K(e),
                        J("endobj")
                    }
                    D[1] = N,
                    J("1 0 obj"),
                    J("<</Type /Pages");
                    var h = "/Kids [";
                    for (r = 0; P > r; r++) h += d[r] + " 0 R ";
                    J(h + "]"),
                    J("/Count " + P),
                    J(">>"),
                    J("endobj"),
                    G.publish("postPutPages")
                },
                $ = function(t) {
                    t.objectNumber = V(),
                    J("<</BaseFont/" + t.PostScriptName + "/Type/Font"),
                    "string" == typeof t.encoding && J("/Encoding/" + t.encoding),
                    J("/Subtype/Type1>>"),
                    J("endobj")
                },
                Q = function() {
                    for (var t in j) j.hasOwnProperty(t) && $(j[t])
                },
                tt = function() {
                    G.publish("putXobjectDict")
                },
                et = function() {
                    J("/ProcSet [/PDF /Text /ImageB /ImageC /ImageI]"),
                    J("/Font <<");
                    for (var t in j) j.hasOwnProperty(t) && J("/" + t + " " + j[t].objectNumber + " 0 R");
                    J(">>"),
                    J("/XObject <<"),
                    tt(),
                    J(">>")
                },
                nt = function() {
                    Q(),
                    G.publish("putResources"),
                    D[2] = N,
                    J("2 0 obj"),
                    J("<<"),
                    et(),
                    J(">>"),
                    J("endobj"),
                    G.publish("postPutResources")
                },
                rt = function() {
                    G.publish("putAdditionalObjects");
                    for (var t = 0; t < L.length; t++) {
                        var e = L[t];
                        D[e.objId] = N,
                        J(e.objId + " 0 obj"),
                        J(e.content),
                        J("endobj")
                    }
                    S += L.length,
                    G.publish("postPutAdditionalObjects")
                },
                ot = function(t, e, n) {
                    O.hasOwnProperty(e) || (O[e] = {}),
                    O[e][n] = t
                },
                it = function(t, e, n, r) {
                    var o = "F" + (Object.keys(j).length + 1).toString(10),
                    i = j[o] = {
                        id: o,
                        PostScriptName: t,
                        fontName: e,
                        fontStyle: n,
                        encoding: r,
                        metadata: {}
                    };
                    return ot(o, e, n),
                    G.publish("addFont", i),
                    o
                },
                at = function() {
                    for (var t = "helvetica",
                    e = "times",
                    n = "courier",
                    r = "normal",
                    o = "bold",
                    i = "italic",
                    a = "bolditalic",
                    s = "StandardEncoding",
                    c = "zapfdingbats",
                    u = [["Helvetica", t, r], ["Helvetica-Bold", t, o], ["Helvetica-Oblique", t, i], ["Helvetica-BoldOblique", t, a], ["Courier", n, r], ["Courier-Bold", n, o], ["Courier-Oblique", n, i], ["Courier-BoldOblique", n, a], ["Times-Roman", e, r], ["Times-Bold", e, o], ["Times-Italic", e, i], ["Times-BoldItalic", e, a], ["ZapfDingbats", c]], f = 0, l = u.length; l > f; f++) {
                        var d = it(u[f][0], u[f][1], u[f][2], s),
                        h = u[f][0].split("-");
                        ot(d, h[0], h[1] || "")
                    }
                    G.publish("addFonts", {
                        fonts: j,
                        dictionary: O
                    })
                },
                st = function(t) {
                    return t.foo = function() {
                        try {
                            return t.apply(this, arguments)
                        } catch(e) {
                            var n = e.stack || "";~n.indexOf(" at ") && (n = n.split(" at ")[1]);
                            var r = "Error in function " + n.split("\n")[0].split("<")[0] + ": " + e.message;
                            if (!o.console) throw new Error(r);
                            o.console.error(r, e),
                            o.alert && alert(r)
                        }
                    },
                    t.foo.bar = t,
                    t.foo
                },
                ct = function(t, e) {
                    var n, r, o, i, a, s, c, u, l;
                    if (e = e || {},
                    o = e.sourceEncoding || "Unicode", a = e.outputEncoding, (e.autoencode || a) && j[f].metadata && j[f].metadata[o] && j[f].metadata[o].encoding && (i = j[f].metadata[o].encoding, !a && j[f].encoding && (a = j[f].encoding), !a && i.codePages && (a = i.codePages[0]), "string" == typeof a && (a = i[a]), a)) {
                        for (c = !1, s = [], n = 0, r = t.length; r > n; n++) u = a[t.charCodeAt(n)],
                        u ? s.push(String.fromCharCode(u)) : s.push(t[n]),
                        s[n].charCodeAt(0) >> 8 && (c = !0);
                        t = s.join("")
                    }
                    for (n = t.length; void 0 === c && 0 !== n;) t.charCodeAt(n - 1) >> 8 && (c = !0),
                    n--;
                    if (!c) return t;
                    for (s = e.noBOM ? [] : [254, 255], n = 0, r = t.length; r > n; n++) {
                        if (u = t.charCodeAt(n), l = u >> 8, l >> 8) throw new Error("Character at position " + n + " of string '" + t + "' exceeds 16bits. Cannot be encoded into UCS-2 BE");
                        s.push(l),
                        s.push(u - (l << 8))
                    }
                    return String.fromCharCode.apply(void 0, s)
                },
                ut = function(t, e) {
                    return ct(t, e).replace(/\\/g, "\\\\").replace(/\(/g, "\\(").replace(/\)/g, "\\)")
                },
                ft = function() {
                    J("/Producer (jsPDF " + a.version + ")");
                    for (var t in M) M.hasOwnProperty(t) && M[t] && J("/" + t.substr(0, 1).toUpperCase() + t.substr(1) + " (" + ut(M[t]) + ")");
                    var e = new Date,
                    n = e.getTimezoneOffset(),
                    r = 0 > n ? "+": "-",
                    o = Math.floor(Math.abs(n / 60)),
                    i = Math.abs(n % 60),
                    s = [r, H(o), "'", H(i), "'"].join("");
                    J(["/CreationDate (D:", e.getFullYear(), H(e.getMonth() + 1), H(e.getDate()), H(e.getHours()), H(e.getMinutes()), H(e.getSeconds()), s, ")"].join(""))
                },
                lt = function() {
                    switch (J("/Type /Catalog"), J("/Pages 1 0 R"), y || (y = "fullwidth"), y) {
                    case "fullwidth":
                        J("/OpenAction [3 0 R /FitH null]");
                        break;
                    case "fullheight":
                        J("/OpenAction [3 0 R /FitV null]");
                        break;
                    case "fullpage":
                        J("/OpenAction [3 0 R /Fit]");
                        break;
                    case "original":
                        J("/OpenAction [3 0 R /XYZ null null 1]");
                        break;
                    default:
                        var t = "" + y;
                        "%" === t.substr(t.length - 1) && (y = parseInt(y) / 100),
                        "number" == typeof y && J("/OpenAction [3 0 R /XYZ null null " + z(y) + "]")
                    }
                    switch (b || (b = "continuous"), b) {
                    case "continuous":
                        J("/PageLayout /OneColumn");
                        break;
                    case "single":
                        J("/PageLayout /SinglePage");
                        break;
                    case "two":
                    case "twoleft":
                        J("/PageLayout /TwoColumnLeft");
                        break;
                    case "tworight":
                        J("/PageLayout /TwoColumnRight")
                    }
                    v && J("/PageMode /" + v),
                    G.publish("putCatalog")
                },
                dt = function() {
                    J("/Size " + (S + 1)),
                    J("/Root " + S + " 0 R"),
                    J("/Info " + (S - 1) + " 0 R")
                },
                ht = function(t, e) {
                    var n = "string" == typeof e && e.toLowerCase();
                    if ("string" == typeof t) {
                        var r = t.toLowerCase();
                        c.hasOwnProperty(r) && (t = c[r][0] / l, e = c[r][1] / l)
                    }
                    if (Array.isArray(t) && (e = t[1], t = t[0]), n) {
                        switch (n.substr(0, 1)) {
                        case "l":
                            e > t && (n = "s");
                            break;
                        case "p":
                            t > e && (n = "s")
                        }
                        "s" === n && (d = t, t = e, e = d)
                    }
                    I = !0,
                    T[++P] = [],
                    B[P] = {
                        width: Number(t) || p,
                        height: Number(e) || g
                    },
                    R[P] = {},
                    vt(P)
                },
                pt = function() {
                    ht.apply(this, arguments),
                    J(z(E * l) + " w"),
                    J(C),
                    0 !== U && J(U + " J"),
                    0 !== k && J(k + " j"),
                    G.publish("addPage", {
                        pageNumber: P
                    })
                },
                gt = function(t) {
                    t > 0 && P >= t && (T.splice(t, 1), B.splice(t, 1), P--, h > P && (h = P), this.setPage(h))
                },
                vt = function(t) {
                    t > 0 && P >= t && (h = t, p = B[t].width, g = B[t].height)
                },
                yt = function(t, e) {
                    var n;
                    switch (t = void 0 !== t ? t: j[f].fontName, e = void 0 !== e ? e: j[f].fontStyle, void 0 !== t && (t = t.toLowerCase()), t) {
                    case "sans-serif":
                    case "verdana":
                    case "arial":
                    case "helvetica":
                        t = "helvetica";
                        break;
                    case "fixed":
                    case "monospace":
                    case "terminal":
                    case "courier":
                        t = "courier";
                        break;
                    case "serif":
                    case "cursive":
                    case "fantasy":
                    default:
                        t = "times"
                    }
                    try {
                        n = O[t][e]
                    } catch(r) {}
                    return n || (n = O.times[e], null == n && (n = O.times.normal)),
                    n
                },
                bt = function() {
                    I = !1,
                    S = 2,
                    F = [],
                    D = [],
                    L = [],
                    G.publish("buildDocument"),
                    J("%PDF-" + s),
                    Z(),
                    rt(),
                    nt(),
                    V(),
                    J("<<"),
                    ft(),
                    J(">>"),
                    J("endobj"),
                    V(),
                    J("<<"),
                    lt(),
                    J(">>"),
                    J("endobj");
                    var t, e = N,
                    n = "0000000000";
                    for (J("xref"), J("0 " + (S + 1)), J(n + " 65535 f "), t = 1; S >= t; t++) {
                        var r = D[t];
                        J("function" == typeof r ? (n + D[t]()).slice( - 10) + " 00000 n ": (n + D[t]).slice( - 10) + " 00000 n ")
                    }
                    return J("trailer"),
                    J("<<"),
                    dt(),
                    J(">>"),
                    J("startxref"),
                    J(e),
                    J("%%EOF"),
                    I = !0,
                    F.join("\n")
                },
                mt = function(t) {
                    var e = "S";
                    return "F" === t ? e = "f": "FD" === t || "DF" === t ? e = "B": "f" !== t && "f*" !== t && "B" !== t && "B*" !== t || (e = t),
                    e
                },
                wt = function() {
                    for (var t = bt(), e = t.length, n = new ArrayBuffer(e), r = new Uint8Array(n); e--;) r[e] = t.charCodeAt(e);
                    return n
                },
                Ct = function() {
                    return new Blob([wt()], {
                        type: "application/pdf"
                    })
                },
                At = st(function(t, e) {
                    var n = "dataur" === ("" + t).substr(0, 6) ? "data:application/pdf;base64," + btoa(bt()) : 0;
                    switch (t) {
                    case void 0:
                        return bt();
                    case "save":
                        if (navigator.getUserMedia && (void 0 === o.URL || void 0 === o.URL.createObjectURL)) return _.output("dataurlnewwindow");
                        saveAs(Ct(), e),
                        "function" == typeof saveAs.unload && o.setTimeout && setTimeout(saveAs.unload, 911);
                        break;
                    case "arraybuffer":
                        return wt();
                    case "blob":
                        return Ct();
                    case "bloburi":
                    case "bloburl":
                        return o.URL && o.URL.createObjectURL(Ct()) || void 0;
                    case "datauristring":
                    case "dataurlstring":
                        return n;
                    case "dataurlnewwindow":
                        var r = o.open(n);
                        if (r || "undefined" == typeof safari) return r;
                    case "datauri":
                    case "dataurl":
                        return o.document.location.href = n;
                    default:
                        throw new Error('Output type "' + t + '" is not supported.')
                    }
                });
                switch (e) {
                case "pt":
                    l = 1;
                    break;
                case "mm":
                    l = 72 / 25.4000508;
                    break;
                case "cm":
                    l = 72 / 2.54000508;
                    break;
                case "in":
                    l = 72;
                    break;
                case "px":
                    l = 96 / 72;
                    break;
                case "pc":
                    l = 12;
                    break;
                case "em":
                    l = 12;
                    break;
                case "ex":
                    l = 6;
                    break;
                default:
                    throw "Invalid unit: " + e
                }
                _.internal = {
                    pdfEscape: ut,
                    getStyle: mt,
                    getFont: function() {
                        return j[yt.apply(_, arguments)]
                    },
                    getFontSize: function() {
                        return A
                    },
                    getLineHeight: function() {
                        return A * x
                    },
                    write: function(t) {
                        J(1 === arguments.length ? t: Array.prototype.join.call(arguments, " "))
                    },
                    getCoordinateString: function(t) {
                        return z(t * l)
                    },
                    getVerticalCoordinateString: function(t) {
                        return z((g - t) * l)
                    },
                    collections: {},
                    newObject: V,
                    newAdditionalObject: X,
                    newObjectDeferred: q,
                    newObjectDeferredBegin: Y,
                    putStream: K,
                    events: G,
                    scaleFactor: l,
                    pageSize: {
                        get width() {
                            return p
                        },
                        get height() {
                            return g
                        }
                    },
                    output: function(t, e) {
                        return At(t, e)
                    },
                    getNumberOfPages: function() {
                        return T.length - 1
                    },
                    pages: T,
                    out: J,
                    f2: z,
                    getPageInfo: function(t) {
                        var e = 2 * (t - 1) + 3;
                        return {
                            objId: e,
                            pageNumber: t,
                            pageContext: R[t]
                        }
                    },
                    getCurrentPageInfo: function() {
                        var t = 2 * (h - 1) + 3;
                        return {
                            objId: t,
                            pageNumber: h,
                            pageContext: R[h]
                        }
                    },
                    getPDFVersion: function() {
                        return s
                    }
                },
                _.addPage = function() {
                    return pt.apply(this, arguments),
                    this
                },
                _.setPage = function() {
                    return vt.apply(this, arguments),
                    this
                },
                _.insertPage = function(t) {
                    return this.addPage(),
                    this.movePage(h, t),
                    this
                },
                _.movePage = function(t, e) {
                    if (t > e) {
                        for (var n = T[t], r = B[t], o = R[t], i = t; i > e; i--) T[i] = T[i - 1],
                        B[i] = B[i - 1],
                        R[i] = R[i - 1];
                        T[e] = n,
                        B[e] = r,
                        R[e] = o,
                        this.setPage(e)
                    } else if (e > t) {
                        for (var n = T[t], r = B[t], o = R[t], i = t; e > i; i++) T[i] = T[i + 1],
                        B[i] = B[i + 1],
                        R[i] = R[i + 1];
                        T[e] = n,
                        B[e] = r,
                        R[e] = o,
                        this.setPage(e)
                    }
                    return this
                },
                _.deletePage = function() {
                    return gt.apply(this, arguments),
                    this
                },
                _.setDisplayMode = function(t, e, n) {
                    return y = t,
                    b = e,
                    v = n,
                    this
                },
                _.text = function(t, e, n, r, o, i) {
                    function a(t) {
                        return t = t.split("	").join(Array(u.TabLen || 9).join(" ")),
                        ut(t, r)
                    }
                    "number" == typeof t && (d = n, n = e, e = t, t = d),
                    "string" == typeof t && (t = t.match(/[\n\r]/) ? t.split(/\r\n|\r|\n/g) : [t]),
                    "string" == typeof o && (i = o, o = null),
                    "string" == typeof r && (i = r, r = null),
                    "number" == typeof r && (o = r, r = null);
                    var s, c = "",
                    h = "Td";
                    if (o) {
                        o *= Math.PI / 180;
                        var p = Math.cos(o),
                        v = Math.sin(o);
                        c = [z(p), z(v), z( - 1 * v), z(p), ""].join(" "),
                        h = "Tm"
                    }
                    r = r || {},
                    "noBOM" in r || (r.noBOM = !0),
                    "autoencode" in r || (r.autoencode = !0);
                    var y = "",
                    b = this.internal.getCurrentPageInfo().pageContext;
                    if (!0 === r.stroke ? b.lastTextWasStroke !== !0 && (y = "1 Tr\n", b.lastTextWasStroke = !0) : (b.lastTextWasStroke && (y = "0 Tr\n"), b.lastTextWasStroke = !1), "undefined" == typeof this._runningPageHeight && (this._runningPageHeight = 0), "string" == typeof t) t = a(t);
                    else {
                        if ("[object Array]" !== Object.prototype.toString.call(t)) throw new Error('Type of text must be string or Array. "' + t + '" is not recognized.');
                        for (var m = t.concat(), C = [], E = m.length; E--;) C.push(a(m.shift()));
                        var S = Math.ceil((g - n - this._runningPageHeight) * l / (A * x));
                        if (S >= 0 && S < C.length + 1, i) {
                            var I, D, j, O = A * x,
                            P = t.map(function(t) {
                                return this.getStringUnitWidth(t) * A / l
                            },
                            this);
                            if (j = Math.max.apply(Math, P), "center" === i) I = e - j / 2,
                            e -= P[0] / 2;
                            else {
                                if ("right" !== i) throw new Error('Unrecognized alignment option, use "center" or "right".');
                                I = e - j,
                                e -= P[0]
                            }
                            D = e,
                            t = C[0] + ") Tj\n";
                            for (var T = 1,
                            E = C.length; E > T; T++) {
                                var R = j - P[T];
                                "center" === i && (R /= 2),
                                t += I - D + R + " -" + O + " Td (" + C[T],
                                D = I + R,
                                E - 1 > T && (t += ") Tj\n")
                            }
                        } else t = C.join(") Tj\nT* (")
                    }
                    var B;
                    return s || (B = z((g - n) * l)),
                    J("BT\n/" + f + " " + A + " Tf\n" + A * x + " TL\n" + y + w + "\n" + c + z(e * l) + " " + B + " " + h + "\n(" + t + ") Tj\nET"),
                    s && this.text(s, e, n),
                    this
                },
                _.lstext = function(t, e, n, r) {
                    for (var o = 0,
                    i = t.length; i > o; o++, e += r) this.text(t[o], e, n)
                },
                _.line = function(t, e, n, r) {
                    return this.lines([[n - t, r - e]], t, e)
                },
                _.clip = function() {
                    J("W"),
                    J("S")
                },
                _.lines = function(t, e, n, r, o, i) {
                    var a, s, c, u, f, h, p, v, y, b, m;
                    for ("number" == typeof t && (d = n, n = e, e = t, t = d), r = r || [1, 1], J(W(e * l) + " " + W((g - n) * l) + " m "), a = r[0], s = r[1], u = t.length, b = e, m = n, c = 0; u > c; c++) f = t[c],
                    2 === f.length ? (b = f[0] * a + b, m = f[1] * s + m, J(W(b * l) + " " + W((g - m) * l) + " l")) : (h = f[0] * a + b, p = f[1] * s + m, v = f[2] * a + b, y = f[3] * s + m, b = f[4] * a + b, m = f[5] * s + m, J(W(h * l) + " " + W((g - p) * l) + " " + W(v * l) + " " + W((g - y) * l) + " " + W(b * l) + " " + W((g - m) * l) + " c"));
                    return i && J(" h"),
                    null !== o && J(mt(o)),
                    this
                },
                _.rect = function(t, e, n, r, o) {
                    return J([z(t * l), z((g - e) * l), z(n * l), z( - r * l), "re"].join(" ")),
                    null !== o && J(mt(o)),
                    this
                },
                _.triangle = function(t, e, n, r, o, i, a) {
                    return this.lines([[n - t, r - e], [o - n, i - r], [t - o, e - i]], t, e, [1, 1], a, !0),
                    this
                },
                _.roundedRect = function(t, e, n, r, o, i, a) {
                    var s = 4 / 3 * (Math.SQRT2 - 1);
                    return this.lines([[n - 2 * o, 0], [o * s, 0, o, i - i * s, o, i], [0, r - 2 * i], [0, i * s, -(o * s), i, -o, i], [ - n + 2 * o, 0], [ - (o * s), 0, -o, -(i * s), -o, -i], [0, -r + 2 * i], [0, -(i * s), o * s, -i, o, -i]], t + o, e, [1, 1], a),
                    this
                },
                _.ellipse = function(t, e, n, r, o) {
                    var i = 4 / 3 * (Math.SQRT2 - 1) * n,
                    a = 4 / 3 * (Math.SQRT2 - 1) * r;
                    return J([z((t + n) * l), z((g - e) * l), "m", z((t + n) * l), z((g - (e - a)) * l), z((t + i) * l), z((g - (e - r)) * l), z(t * l), z((g - (e - r)) * l), "c"].join(" ")),
                    J([z((t - i) * l), z((g - (e - r)) * l), z((t - n) * l), z((g - (e - a)) * l), z((t - n) * l), z((g - e) * l), "c"].join(" ")),
                    J([z((t - n) * l), z((g - (e + a)) * l), z((t - i) * l), z((g - (e + r)) * l), z(t * l), z((g - (e + r)) * l), "c"].join(" ")),
                    J([z((t + i) * l), z((g - (e + r)) * l), z((t + n) * l), z((g - (e + a)) * l), z((t + n) * l), z((g - e) * l), "c"].join(" ")),
                    null !== o && J(mt(o)),
                    this
                },
                _.circle = function(t, e, n, r) {
                    return this.ellipse(t, e, n, n, r)
                },
                _.setProperties = function(t) {
                    for (var e in M) M.hasOwnProperty(e) && t[e] && (M[e] = t[e]);
                    return this
                },
                _.setFontSize = function(t) {
                    return A = t,
                    this
                },
                _.setFont = function(t, e) {
                    return f = yt(t, e),
                    this
                },
                _.setFontStyle = _.setFontType = function(t) {
                    return f = yt(void 0, t),
                    this
                },
                _.getFontList = function() {
                    var t, e, n, r = {};
                    for (t in O) if (O.hasOwnProperty(t)) {
                        r[t] = n = [];
                        for (e in O[t]) O[t].hasOwnProperty(e) && n.push(e)
                    }
                    return r
                },
                _.addFont = function(t, e, n) {
                    it(t, e, n, "StandardEncoding")
                },
                _.setLineWidth = function(t) {
                    return J((t * l).toFixed(2) + " w"),
                    this
                },
                _.setDrawColor = function(t, e, n, r) {
                    var o;
                    return o = void 0 === e || void 0 === r && t === e === n ? "string" == typeof t ? t + " G": z(t / 255) + " G": void 0 === r ? "string" == typeof t ? [t, e, n, "RG"].join(" ") : [z(t / 255), z(e / 255), z(n / 255), "RG"].join(" ") : "string" == typeof t ? [t, e, n, r, "K"].join(" ") : [z(t), z(e), z(n), z(r), "K"].join(" "),
                    J(o),
                    this
                },
                _.setFillColor = function(t, e, n, r) {
                    var o;
                    return void 0 === e || void 0 === r && t === e === n ? o = "string" == typeof t ? t + " g": z(t / 255) + " g": void 0 === r || "object" == typeof r ? (o = "string" == typeof t ? [t, e, n, "rg"].join(" ") : [z(t / 255), z(e / 255), z(n / 255), "rg"].join(" "), r && 0 === r.a && (o = ["255", "255", "255", "rg"].join(" "))) : o = "string" == typeof t ? [t, e, n, r, "k"].join(" ") : [z(t), z(e), z(n), z(r), "k"].join(" "),
                    J(o),
                    this
                },
                _.setTextColor = function(t, e, n) {
                    if ("string" == typeof t && /^#[0-9A-Fa-f]{6}$/.test(t)) {
                        var r = parseInt(t.substr(1), 16);
                        t = r >> 16 & 255,
                        e = r >> 8 & 255,
                        n = 255 & r
                    }
                    return w = 0 === t && 0 === e && 0 === n || "undefined" == typeof e ? W(t / 255) + " g": [W(t / 255), W(e / 255), W(n / 255), "rg"].join(" "),
                    this
                },
                _.CapJoinStyles = {
                    0 : 0,
                    butt: 0,
                    but: 0,
                    miter: 0,
                    1 : 1,
                    round: 1,
                    rounded: 1,
                    circle: 1,
                    2 : 2,
                    projecting: 2,
                    project: 2,
                    square: 2,
                    bevel: 2
                },
                _.setLineCap = function(t) {
                    var e = this.CapJoinStyles[t];
                    if (void 0 === e) throw new Error("Line cap style of '" + t + "' is not recognized. See or extend .CapJoinStyles property for valid styles");
                    return U = e,
                    J(e + " J"),
                    this
                },
                _.setLineJoin = function(t) {
                    var e = this.CapJoinStyles[t];
                    if (void 0 === e) throw new Error("Line join style of '" + t + "' is not recognized. See or extend .CapJoinStyles property for valid styles");
                    return k = e,
                    J(e + " j"),
                    this
                },
                _.output = At,
                _.save = function(t) {
                    _.output("save", t)
                };
                for (var xt in a.API) a.API.hasOwnProperty(xt) && ("events" === xt && a.API.events.length ? !
                function(t, e) {
                    var n, r, o;
                    for (o = e.length - 1; - 1 !== o; o--) n = e[o][0],
                    r = e[o][1],
                    t.subscribe.apply(t, [n].concat("function" == typeof r ? [r] : r))
                } (G, a.API.events) : _[xt] = a.API[xt]);
                return at(),
                f = "F1",
                pt(n, t),
                G.publish("initialized"),
                _
            }
            var s = "1.3",
            c = {
                a0: [2383.94, 3370.39],
                a1: [1683.78, 2383.94],
                a2: [1190.55, 1683.78],
                a3: [841.89, 1190.55],
                a4: [595.28, 841.89],
                a5: [419.53, 595.28],
                a6: [297.64, 419.53],
                a7: [209.76, 297.64],
                a8: [147.4, 209.76],
                a9: [104.88, 147.4],
                a10: [73.7, 104.88],
                b0: [2834.65, 4008.19],
                b1: [2004.09, 2834.65],
                b2: [1417.32, 2004.09],
                b3: [1000.63, 1417.32],
                b4: [708.66, 1000.63],
                b5: [498.9, 708.66],
                b6: [354.33, 498.9],
                b7: [249.45, 354.33],
                b8: [175.75, 249.45],
                b9: [124.72, 175.75],
                b10: [87.87, 124.72],
                c0: [2599.37, 3676.54],
                c1: [1836.85, 2599.37],
                c2: [1298.27, 1836.85],
                c3: [918.43, 1298.27],
                c4: [649.13, 918.43],
                c5: [459.21, 649.13],
                c6: [323.15, 459.21],
                c7: [229.61, 323.15],
                c8: [161.57, 229.61],
                c9: [113.39, 161.57],
                c10: [79.37, 113.39],
                dl: [311.81, 623.62],
                letter: [612, 792],
                "government-letter": [576, 756],
                legal: [612, 1008],
                "junior-legal": [576, 360],
                ledger: [1224, 792],
                tabloid: [792, 1224],
                "credit-card": [153, 243]
            };
            return a.API = {
                events: []
            },
            a.version = "1.0.0-trunk",
            r = function() {
                return a
            }.call(e, n, e, t),
            !(void 0 !== r && (t.exports = r)),
            a
        } ("undefined" != typeof self && self || "undefined" != typeof window && window || this); !
        function(t) {
            "use strict";
            var e = "addImage_",
            n = ["jpeg", "jpg", "png"],
            r = function(t) {
                var e = this.internal.newObject(),
                n = this.internal.write,
                o = this.internal.putStream;
                if (t.n = e, n("<</Type /XObject"), n("/Subtype /Image"), n("/Width " + t.w), n("/Height " + t.h), t.cs === this.color_spaces.INDEXED ? n("/ColorSpace [/Indexed /DeviceRGB " + (t.pal.length / 3 - 1) + " " + ("smask" in t ? e + 2 : e + 1) + " 0 R]") : (n("/ColorSpace /" + t.cs), t.cs === this.color_spaces.DEVICE_CMYK && n("/Decode [1 0 1 0 1 0 1 0]")), n("/BitsPerComponent " + t.bpc), "f" in t && n("/Filter /" + t.f), "dp" in t && n("/DecodeParms <<" + t.dp + ">>"), "trns" in t && t.trns.constructor == Array) {
                    for (var i = "",
                    a = 0,
                    s = t.trns.length; s > a; a++) i += t.trns[a] + " " + t.trns[a] + " ";
                    n("/Mask [" + i + "]")
                }
                if ("smask" in t && n("/SMask " + (e + 1) + " 0 R"), n("/Length " + t.data.length + ">>"), o(t.data), n("endobj"), "smask" in t) {
                    var c = "/Predictor 15 /Colors 1 /BitsPerComponent " + t.bpc + " /Columns " + t.w,
                    u = {
                        w: t.w,
                        h: t.h,
                        cs: "DeviceGray",
                        bpc: t.bpc,
                        dp: c,
                        data: t.smask
                    };
                    "f" in t && (u.f = t.f),
                    r.call(this, u)
                }
                t.cs === this.color_spaces.INDEXED && (this.internal.newObject(), n("<< /Length " + t.pal.length + ">>"), o(this.arrayBufferToBinaryString(new Uint8Array(t.pal))), n("endobj"))
            },
            o = function() {
                var t = this.internal.collections[e + "images"];
                for (var n in t) r.call(this, t[n])
            },
            i = function() {
                var t, n = this.internal.collections[e + "images"],
                r = this.internal.write;
                for (var o in n) t = n[o],
                r("/I" + t.i, t.n, "0", "R")
            },
            a = function(e) {
                return e && "string" == typeof e && (e = e.toUpperCase()),
                e in t.image_compression ? e: t.image_compression.NONE
            },
            s = function() {
                var t = this.internal.collections[e + "images"];
                return t || (this.internal.collections[e + "images"] = t = {},
                this.internal.events.subscribe("putResources", o), this.internal.events.subscribe("putXobjectDict", i)),
                t
            },
            c = function(t) {
                var e = 0;
                return t && (e = Object.keys ? Object.keys(t).length: function(t) {
                    var e = 0;
                    for (var n in t) t.hasOwnProperty(n) && e++;
                    return e
                } (t)),
                e
            },
            u = function(t) {
                return "undefined" == typeof t || null === t
            },
            f = function(e) {
                return "string" == typeof e && t.sHashCode(e)
            },
            l = function(t) {
                return - 1 === n.indexOf(t)
            },
            d = function(e) {
                return "function" != typeof t["process" + e.toUpperCase()]
            },
            h = function(t) {
                return "object" == typeof t && 1 === t.nodeType
            },
            p = function(t, e, n) {
                if ("IMG" === t.nodeName && t.hasAttribute("src")) {
                    var r = "" + t.getAttribute("src");
                    if (!n && 0 === r.indexOf("data:image/")) return r; ! e && /\.png(?:[?#].*)?$/i.test(r) && (e = "png")
                }
                if ("CANVAS" === t.nodeName) var o = t;
                else {
                    var o = document.createElement("canvas");
                    o.width = t.clientWidth || t.width,
                    o.height = t.clientHeight || t.height;
                    var i = o.getContext("2d");
                    if (!i) throw "addImage requires canvas to be supported by browser.";
                    if (n) {
                        var a, s, c, u, f, l, d, h, p = Math.PI / 180;
                        "object" == typeof n && (a = n.x, s = n.y, c = n.bg, n = n.angle),
                        h = n * p,
                        u = Math.abs(Math.cos(h)),
                        f = Math.abs(Math.sin(h)),
                        l = o.width,
                        d = o.height,
                        o.width = d * f + l * u,
                        o.height = d * u + l * f,
                        isNaN(a) && (a = o.width / 2),
                        isNaN(s) && (s = o.height / 2),
                        i.clearRect(0, 0, o.width, o.height),
                        i.fillStyle = c || "white",
                        i.fillRect(0, 0, o.width, o.height),
                        i.save(),
                        i.translate(a, s),
                        i.rotate(h),
                        i.drawImage(t, -(l / 2), -(d / 2)),
                        i.rotate( - h),
                        i.translate( - a, -s),
                        i.restore()
                    } else i.drawImage(t, 0, 0, o.width, o.height)
                }
                return o.toDataURL("png" == ("" + e).toLowerCase() ? "image/png": "image/jpeg")
            },
            g = function(t, e) {
                var n;
                if (e) for (var r in e) if (t === e[r].alias) {
                    n = e[r];
                    break
                }
                return n
            },
            v = function(t, e, n) {
                return t || e || (t = -96, e = -96),
                0 > t && (t = -1 * n.w * 72 / t / this.internal.scaleFactor),
                0 > e && (e = -1 * n.h * 72 / e / this.internal.scaleFactor),
                0 === t && (t = e * n.w / n.h),
                0 === e && (e = t * n.h / n.w),
                [t, e]
            },
            y = function(t, e, n, r, o, i, a) {
                var s = v.call(this, n, r, o),
                c = this.internal.getCoordinateString,
                u = this.internal.getVerticalCoordinateString;
                n = s[0],
                r = s[1],
                a[i] = o,
                this.internal.write("q", c(n), "0 0", c(r), c(t), u(e + r), "cm /I" + o.i, "Do Q")
            };
            t.color_spaces = {
                DEVICE_RGB: "DeviceRGB",
                DEVICE_GRAY: "DeviceGray",
                DEVICE_CMYK: "DeviceCMYK",
                CAL_GREY: "CalGray",
                CAL_RGB: "CalRGB",
                LAB: "Lab",
                ICC_BASED: "ICCBased",
                INDEXED: "Indexed",
                PATTERN: "Pattern",
                SEPERATION: "Seperation",
                DEVICE_N: "DeviceN"
            },
            t.decode = {
                DCT_DECODE: "DCTDecode",
                FLATE_DECODE: "FlateDecode",
                LZW_DECODE: "LZWDecode",
                JPX_DECODE: "JPXDecode",
                JBIG2_DECODE: "JBIG2Decode",
                ASCII85_DECODE: "ASCII85Decode",
                ASCII_HEX_DECODE: "ASCIIHexDecode",
                RUN_LENGTH_DECODE: "RunLengthDecode",
                CCITT_FAX_DECODE: "CCITTFaxDecode"
            },
            t.image_compression = {
                NONE: "NONE",
                FAST: "FAST",
                MEDIUM: "MEDIUM",
                SLOW: "SLOW"
            },
            t.sHashCode = function(t) {
                return Array.prototype.reduce && t.split("").reduce(function(t, e) {
                    return t = (t << 5) - t + e.charCodeAt(0),
                    t & t
                },
                0)
            },
            t.isString = function(t) {
                return "string" == typeof t
            },
            t.extractInfoFromBase64DataURI = function(t) {
                return /^data:([\w]+?\/([\w]+?));base64,(.+?)$/g.exec(t)
            },
            t.supportsArrayBuffer = function() {
                return "undefined" != typeof ArrayBuffer && "undefined" != typeof Uint8Array
            },
            t.isArrayBuffer = function(t) {
                return this.supportsArrayBuffer() ? t instanceof ArrayBuffer: !1
            },
            t.isArrayBufferView = function(t) {
                return this.supportsArrayBuffer() ? "undefined" == typeof Uint32Array ? !1 : t instanceof Int8Array || t instanceof Uint8Array || "undefined" != typeof Uint8ClampedArray && t instanceof Uint8ClampedArray || t instanceof Int16Array || t instanceof Uint16Array || t instanceof Int32Array || t instanceof Uint32Array || t instanceof Float32Array || t instanceof Float64Array: !1
            },
            t.binaryStringToUint8Array = function(t) {
                for (var e = t.length,
                n = new Uint8Array(e), r = 0; e > r; r++) n[r] = t.charCodeAt(r);
                return n
            },
            t.arrayBufferToBinaryString = function(t) {
                if ("TextDecoder" in window) {
                    var e = new TextDecoder("ascii");
                    return e.decode(t)
                }
                this.isArrayBuffer(t) && (t = new Uint8Array(t));
                for (var n = "",
                r = t.byteLength,
                o = 0; r > o; o++) n += String.fromCharCode(t[o]);
                return n
            },
            t.arrayBufferToBase64 = function(t) {
                for (var e, n, r, o, i, a = "",
                s = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/",
                c = new Uint8Array(t), u = c.byteLength, f = u % 3, l = u - f, d = 0; l > d; d += 3) i = c[d] << 16 | c[d + 1] << 8 | c[d + 2],
                e = (16515072 & i) >> 18,
                n = (258048 & i) >> 12,
                r = (4032 & i) >> 6,
                o = 63 & i,
                a += s[e] + s[n] + s[r] + s[o];
                return 1 == f ? (i = c[l], e = (252 & i) >> 2, n = (3 & i) << 4, a += s[e] + s[n] + "==") : 2 == f && (i = c[l] << 8 | c[l + 1], e = (64512 & i) >> 10, n = (1008 & i) >> 4, r = (15 & i) << 2, a += s[e] + s[n] + s[r] + "="),
                a
            },
            t.createImageInfo = function(t, e, n, r, o, i, a, s, c, u, f, l) {
                var d = {
                    alias: s,
                    w: e,
                    h: n,
                    cs: r,
                    bpc: o,
                    i: a,
                    data: t
                };
                return i && (d.f = i),
                c && (d.dp = c),
                u && (d.trns = u),
                f && (d.pal = f),
                l && (d.smask = l),
                d
            },
            t.addImage = function(t, e, r, o, i, v, b, m, w) {
                if ("string" != typeof e) {
                    var C = v;
                    v = i,
                    i = o,
                    o = r,
                    r = e,
                    e = C
                }
                if ("object" == typeof t && !h(t) && "imageData" in t) {
                    var A = t;
                    t = A.imageData,
                    e = A.format || e,
                    r = A.x || r || 0,
                    o = A.y || o || 0,
                    i = A.w || i,
                    v = A.h || v,
                    b = A.alias || b,
                    m = A.compression || m,
                    w = A.rotation || A.angle || w
                }
                if (isNaN(r) || isNaN(o)) throw console.error("jsPDF.addImage: Invalid coordinates", arguments),
                new Error("Invalid coordinates passed to jsPDF.addImage");
                var x, E = s.call(this);
                if (! (x = g(t, E))) {
                    var S;
                    if (h(t) && (t = p(t, e, w)), u(b) && (b = f(t)), !(x = g(b, E))) {
                        if (this.isString(t)) {
                            var I = this.extractInfoFromBase64DataURI(t);
                            I ? (e = I[2], t = atob(I[3])) : 137 === t.charCodeAt(0) && 80 === t.charCodeAt(1) && 78 === t.charCodeAt(2) && 71 === t.charCodeAt(3) && (e = "png")
                        }
                        if (e = (e || "JPEG").toLowerCase(), l(e)) throw new Error("addImage currently only supports formats " + n + ", not '" + e + "'");
                        if (d(e)) throw new Error("please ensure that the plugin for '" + e + "' support is added");
                        if (this.supportsArrayBuffer() && (t instanceof Uint8Array || (S = t, t = this.binaryStringToUint8Array(t))), x = this["process" + e.toUpperCase()](t, c(E), b, a(m), S), !x) throw new Error("An unkwown error occurred whilst processing the image")
                    }
                }
                return y.call(this, r, o, i, v, x, x.i, E),
                this
            };
            var b = function(t) {
                var e, n, r;
                if (255 === !t.charCodeAt(0) || 216 === !t.charCodeAt(1) || 255 === !t.charCodeAt(2) || 224 === !t.charCodeAt(3) || !t.charCodeAt(6) === "J".charCodeAt(0) || !t.charCodeAt(7) === "F".charCodeAt(0) || !t.charCodeAt(8) === "I".charCodeAt(0) || !t.charCodeAt(9) === "F".charCodeAt(0) || 0 === !t.charCodeAt(10)) throw new Error("getJpegSize requires a binary string jpeg file");
                for (var o = 256 * t.charCodeAt(4) + t.charCodeAt(5), i = 4, a = t.length; a > i;) {
                    if (i += o, 255 !== t.charCodeAt(i)) throw new Error("getJpegSize could not find the size of the image");
                    if (192 === t.charCodeAt(i + 1) || 193 === t.charCodeAt(i + 1) || 194 === t.charCodeAt(i + 1) || 195 === t.charCodeAt(i + 1) || 196 === t.charCodeAt(i + 1) || 197 === t.charCodeAt(i + 1) || 198 === t.charCodeAt(i + 1) || 199 === t.charCodeAt(i + 1)) return n = 256 * t.charCodeAt(i + 5) + t.charCodeAt(i + 6),
                    e = 256 * t.charCodeAt(i + 7) + t.charCodeAt(i + 8),
                    r = t.charCodeAt(i + 9),
                    [e, n, r];
                    i += 2,
                    o = 256 * t.charCodeAt(i) + t.charCodeAt(i + 1)
                }
            },
            m = function(t) {
                var e = t[0] << 8 | t[1];
                if (65496 !== e) throw new Error("Supplied data is not a JPEG");
                for (var n, r, o, i, a = t.length,
                s = (t[4] << 8) + t[5], c = 4; a > c;) {
                    if (c += s, n = w(t, c), s = (n[2] << 8) + n[3], (192 === n[1] || 194 === n[1]) && 255 === n[0] && s > 7) return n = w(t, c + 5),
                    r = (n[2] << 8) + n[3],
                    o = (n[0] << 8) + n[1],
                    i = n[4],
                    {
                        width: r,
                        height: o,
                        numcomponents: i
                    };
                    c += 2
                }
                throw new Error("getJpegSizeFromBytes could not find the size of the image")
            },
            w = function(t, e) {
                return t.subarray(e, e + 5)
            };
            t.processJPEG = function(t, e, n, r, o) {
                var i, a = this.color_spaces.DEVICE_RGB,
                s = this.decode.DCT_DECODE,
                c = 8;
                return this.isString(t) ? (i = b(t), this.createImageInfo(t, i[0], i[1], 1 == i[3] ? this.color_spaces.DEVICE_GRAY: a, c, s, e, n)) : (this.isArrayBuffer(t) && (t = new Uint8Array(t)), this.isArrayBufferView(t) ? (i = m(t), t = o || this.arrayBufferToBinaryString(t), this.createImageInfo(t, i.width, i.height, 1 == i.numcomponents ? this.color_spaces.DEVICE_GRAY: a, c, s, e, n)) : null)
            },
            t.processJPG = function() {
                return this.processJPEG.apply(this, arguments)
            }
        } (o.API),
        function(t) {
            "use strict";
            t.addDOM = function(t, e, r, o, i) {
                var a = n(4);
                "number" != typeof e && (o = e, i = r),
                "function" == typeof o && (i = o, o = null);
                var s = this.internal,
                c = s.scaleFactor,
                u = s.pageSize.width,
                f = s.pageSize.height;
                o = o || {},
                o.onrendered = function(t) {
                    e = parseInt(e) || 0,
                    r = parseInt(r) || 0;
                    var n = o.dim || {},
                    a = n.h || 0,
                    s = n.w || Math.min(u, t.width / c) - e,
                    l = "JPEG";
                    if (o.format && (l = o.format), t.height > f && o.pagesplit) {
                        var d = function() {
                            for (var n = 0;;) {
                                var o = document.createElement("canvas");
                                o.width = Math.min(u * c, t.width),
                                o.height = Math.min(f * c, t.height - n);
                                var a = o.getContext("2d");
                                a.drawImage(t, 0, n, t.width, o.height, 0, 0, o.width, o.height);
                                var d = [o, e, n ? 0 : r, o.width / c, o.height / c, l, null, "SLOW"];
                                if (this.addImage.apply(this, d), n += o.height, n >= t.height) break;
                                this.addPage()
                            }
                            i(s, n, null, d)
                        }.bind(this);
                        if ("CANVAS" === t.nodeName) {
                            var h = new Image;
                            h.onload = d,
                            h.src = t.toDataURL("image/png"),
                            t = h
                        } else d()
                    } else {
                        var p = Math.random().toString(35),
                        g = [t, e, r, s, a, l, p, "SLOW"];
                        this.addImage.apply(this, g),
                        i(s, a, p, g)
                    }
                }.bind(this),
                a(t, {
                    format: "jpg"
                },
                function(t) {
                    o.onrendered(t)
                })
            }
        } (o.API)
    },
    function(t, e, n) {
        var r = n(2).saveAs,
        o = n(1),
        i = n(11);
        t.exports = function(t, e) {
            var n = new i("p", "pt", "a4", !1),
            a = 20,
            s = 20,
            c = 0,
            u = 0,
            f = 1,
            l = function(t) {
                r(t.output("blob"), e + ".pdf")
            };
            if (n.setFontSize(14), /[\u4E00-\u9FA5]|[\uFE30-\uFFA0]/gi.test(o.getText(t))) n.addDOM(t, s, a,
            function() {
                l(n)
            });
            else {
                for (var d, h = 0; d = t.rows[h]; h++) { (h + 1) % 26 === 0 && (n.addPage(), f++, s += 10),
                    u = s + 10 * (h + 1) - 280 * (f - 1);
                    for (var p, g = 0; p = d.cells[g]; g++) c = a + 50 * g,
                    n.text(o.getText(p), c, u)
                }
                l(n)
            }
        }
    },
    function(t, e, n) {
        var r = n(1);
        t.exports = function(t) {
            for (var e, n = '<?xml version="1.0" encoding="utf-8"?><table>',
            o = 0; e = t.rows[o]; o++) {
                n += '<row id="' + o + '">';
                for (var i, a = 0; i = e.cells[a]; a++) n += "<column>" + r.getText(i) + "</column>";
                n += "</row>"
            }
            return n += "</table>"
        }
    }])
});