(function (doc, win) {
			var docEl = doc.documentElement,
			resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
			recalc = function () {
			var clientWidth = docEl.clientWidth;
			if (!clientWidth) return;
//			if(clientWidth>=1080){
//			docEl.style.fontSize = '100px';
//			}else{
//			docEl.style.fontSize = 100 * (clientWidth / 1080) + 'px';
//			}
//注释此块是为了让宽屏的时侯，依然可以放大显示。而不是保持在100px的基础上。---dch注。
docEl.style.fontSize = 100 * (clientWidth / 1920) + 'px';
			};
			if (!doc.addEventListener) return;
			win.addEventListener(resizeEvt, recalc, false);
			doc.addEventListener('DOMContentLoaded', recalc, false);
			})(document, window);