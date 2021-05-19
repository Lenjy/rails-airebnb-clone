import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Come and swap your shoes"],
    typeSpeed: 50,
    loop: true,
    showCursor: false
  });
}

export { loadDynamicBannerText };
