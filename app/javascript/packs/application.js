// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"


//import BOOTSTRAP SCSS & JS
import 'bootstrap'
import "../css/site"
import '@popperjs/core'

//Theme static JS & CSS import
document.addEventListener("turbolinks:load", require("../js/theme"));
document.addEventListener("turbolinks:load", require("../css/theme"));

// font awesome
require("@fortawesome/fontawesome-free/js/all.min.js")

//Owl Carousel
import "../js/owlcarousel"

//tippy - On hover box from plants individual page
import tippy from 'tippy.js';
import 'tippy.js/dist/tippy.css';
import 'tippy.js/themes/light-border.css'
import 'tippy.js/themes/translucent.css'
window.tippy = tippy;


Rails.start()
Turbolinks.start()
ActiveStorage.start()