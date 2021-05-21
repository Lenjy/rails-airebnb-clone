// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { event } from "jquery";
import { start } from "turbolinks";
import { loadDynamicBannerText } from '../channels/banner';
import { initFlatpickr } from "../plugins/flatpickr";
initFlatpickr();
// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';


document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  // [...]
  loadDynamicBannerText();
});

const convert = document.getElementById("convert")
const price = document.getElementById("price")

if (convert) {
  convert.addEventListener("click", (event) => {
    event.preventDefault();
    const start = document.getElementsByClassName("start")[0].value.split("-");
    const endy = document.getElementsByClassName("end")[0].value.split("-");
    const daily = document.getElementsByClassName("card-trip-pricing")[0].innerText.slice(0, -1);

    const dateStart = new Date (parseInt(start[0], 10),parseInt(start[1], 10),parseInt(start[2], 10));
    console.log(dateStart);
    const dateEndy = new Date (parseInt(endy[0], 10),parseInt(endy[1], 10),parseInt(endy[2], 10));
    console.log(dateEndy);
    console.log(dateEndy - dateStart);
    const one_day = 1000*60*60*24;
    const days = Math.round(( dateEndy - dateStart )/one_day);
    price.innerText =`${days * daily}$`;
  })
}
