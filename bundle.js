/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId])
/******/ 			return installedModules[moduleId].exports;
/******/
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			exports: {},
/******/ 			id: moduleId,
/******/ 			loaded: false
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.loaded = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(0);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ function(module, exports, __webpack_require__) {

	/* WEBPACK VAR INJECTION */(function(process) {//NYI: slurpy params @ARGS
	//NYI: slurpy params ARGS
	var nqp = __webpack_require__(2);

	var top_ctx = nqp.top_context();
	var ARGS = process.argv;
	cuid_6_1408220944_24594 = function(_NAMED,caller_ctx) {var TMP1,
	TMP2,
	TMP3,
	TMP4,
	TMP5,
	TMP6,
	TMP7,
	TMP8,
	TMP9,
	TMP10,
	TMP11;
	var _AMPERSAND_js,
	_AMPERSAND_set_MINUS_draw,
	_AMPERSAND_set_MINUS_setup,
	_AMPERSAND_fill,
	_AMPERSAND_ellipse,
	_AMPERSAND_createCanvas,
	_AMPERSAND_mouseX,
	_AMPERSAND_mouseY,
	_AMPERSAND_mouseIsPressed,
	_AMPERSAND_setup,
	_AMPERSAND_draw;
	var ctx1 = null;
	cuid_7_1408220944_24594 = function(_NAMED,caller_ctx) {var TMP1;
	var ctx2 = null;
	TMP1 = _AMPERSAND_createCanvas(ctx2,nqp.named({}),(640),(480));
	return TMP1;
	};
	(_AMPERSAND_setup = (cuid_7_1408220944_24594));
	cuid_8_1408220944_24594 = function(_NAMED,caller_ctx) {var TMP1,
	TMP2,
	TMP3,
	TMP4,
	TMP5,
	TMP6;
	var ctx3 = null;
	TMP1 = _AMPERSAND_mouseIsPressed(ctx3,nqp.named({}));
	if (nqp.to_bool(TMP1)) {TMP2 = _AMPERSAND_fill(ctx3,nqp.named({}),(0));
	} else {TMP3 = _AMPERSAND_fill(ctx3,nqp.named({}),(255));
	}TMP5 = _AMPERSAND_mouseX(ctx3,nqp.named({}));
	TMP6 = _AMPERSAND_mouseY(ctx3,nqp.named({}));
	TMP4 = _AMPERSAND_ellipse(ctx3,nqp.named({}),TMP5,TMP6,(80),(80));
	return TMP4;
	};
	(_AMPERSAND_draw = (cuid_8_1408220944_24594));
	// NYI: handle CTXSAVE
	TMP1 = nqp.op.getcomp("JavaScript");
	(_AMPERSAND_js = (TMP1));
	TMP2 = _AMPERSAND_js(ctx1,nqp.named({}),"(function($CTX, $NAMED, cb) {draw = cb})");
	(_AMPERSAND_set_MINUS_draw = (TMP2));
	TMP3 = _AMPERSAND_js(ctx1,nqp.named({}),"(function($CTX, $NAMED, cb) {setup = cb})");
	(_AMPERSAND_set_MINUS_setup = (TMP3));
	TMP4 = _AMPERSAND_js(ctx1,nqp.named({}),"(function($CTX, $NAMED, color) {fill(color)})");
	(_AMPERSAND_fill = (TMP4));
	TMP5 = _AMPERSAND_js(ctx1,nqp.named({}),"(function($CTX, $NAMED, a, b, c, d) {ellipse(a, b, c, d)})");
	(_AMPERSAND_ellipse = (TMP5));
	TMP6 = _AMPERSAND_js(ctx1,nqp.named({}),"(function($CTX, $NAMED, width, height) {createCanvas(width, height)})");
	(_AMPERSAND_createCanvas = (TMP6));
	TMP7 = _AMPERSAND_js(ctx1,nqp.named({}),"(function($CTX, $NAMED) {return mouseX})");
	(_AMPERSAND_mouseX = (TMP7));
	TMP8 = _AMPERSAND_js(ctx1,nqp.named({}),"(function($CTX, $NAMED) {return mouseY})");
	(_AMPERSAND_mouseY = (TMP8));
	TMP9 = _AMPERSAND_js(ctx1,nqp.named({}),"(function($CTX, $NAMED) {return mouseIsPressed ? 1 : 0})");
	(_AMPERSAND_mouseIsPressed = (TMP9));
	TMP10 = _AMPERSAND_set_MINUS_setup(ctx1,nqp.named({}),_AMPERSAND_setup);
	TMP11 = _AMPERSAND_set_MINUS_draw(ctx1,nqp.named({}),_AMPERSAND_draw);
	nqp.op.say("Hello Fancy Browser World");
	return null;
	};
	cuid_9_1408220944_24594 = function(_NAMED,caller_ctx) {var TMP1;
	var ctx4 = null;
	TMP1 = cuid_6_1408220944_24594([ctx4,nqp.named({})].concat(ARGS));
	return TMP1;
	};
	cuid_9_1408220944_24594();
	
	/* WEBPACK VAR INJECTION */}.call(exports, __webpack_require__(1)))

/***/ },
/* 1 */
/***/ function(module, exports, __webpack_require__) {

	// shim for using process in browser

	var process = module.exports = {};

	process.nextTick = (function () {
	    var canSetImmediate = typeof window !== 'undefined'
	    && window.setImmediate;
	    var canPost = typeof window !== 'undefined'
	    && window.postMessage && window.addEventListener
	    ;

	    if (canSetImmediate) {
	        return function (f) { return window.setImmediate(f) };
	    }

	    if (canPost) {
	        var queue = [];
	        window.addEventListener('message', function (ev) {
	            var source = ev.source;
	            if ((source === window || source === null) && ev.data === 'process-tick') {
	                ev.stopPropagation();
	                if (queue.length > 0) {
	                    var fn = queue.shift();
	                    fn();
	                }
	            }
	        }, true);

	        return function nextTick(fn) {
	            queue.push(fn);
	            window.postMessage('process-tick', '*');
	        };
	    }

	    return function nextTick(fn) {
	        setTimeout(fn, 0);
	    };
	})();

	process.title = 'browser';
	process.browser = true;
	process.env = {};
	process.argv = [];

	function noop() {}

	process.on = noop;
	process.addListener = noop;
	process.once = noop;
	process.off = noop;
	process.removeListener = noop;
	process.removeAllListeners = noop;
	process.emit = noop;

	process.binding = function (name) {
	    throw new Error('process.binding is not supported');
	}

	// TODO(shtylman)
	process.cwd = function () { return '/' };
	process.chdir = function (dir) {
	    throw new Error('process.chdir is not supported');
	};


/***/ },
/* 2 */
/***/ function(module, exports, __webpack_require__) {

	/* WEBPACK VAR INJECTION */(function(process) {var op = {};
	exports.op = op;

	op.print = function(arg) {
	  process.stdout.write(arg);
	};
	op.say = function(arg) {
	  if (process.stdout) {
	    process.stdout.write(arg);
	    process.stdout.write('\n');
	  } else {
	    console.log(arg);
	  }
	};

	op.getcomp = function(lang) {
	  if (lang == 'JavaScript') {
	    return function(ctx, named, code) {
	      console.log(code);
	      return eval(code);
	    };
	  }
	};

	op.isinvokable = function(obj) {
	  return (typeof obj == 'function' ? 1 : 0);
	};

	exports.to_str = function(arg) {
	  if (typeof arg == 'number') {
	    return arg.toString();
	  } else if (typeof arg == 'string') {
	    return arg;
	  } else {
	    console.log(arg);
	    throw "Can't convert to str";
	  }
	};

	exports.to_num = function(arg) {
	  if (typeof arg == 'number') {
	    return arg;
	  } else {
	    throw "Can't convert to num";
	  }
	};

	exports.to_bool = function(arg) {
	  if (typeof arg == 'number') {
	    return arg ? 1 : 0;
	  } else if (typeof arg == 'string') {
	    return arg == "" || arg == "0" ? 0 : 1;
	  } else if (arg instanceof Array) {
	    return arg.length == 0 ? 0 : 1;
	  } else if (arg === undefined) {
	    return 0;
	  } else {
	    throw "Can't decide if arg is true";
	  }
	};

	exports.named = function(named) {
	  return named;
	};


	// Placeholder
	exports.top_context = function() {
	  return null;
	};
	
	/* WEBPACK VAR INJECTION */}.call(exports, __webpack_require__(1)))

/***/ }
/******/ ])