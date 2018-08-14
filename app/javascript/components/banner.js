import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["The biggest party of your life awaits you..."],
    typeSpeed: 70,
    loop: false
  });
}

export { loadDynamicBannerText };
