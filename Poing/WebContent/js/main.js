
Z = function (e, t) {
	return new Z.fn.init(e, t)
},
ee = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g,
te = /^-ms-/,
ne = /-([\da-z])/gi,
re = function (e, t) {
	return t.toUpperCase()
};
Z.fn = Z.prototype = {
		jquery: K,
		constructor: Z,
		selector: "",
		length: 0,
		toArray: function () {
			return _.call(this)
		},
		get: function (e) {
			return null != e ? 0 > e ? this[e + this.length] : this[e] : _.call(this)
		},
		pushStack: function (e) {
			var t = Z.merge(this.constructor(), e);
			return t.prevObject = this, t.context = this.context, t
		},
		each: function (e, t) {
			return Z.each(this, e, t)
		},
		map: function (e) {
			return this.pushStack(Z.map(this, function (t, n) {
				return e.call(t, n, t)
			}))
		},
		slice: function () {
			return this.pushStack(_.apply(this, arguments))
		},
		first: function () {
			return this.eq(0)
		},
		last: function () {
			return this.eq(-1)
		},
		eq: function (e) {
			var t = this.length,
			n = +e + (0 > e ? t : 0);
			return this.pushStack(n >= 0 && t > n ? [this[n]] : [])
		},
		end: function () {
			return this.prevObject || this.constructor(null)
		},
		push: X,
		sort: B.sort,
		splice: B.splice
}, Z.extend = Z.fn.extend = function () {
	var e, t, n, r, i, o, s = arguments[0] || {},
	a = 1,
	u = arguments.length,
	l = !1;
	for ("boolean" == typeof s && (l = s, s = arguments[a] || {}, a++), "object" == typeof s || Z.isFunction(s) || (s = {}), a === u && (s = this, a--); u > a; a++)
		if (null != (e = arguments[a]))
			for (t in e) n = s[t], r = e[t], s !== r && (l && r && (Z.isPlainObject(r) || (i = Z.isArray(r))) ? (i ? (i = !1, o = n && Z.isArray(n) ? n : []) : o = n && Z.isPlainObject(n) ? n : {}, s[t] = Z.extend(l, o, r)) : void 0 !== r && (s[t] = r));
	return s
}, Z.extend({
	expando: "jQuery" + (K + Math.random()).replace(/\D/g, ""),
	isReady: !0,
	error: function (e) {
		throw new Error(e)
	},
	noop: function () { },
	isFunction: function (e) {
		return "function" === Z.type(e)
	},
	isArray: Array.isArray,
	isWindow: function (e) {
		return null != e && e === e.window
	},
	isNumeric: function (e) {
		return !Z.isArray(e) && e - parseFloat(e) + 1 >= 0
	},
	isPlainObject: function (e) {
		return "object" === Z.type(e) && !e.nodeType && !Z.isWindow(e) && !(e.constructor && !G.call(e.constructor.prototype, "isPrototypeOf"))
	},
	isEmptyObject: function (e) {
		var t;
		for (t in e) return !1;
		return !0
	},
	type: function (e) {
		return null == e ? e + "" : "object" == typeof e || "function" == typeof e ? V[Y.call(e)] || "object" : typeof e
	},
	globalEval: function (e) {
		var t, n = eval;
		e = Z.trim(e), e && (1 === e.indexOf("use strict") ? (t = J.createElement("script"), t.text = e, J.head.appendChild(t).parentNode.removeChild(t)) : n(e))
	},
	camelCase: function (e) {
		return e.replace(te, "ms-").replace(ne, re)
	},
	nodeName: function (e, t) {
		return e.nodeName && e.nodeName.toLowerCase() === t.toLowerCase()
	},
	each: function (e, t, r) {
		var i, o = 0,
		s = e.length,
		a = n(e);
		if (r) {
			if (a)
				for (; s > o && (i = t.apply(e[o], r), i !== !1); o++);
			else
				for (o in e)
					if (i = t.apply(e[o], r), i === !1) break
		} else if (a)
			for (; s > o && (i = t.call(e[o], o, e[o]), i !== !1); o++);
		else
			for (o in e)
				if (i = t.call(e[o], o, e[o]), i === !1) break;
		return e
	},
	trim: function (e) {
		return null == e ? "" : (e + "").replace(ee, "")
	},
	makeArray: function (e, t) {
		var r = t || [];
		return null != e && (n(Object(e)) ? Z.merge(r, "string" == typeof e ? [e] : e) : X.call(r, e)), r
	},
	inArray: function (e, t, n) {
		return null == t ? -1 : U.call(t, e, n)
	},
	merge: function (e, t) {
		for (var n = +t.length, r = 0, i = e.length; n > r; r++) e[i++] = t[r];
		return e.length = i, e
	},
	grep: function (e, t, n) {
		for (var r, i = [], o = 0, s = e.length, a = !n; s > o; o++) r = !t(e[o], o), r !== a && i.push(e[o]);
		return i
	},
	map: function (e, t, r) {
		var i, o = 0,
		s = e.length,
		a = n(e),
		u = [];
		if (a)
			for (; s > o; o++) i = t(e[o], o, r), null != i && u.push(i);
		else
			for (o in e) i = t(e[o], o, r), null != i && u.push(i);
		return z.apply([], u)
	},
	guid: 1,
	proxy: function (e, t) {
		var n, r, i;
		return "string" == typeof t && (n = e[t], t = e, e = n), Z.isFunction(e) ? (r = _.call(arguments, 2), i = function () {
			return e.apply(t || this, r.concat(_.call(arguments)))
		}, i.guid = e.guid = e.guid || Z.guid++ , i) : void 0
	},
	now: Date.now,
	support: Q
}), Z.each("Boolean Number String Function Array Date RegExp Object Error".split(" "), function (e, t) {
	V["[object " + t + "]"] = t.toLowerCase()
});
Z.event = {
		global: {},
		add: function (e, t, n, r, i) {
			var o, s, a, u, l, c, f, p, d, h, g, m = ve.get(e);
			if (m)
				for (n.handler && (o = n, n = o.handler, i = o.selector), n.guid || (n.guid = Z.guid++), (u = m.events) || (u = m.events = {}), (s = m.handle) || (s = m.handle = function (t) {
					return typeof Z !== ke && Z.event.triggered !== t.type ? Z.event.dispatch.apply(e, arguments) : void 0
				}), t = (t || "").match(de) || [""], l = t.length; l--;) a = je.exec(t[l]) || [], d = g = a[1], h = (a[2] || "").split(".").sort(), d && (f = Z.event.special[d] || {}, d = (i ? f.delegateType : f.bindType) || d, f = Z.event.special[d] || {}, c = Z.extend({
					type: d,
					origType: g,
					data: r,
					handler: n,
					guid: n.guid,
					selector: i,
					needsContext: i && Z.expr.match.needsContext.test(i),
					namespace: h.join(".")
				}, o), (p = u[d]) || (p = u[d] = [], p.delegateCount = 0, f.setup && f.setup.call(e, r, h, s) !== !1 || e.addEventListener && e.addEventListener(d, s, !1)), f.add && (f.add.call(e, c), c.handler.guid || (c.handler.guid = n.guid)), i ? p.splice(p.delegateCount++, 0, c) : p.push(c), Z.event.global[d] = !0)
		},
		remove: function (e, t, n, r, i) {
			var o, s, a, u, l, c, f, p, d, h, g, m = ve.hasData(e) && ve.get(e);
			if (m && (u = m.events)) {
				for (t = (t || "").match(de) || [""], l = t.length; l--;)
					if (a = je.exec(t[l]) || [], d = g = a[1], h = (a[2] || "").split(".").sort(), d) {
						for (f = Z.event.special[d] || {}, d = (r ? f.delegateType : f.bindType) || d, p = u[d] || [], a = a[2] && new RegExp("(^|\\.)" + h.join("\\.(?:.*\\.|)") + "(\\.|$)"), s = o = p.length; o--;) c = p[o], !i && g !== c.origType || n && n.guid !== c.guid || a && !a.test(c.namespace) || r && r !== c.selector && ("**" !== r || !c.selector) || (p.splice(o, 1), c.selector && p.delegateCount-- , f.remove && f.remove.call(e, c));
						s && !p.length && (f.teardown && f.teardown.call(e, h, m.handle) !== !1 || Z.removeEvent(e, d, m.handle), delete u[d])
					} else
						for (d in u) Z.event.remove(e, d + t[l], n, r, !0);
				Z.isEmptyObject(u) && (delete m.handle, ve.remove(e, "events"))
			}
		},
		trigger: function (t, n, r, i) {
			var o, s, a, u, l, c, f, p = [r || J],
			d = G.call(t, "type") ? t.type : t,
					h = G.call(t, "namespace") ? t.namespace.split(".") : [];
					if (s = a = r = r || J, 3 !== r.nodeType && 8 !== r.nodeType && !De.test(d + Z.event.triggered) && (d.indexOf(".") >= 0 && (h = d.split("."), d = h.shift(), h.sort()), l = d.indexOf(":") < 0 && "on" + d, t = t[Z.expando] ? t : new Z.Event(d, "object" == typeof t && t), t.isTrigger = i ? 2 : 3, t.namespace = h.join("."), t.namespace_re = t.namespace ? new RegExp("(^|\\.)" + h.join("\\.(?:.*\\.|)") + "(\\.|$)") : null, t.result = void 0, t.target || (t.target = r), n = null == n ? [t] : Z.makeArray(n, [t]), f = Z.event.special[d] || {}, i || !f.trigger || f.trigger.apply(r, n) !== !1)) {
						if (!i && !f.noBubble && !Z.isWindow(r)) {
							for (u = f.delegateType || d, De.test(u + d) || (s = s.parentNode); s; s = s.parentNode) p.push(s), a = s;
							a === (r.ownerDocument || J) && p.push(a.defaultView || a.parentWindow || e)
						}
						for (o = 0;
						(s = p[o++]) && !t.isPropagationStopped();) t.type = o > 1 ? u : f.bindType || d, c = (ve.get(s, "events") || {})[t.type] && ve.get(s, "handle"), c && c.apply(s, n), c = l && s[l], c && c.apply && Z.acceptData(s) && (t.result = c.apply(s, n), t.result === !1 && t.preventDefault());
						return t.type = d, i || t.isDefaultPrevented() || f._default && f._default.apply(p.pop(), n) !== !1 || !Z.acceptData(r) || l && Z.isFunction(r[d]) && !Z.isWindow(r) && (a = r[l], a && (r[l] = null), Z.event.triggered = d, r[d](), Z.event.triggered = void 0, a && (r[l] = a)), t.result
					}
		},
		dispatch: function (e) {
			e = Z.event.fix(e);
			var t, n, r, i, o, s = [],
			a = _.call(arguments),
			u = (ve.get(this, "events") || {})[e.type] || [],
			l = Z.event.special[e.type] || {};
			if (a[0] = e, e.delegateTarget = this, !l.preDispatch || l.preDispatch.call(this, e) !== !1) {
				for (s = Z.event.handlers.call(this, e, u), t = 0;
				(i = s[t++]) && !e.isPropagationStopped();)
					for (e.currentTarget = i.elem, n = 0;
					(o = i.handlers[n++]) && !e.isImmediatePropagationStopped();)(!e.namespace_re || e.namespace_re.test(o.namespace)) && (e.handleObj = o, e.data = o.data, r = ((Z.event.special[o.origType] || {}).handle || o.handler).apply(i.elem, a), void 0 !== r && (e.result = r) === !1 && (e.preventDefault(), e.stopPropagation()));
				return l.postDispatch && l.postDispatch.call(this, e), e.result
			}
		},
		handlers: function (e, t) {
			var n, r, i, o, s = [],
			a = t.delegateCount,
			u = e.target;
			if (a && u.nodeType && (!e.button || "click" !== e.type))
				for (; u !== this; u = u.parentNode || this)
					if (u.disabled !== !0 || "click" !== e.type) {
						for (r = [], n = 0; a > n; n++) o = t[n], i = o.selector + " ", void 0 === r[i] && (r[i] = o.needsContext ? Z(i, this).index(u) >= 0 : Z.find(i, this, null, [u]).length), r[i] && r.push(o);
						r.length && s.push({
							elem: u,
							handlers: r
						})
					} return a < t.length && s.push({
						elem: this,
						handlers: t.slice(a)
					}), s
		},
		props: "altKey bubbles cancelable ctrlKey currentTarget eventPhase metaKey relatedTarget shiftKey target timeStamp view which".split(" "),
		fixHooks: {},
		keyHooks: {
			props: "char charCode key keyCode".split(" "),
			filter: function (e, t) {
				return null == e.which && (e.which = null != t.charCode ? t.charCode : t.keyCode), e
			}
		},
		mouseHooks: {
			props: "button buttons clientX clientY offsetX offsetY pageX pageY screenX screenY toElement".split(" "),
			filter: function (e, t) {
				var n, r, i, o = t.button;
				return null == e.pageX && null != t.clientX && (n = e.target.ownerDocument || J, r = n.documentElement, i = n.body, e.pageX = t.clientX + (r && r.scrollLeft || i && i.scrollLeft || 0) - (r && r.clientLeft || i && i.clientLeft || 0), e.pageY = t.clientY + (r && r.scrollTop || i && i.scrollTop || 0) - (r && r.clientTop || i && i.clientTop || 0)), e.which || void 0 === o || (e.which = 1 & o ? 1 : 2 & o ? 3 : 4 & o ? 2 : 0), e
			}
		},
		fix: function (e) {
			if (e[Z.expando]) return e;
			var t, n, r, i = e.type,
			o = e,
			s = this.fixHooks[i];
			for (s || (this.fixHooks[i] = s = Se.test(i) ? this.mouseHooks : Ee.test(i) ? this.keyHooks : {}), r = s.props ? this.props.concat(s.props) : this.props, e = new Z.Event(o), t = r.length; t--;) n = r[t], e[n] = o[n];
			return e.target || (e.target = J), 3 === e.target.nodeType && (e.target = e.target.parentNode), s.filter ? s.filter(e, o) : e
		},
		special: {
			load: {
				noBubble: !0
			},
			focus: {
				trigger: function () {
					return this !== f() && this.focus ? (this.focus(), !1) : void 0
				},
				delegateType: "focusin"
			},
			blur: {
				trigger: function () {
					return this === f() && this.blur ? (this.blur(), !1) : void 0
				},
				delegateType: "focusout"
			},
			click: {
				trigger: function () {
					return "checkbox" === this.type && this.click && Z.nodeName(this, "input") ? (this.click(), !1) : void 0
				},
				_default: function (e) {
					return Z.nodeName(e.target, "a")
				}
			},
			beforeunload: {
				postDispatch: function (e) {
					void 0 !== e.result && e.originalEvent && (e.originalEvent.returnValue = e.result)
				}
			}
		},
		simulate: function (e, t, n, r) {
			var i = Z.extend(new Z.Event, n, {
				type: e,
				isSimulated: !0,
				originalEvent: {}
			});
			r ? Z.event.trigger(i, null, t) : Z.event.dispatch.call(t, i), i.isDefaultPrevented() && n.preventDefault()
		}
}, Z.removeEvent = function (e, t, n) {
	e.removeEventListener && e.removeEventListener(t, n, !1)
}, Z.Event = function (e, t) {
	return this instanceof Z.Event ? (e && e.type ? (this.originalEvent = e, this.type = e.type, this.isDefaultPrevented = e.defaultPrevented || void 0 === e.defaultPrevented && e.returnValue === !1 ? l : c) : this.type = e, t && Z.extend(this, t), this.timeStamp = e && e.timeStamp || Z.now(), void (this[Z.expando] = !0)) : new Z.Event(e, t)
}, Z.Event.prototype = {
		isDefaultPrevented: c,
		isPropagationStopped: c,
		isImmediatePropagationStopped: c,
		preventDefault: function () {
			var e = this.originalEvent;
			this.isDefaultPrevented = l, e && e.preventDefault && e.preventDefault()
		},
		stopPropagation: function () {
			var e = this.originalEvent;
			this.isPropagationStopped = l, e && e.stopPropagation && e.stopPropagation()
		},
		stopImmediatePropagation: function () {
			var e = this.originalEvent;
			this.isImmediatePropagationStopped = l, e && e.stopImmediatePropagation && e.stopImmediatePropagation(), this.stopPropagation()
		}
}, Z.each({
	mouseenter: "mouseover",
	mouseleave: "mouseout",
	pointerenter: "pointerover",
	pointerleave: "pointerout"
}, function (e, t) {
	Z.event.special[e] = {
			delegateType: t,
			bindType: t,
			handle: function (e) {
				var n, r = this,
				i = e.relatedTarget,
				o = e.handleObj;
				return (!i || i !== r && !Z.contains(r, i)) && (e.type = o.origType, n = o.handler.apply(this, arguments), e.type = t), n
			}
	}
}), Q.focusinBubbles || Z.each({
	focus: "focusin",
	blur: "focusout"
}, function (e, t) {
	var n = function (e) {
		Z.event.simulate(t, e.target, Z.event.fix(e), !0)
	};
	Z.event.special[t] = {
			setup: function () {
				var r = this.ownerDocument || this,
				i = ve.access(r, t);
				i || r.addEventListener(e, n, !0), ve.access(r, t, (i || 0) + 1)
			},
			teardown: function () {
				var r = this.ownerDocument || this,
				i = ve.access(r, t) - 1;
				i ? ve.access(r, t, i) : (r.removeEventListener(e, n, !0), ve.remove(r, t))
			}
	}
}), Z.fn.extend({
	on: function (e, t, n, r, i) {
		var o, s;
		if ("object" == typeof e) {
			"string" != typeof t && (n = n || t, t = void 0);
			for (s in e) this.on(s, t, n, e[s], i);
			return this
		}
		if (null == n && null == r ? (r = t, n = t = void 0) : null == r && ("string" == typeof t ? (r = n, n = void 0) : (r = n, n = t, t = void 0)), r === !1) r = c;
		else if (!r) return this;
		return 1 === i && (o = r, r = function (e) {
			return Z().off(e), o.apply(this, arguments)
		}, r.guid = o.guid || (o.guid = Z.guid++)), this.each(function () {
			Z.event.add(this, e, r, n, t)
		})
	},
	one: function (e, t, n, r) {
		return this.on(e, t, n, r, 1)
	},
	off: function (e, t, n) {
		var r, i;
		if (e && e.preventDefault && e.handleObj) return r = e.handleObj, Z(e.delegateTarget).off(r.namespace ? r.origType + "." + r.namespace : r.origType, r.selector, r.handler), this;
		if ("object" == typeof e) {
			for (i in e) this.off(i, t, e[i]);
			return this
		}
		return (t === !1 || "function" == typeof t) && (n = t, t = void 0), n === !1 && (n = c), this.each(function () {
			Z.event.remove(this, e, n, t)
		})
	},
	trigger: function (e, t) {
		return this.each(function () {
			Z.event.trigger(e, t, this)
		})
	},
	triggerHandler: function (e, t) {
		var n = this[0];
		return n ? Z.event.trigger(e, t, n, !0) : void 0
	}
});