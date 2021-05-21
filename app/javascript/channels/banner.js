import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if (document.querySelector("#banner-typed-text")) {
    new Typed("#banner-typed-text", {
      strings: ["Come and swap your shoes"],
      typeSpeed: 50,
      loop: true,
      showCursor: false
    });
  }
}
export { loadDynamicBannerText };
