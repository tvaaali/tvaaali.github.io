// Make sure sw are supported
if ('serviceWorker' in navigator) {
  window.addEventListener('load', () => {
    navigator.serviceWorker
      .register('../sw_cached_site.js')
      .then(reg => console.log('Service Worker: Registered (Pages)'))
      .catch(err => console.log(`Service Worker: Error: ${err}`));
  });
}

 $("#zcontent").load("/included.html");
  // (function includeHTML() {
  //   var z, i, elmnt, file, xhttp;
  //   z = document.getElementsByTagName("*");
  //   for (i = 0; i < z.length; i++) {
  //     elmnt = z[i];
  //     file = elmnt.getAttribute("z-include-html");
  //     if (file) {
  //       xhttp = new XMLHttpRequest();
  //       xhttp.onreadystatechange = function () {
  //         if (this.readyState == 4) {
  //           if (this.status == 200) {
  //             elmnt.innerHTML = this.responseText;
  //           }
  //           if (this.status == 404) {
  //             elmnt.innerHTML = "Page not found.";
  //           }
  //           elmnt.removeAttribute("z-include-html");
  //           includeHTML();
  //         }
  //       }
  //       xhttp.open("GET", file, true);
  //       xhttp.send();
  //       return;
  //     }
  //   }
  // })();