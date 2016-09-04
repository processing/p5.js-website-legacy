// =================================================
// Family bar:

(function(w, d) {
  var search_form = d.getElementById('search_form'),
      search_field = d.getElementById('search_field');
  var open_field = function() {
    search_form.className = 'form__open';
    search_field.focus();
  };
  var close_field = function(e) {
    if (e.type === 'focusout') {
      search_form.className = '';
    } else {
      if (search_field.value === '') {
        search_form.className = '';
      }
    }
  };
  if (search_form.addEventListener) {
    search_form.addEventListener('mouseover', open_field, false);
    search_form.addEventListener('mouseout', close_field, false);
    search_form.addEventListener('focusout', close_field, false);
  } else { // IE
    search_form.attachEvent('onmouseover', open_field);
    search_form.attachEvent('onmouseout', close_field);
    search_form.attachEvent('onfocusout', close_field);
  }
})(window, document);


// ===============================================
// Language handling:

(function(w, d, langs) {

  // ===============================================
  // Language detection:

  var test_local_storage = function(w) {
    var tmp = 'p5js';
    try {
      w.localStorage.setItem(tmp, tmp);
      w.localStorage.removeItem(tmp);
      return true;
    } catch (e) {
      return false;
    }
  };
  var can_store = test_local_storage(w);

  var get_browser_lang = function(w) {
    var tmp = w.navigator.languages && w.navigator.languages[0]
      || w.navigator.language || w.navigator.userLanguage;
    tmp = tmp.split('-')[0];
    for (var i=0, l=langs; i < l; i++) {
      if (tmp == langs[i]) {
        return langs[i];
      }
    }
    return 'en';
  };
  var browser_lang = get_browser_lang(w);

  var get_loc_lang = function(w) {
    if ((w.location.pathname == "/") === false) {
      for (var i=0, l=langs.length; i < l; i++) {
        if (w.location.pathname.indexOf('/' + langs[i] + '/') !== -1) {
          return langs[i];
        }
      }
    }
    return 'en';
  };
  var loc = String(w.location.pathname);
  var loc_lang = get_loc_lang(w);
  var is_root = (w.location.pathname == "/");

  // Default lang:
  var lang = 'en';
  if (can_store) {
    if (w.localStorage.getItem('lang') !== null) {
      var saved_lang = w.localStorage.getItem('lang');
      if (saved_lang !== loc_lang) {
        if (saved_lang == 'en') {
          loc = '/' + loc.replace('\/' + loc_lang + '\/', '');
        } else {
          loc = '/' + saved_lang + loc;
        }
        w.location = loc;
      } else {
        lang = saved_lang;
      }
    } else {
      if (is_root && browser_lang != loc_lang) {
        loc = '/' + browser_lang;
        w.location = loc;
      }
    }
  } else {
    lang = get_loc_lang();
  }
  w.lang = lang;


  // ===============================================
  // Language change:

  var els = d.getElementsByClassName('js-lang');
  var el = null;
  if (w.lang != 'en') {
    for (var i=0, l=els.length; i < l; i++) {
      el = els[i];
      el.innerHTML = el.getAttribute('data-' + w.lang);
    }
  }


  // ===============================================
  // Language buttons:

  var btns = d.getElementById('i18n-btn').getElementsByTagName('button');
  var evt_type = typeof d.addEventListener !== 'undefined' ? 'click' : 'onclick';
  var click_action = function(e) {
    var new_lang = this.getAttribute('data-lang');
    if (new_lang == 'en') {
      for (var j=0, l=langs.length; j < l; j++) {
        if (langs[j] != 'en') {
          loc = '/' + loc.replace('\/' + langs[j] + '\/', '');
        }
      }
    } else {
      loc = '/' + new_lang + loc;
    }
    if (can_store) {
      w.localStorage.setItem('lang', new_lang);
    }
    w.location = loc;
  };
  for (var i=0, l=btns.length; i < l; i++) {
    var btn_lang = btns[i].getAttribute('data-lang');
    if (loc_lang == btn_lang) {
      btns[i].setAttribute('disabled', 'disabled');
    } else {
      if (evt_type === 'click') {
        btns[i].addEventListener(evt_type, click_action, false);
      } else { // IE
        btns[i].attachEvent(evt_type, click_action);
      }
    }
  }
})(window, document, ['en', 'es']);  // <- Add here all languages.


// =================================================
// Loading

(function(w, d, langs, deps, main) {
  var url_parts = w.location.pathname.split('/').filter(function (v) {
    return v !== '';
  });
  var inject = function(files) {
    for (var i = 0, l = files.length; i < l; i++) {
      var script = d.createElement('script');
      script.setAttribute('src', files[i]);
      script.setAttribute('type', 'text/javascript');
      d.getElementsByTagName('body')[0].appendChild(script);
    }
  };
  var load = function() {
    inject(deps);
    w.addEventListener('load', function() {
      inject(main);
    }, true);
  };
  if (url_parts.length > 1) {
    load();
  } else if (url_parts.length == 1) {
    for (var i = 0, l = langs.length; i < l; i++) {
      if (langs[i] != 'en' && url_parts[0] != langs[i]) {
        load();
        break;
      }
    }
  }
})(window, document, ['en', 'es'], ['/assets/js/p5.all.js'], ['/assets/js/all.js']);


// =================================================
// Google Analytics

window.addEventListener('load', function() {  // <-- Last but not least.
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-53383000-1', 'auto');
  ga('send', 'pageview');
}, true);
