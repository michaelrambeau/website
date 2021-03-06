//"Projects" page 2013-10-03
$(document).ready(function(){
    
    var $window = $(window);
    var $body   = $(document.body);
    
    if (false) $('.logo-tooltip').tooltip({placement: 'right',container: 'body'});
    
    var navHeight = $('.navbar').outerHeight(true) + 10;

    if (false) $body.scrollspy({
      target: '.bs-sidebar',
      offset: navHeight
    });
    
    $('[href=#]').click(function (e) {
      e.preventDefault();
    });
    
    if (false) setTimeout(function () {
      initAffix();
    }, 1000);
});
function initAffix(){
    $sideBar = $('.bs-sidebar');
    $sideBar.affix({
      offset: {
        top: function () {
          var offsetTop      = $sideBar.offset().top;
          var sideBarMargin  = parseInt($sideBar.children(0).css('margin-top'), 10);
          var navOuterHeight = $('.header').height() - 100;
          return (this.top = offsetTop - navOuterHeight - sideBarMargin);
          return 0;
        }
      , bottom: function () {
          return (this.bottom = $('footer').outerHeight(true));
        }
      }
    });
}

