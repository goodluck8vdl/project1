 var refreshRating = function() {
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
        readOnly: true,
        score: function() {
            return $(this).attr('data-score');
        }
    });
};

 $(document).on('turbolinks:load ajaxSuccess', function(){
   refreshRating();
   $('.img-zoom').elevateZoom({
     zoomType: "lens",
     lensShape: "square",
     lensSize: 120,
     scrollZoom: true,
     lensFadeIn: 700,
     lensFadeOut: 700
    });
  });
