
/* /web/static/src/js/public/lazyloader.js defined in bundle 'web.assets_frontend_minimal_js' */
odoo.define('web.public.lazyloader',function(require){'use strict';var blockEvents=['submit','click'];var blockFunction=function(ev){ev.preventDefault();ev.stopImmediatePropagation();};var waitingLazy=false;function waitLazy(){if(waitingLazy){return;}
waitingLazy=true;document.querySelectorAll('.o_wait_lazy_js').forEach(function(element){blockEvents.forEach(function(evType){element.addEventListener(evType,blockFunction);});});}
function stopWaitingLazy(){if(!waitingLazy){return;}
waitingLazy=false;document.querySelectorAll('.o_wait_lazy_js').forEach(function(element){blockEvents.forEach(function(evType){element.removeEventListener(evType,blockFunction);});element.classList.remove('o_wait_lazy_js');});}
if(document.readyState!=='loading'){waitLazy();}else{document.addEventListener('DOMContentLoaded',function(){waitLazy();});}
var doResolve=null;var _allScriptsLoaded=new Promise(function(resolve){if(doResolve){resolve();}else{doResolve=resolve;}}).then(function(){stopWaitingLazy();});if(document.readyState==='complete'){setTimeout(_loadScripts,0);}else{window.addEventListener('load',function(){setTimeout(_loadScripts,0);});}
function _loadScripts(scripts,index){if(scripts===undefined){scripts=document.querySelectorAll('script[data-src]');}
if(index===undefined){index=0;}
if(index>=scripts.length){if(typeof doResolve==='function'){doResolve();}else{doResolve=true;}
return;}
var script=scripts[index];script.addEventListener('load',_loadScripts.bind(this,scripts,index+1));script.src=script.dataset.src;script.removeAttribute('data-src');}
return{loadScripts:_loadScripts,allScriptsLoaded:_allScriptsLoaded,};});;

/* /web_editor/static/src/js/frontend/loader_loading.js defined in bundle 'web.assets_frontend_minimal_js' */
(function(){'use strict';document.addEventListener('DOMContentLoaded',()=>{document.querySelectorAll('textarea.o_wysiwyg_loader').forEach(textarea=>{var wrapper=document.createElement('div');wrapper.classList.add('position-relative','o_wysiwyg_wrapper');var loadingElement=document.createElement('div');loadingElement.classList.add('o_wysiwyg_loading');var loadingIcon=document.createElement('i');loadingIcon.classList.add('text-600','text-center','fa','fa-circle-o-notch','fa-spin','fa-2x');loadingElement.appendChild(loadingIcon);wrapper.appendChild(loadingElement);textarea.parentNode.insertBefore(wrapper,textarea);wrapper.insertBefore(textarea,loadingElement);});});})();