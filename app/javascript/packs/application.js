// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

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
import "chartkick/chart.js";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { listenFocus } from "../channels/searchFocus";
import { formBottles } from "../channels/formBottles";

document.addEventListener("turbolinks:load", () => {
  // Call your functions here, e.g:
  // initSelect2();
  listenFocus();
  formBottles();
});

// const resultList = document.querySelectorAll('.result-list > li');

// const btnRouge = document.getElementById('filter-rouge');
// const btnBlanc = document.getElementById('filter-blanc');

// btnRouge.addEventListener("click", () => {
//   btnRouge.classList.toggle('active');
//   if(btnRouge.classList.contains('active')){
//     resultList.forEach((element) => {
//       if(element.dataset.type != "Rouge"){
//         element.style.display = "none";
//       }
//     });
//   } else{
//     resultList.forEach((element) => {
//       if(element.dataset.type != "Rouge"){
//         element.style.display = "block";
//       }
//     });
//   }
// });

// function disableFilter(){
//   allBtn.forEach((element) =>{
//     element.classList.remove("active");
//   })
// }
