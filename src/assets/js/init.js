// =================================================
// Family bar:
window.onload = function() {

  var test_js = function() {
    // http://stackoverflow.com/a/12410668/1293700
    document.documentElement.className = document.documentElement.className.replace(/\bno-js\b/,'') + ' js';
  }();
  var test_pointerevents = function() {
    // https://github.com/ausi/Feature-detection-technique-for-pointer-events/blob/master/modernizr-pointerevents.js
    var el = document.createElement('x');
    el.style.cssText = 'pointer-events:auto';
    return el.style.pointerEvents === 'auto';
  };
  if (test_pointerevents()) {
    document.documentElement.className += ' pointerevents';
  }

  var search_form = document.getElementById('search_form'),
      search_field = document.getElementById('search_field');
  if (search_form) {
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
  }

  // =================================================
  // set language and tagline
  var path = window.location.pathname;
  var parts = path.split('/');
  for (var i=0; i<parts.length; i++) {
    if (parts[i].length) {
      var langMatch = 0;
      for (var j=0; j<langs.length; j++) {
        if (parts[i] === langs[j]) {
          langMatch = true;
        }
      }
      if (!langMatch) {
        break;
      }
    }
  }

  var taglines = document.getElementsByClassName('tagline'); //divsToHide is an array
  if (taglines.length) {
    var taglineInd = Math.floor(taglines.length * Math.random());
    taglines[taglineInd].style.display = 'block';
  }



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
  var can_store = test_local_storage(window);

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
  var browser_lang = get_browser_lang(window);

  var get_loc_lang = function(w) {
    if ((w.location.pathname == '/') === false) {
      for (var i=0, l=langs.length; i < l; i++) {
        if (w.location.pathname.indexOf('/' + langs[i] + '/') !== -1) {
          if (can_store) {
            window.localStorage.setItem('lang', new_lang);
          }
          return langs[i];
        }
      }
    }
    return 'en';
  };
  var loc = String(window.location.pathname);
  var loc_lang = get_loc_lang(window);
  var is_root = (loc == '/');

  // Default lang:
  var lang = 'en';
  if (can_store) {
    if (window.localStorage.getItem('lang') !== null) {
      var saved_lang = window.localStorage.getItem('lang');
      if (saved_lang !== loc_lang) {
        if (saved_lang == 'en') {
          loc = '/' + loc.replace('\/' + loc_lang + '\/', '');
        } else {
          loc = '/' + saved_lang + loc;
        }
        window.location = loc;
      } else {
        lang = saved_lang;
      }
    } else {
      if (is_root && browser_lang != loc_lang) {
        // if (lang !== 'pangu' || isStaging()) { // temp until chinese launch
          loc = '/' + browser_lang;
          window.location = loc;
        // }
      }
    }
  } else {
    lang = get_loc_lang();
  }

  window.lang = lang;

  // ===============================================
  // Language change:

  var els = document.getElementsByClassName('js-lang');
  var el = null;
  if (window.lang != 'en') {
    for (var i=0, l=els.length; i < l; i++) {
      el = els[i];
      el.innerHTML = el.getAttribute('data-' + window.lang);
    }
  }


  // ===============================================
  // Language buttons:

  var btns = document.getElementById('i18n-btn').getElementsByTagName('a');
  var evt_type = typeof document.addEventListener !== 'undefined' ? 'click' : 'onclick';
  var click_action = function(e) {
    var new_lang = this.getAttribute('data-lang');
    if (new_lang == 'en') {
      for (var j=0, l=langs.length; j < l; j++) {
        if (langs[j] != 'en') {
          loc = loc.replace('\/' + langs[j] + '\/', '/');
        }
      }
    } else {
      for (var j=0, l=langs.length; j < l; j++) {
        loc = loc.replace('\/' + langs[j] + '\/', '/');
      }
      loc = '/' + new_lang + loc;
    }
    if (can_store) {
      window.localStorage.setItem('lang', new_lang);
    }
    window.location = loc;
  };
  for (var i=0, l=btns.length; i < l; i++) {
    var btn_lang = btns[i].getAttribute('data-lang');
    if (loc_lang == btn_lang) {
      $(btns[i]).addClass('disabled');
    } else {
      $(btns[i]).removeClass('disabled');
      if (evt_type === 'click') {
        btns[i].addEventListener(evt_type, click_action, false);
      } else { // IE
        btns[i].attachEvent(evt_type, click_action);
      }
    }
  }

  // =================================================
  // Chinese spacing
  if (window.pangu) {
    pangu.spacingPage();
  }

  function isStaging() {
    return window.location.href.indexOf('staging') !== -1 || window.location.href.indexOf('localhost') !== -1;
  }
}
