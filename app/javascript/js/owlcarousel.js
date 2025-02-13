import 'owl.carousel/dist/assets/owl.carousel.css';
import 'owl.carousel';
import "owl.carousel/dist/assets/owl.theme.default.min.css"

     
      $( document ).on('turbolinks:load', function() {
        $(function () {
            $('.owl-carousel').owlCarousel(
              {
                items: 1,
                loop: true,
                autoplay: true
              }
            );
          });
      })