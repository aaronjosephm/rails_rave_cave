import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Let the party come to you..."],
    typeSpeed: 70,
    loop: false
  });
}

export { loadDynamicBannerText };
