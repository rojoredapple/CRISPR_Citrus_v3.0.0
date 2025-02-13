import tinymce from './tinymce.min.js'
import './skins/lightgray/skin.min.css'
import './skins/lightgray/content.min.css'

function tinyMce() {
    tinymce.remove();    
    tinymce.init({
        selector: 'textarea',
        height: 400,
        plugin: 'a_tinymce_plugin',
        a_plugin_option: true,
        a_configuration_option: 400,
        skin: false,
        content_css: false,
        content_style: "body {color: black; font-size: 14pt; font-family: Arial}",
       })}

// This must be added so it's called after turbolinks loads. Otherwise it loads before the page is ready, and doesn't show until refreshed
document.addEventListener("turbolinks:load", function () { tinyMce(); });

export { tinyMce };

// https://www.freecodecamp.org/news/how-to-setup-tinymce-in-your-rails-app-using-webpack-edf030915332/