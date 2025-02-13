//Theme static JS & CSS import - this makes the navbar opacity work.
// I've removed most of the theme.js document as it had many errors in the console about the device used (e.g.: android, ios, firefox, ie, etc.)
// In case needed, backup the file with the original repo. - The page worked, but gave 6 errors (and 6 jquery parsing errors)
import theme from "./theme.js"
import csstheme from "../css/theme.css"

function mainTheme() {
    theme.remove();
    csstheme.remove();
    csstheme.init()    
    theme.init()
}

// This must be added so it's called after turbolinks loads. Otherwise it loads before the page is ready, and doesn't show until refreshed
document.addEventListener("turbolinks:load", function () { mainTheme(); });

export { mainTheme };