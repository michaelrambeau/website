selectedClass = 'pure-menu-selected'
header '.hidden-print', ->
  div '.container', ->
    div '.pure-menu.pure-menu-open.pure-menu-horizontal.navigation', ->
      #img.pure-menu-headingX.pure-hidden-phone(src="http://michaelrambeau.com/it/img/mr.png",width=200)
      ul '.social.pure-hidden-phone', ->
        #Facebook page http://www.facebook.com/profile.php?id=525808362
        li ->
          a target: "_blank", href: "https://github.com/michaelrambeau", title: "View Michael Rambeau's profile on GitHub", ->
            text @partial 'svg/github.svg'
        li ->
          a target: "_blank", href: "https://www.facebook.com/michael.rambeau.7", title: "View Michael Rambeau's profile on Facebook", ->
            text @partial 'svg/facebook.svg'
        li ->
          a target: "_blank", href: "https://plus.google.com/115589168984238296965", rel:"publisher", title: "View Michael Rambeau's profile on Google+", ->
            text @partial 'svg/googleplus.svg'
        li ->
          a target: "_blank", href: "https://www.linkedin.com/in/michaelrambeau", title: "View Michael Rambeau's profile on Linkedin", ->
            text @partial 'svg/linkedin.svg'
      ul ->
        li class: (if @document.menuId == 'HOME' then selectedClass else ''), ->
          a href: @getPath(''), ->
            i '.octicon.octicon-home.pure-hidden-desktop',''
            span '.pure-hidden-phone', ' Home'
        li class: (if @document.menuId == 'APPS' then selectedClass else ''), ->
          a href: @getPath('projects'), -> 'Projects'
        li class: (if @document.menuId == 'EXPERIENCE' then selectedClass else ''), ->
          a href: @getPath('resume'), -> 'Resume'
        li class: (if @document.menuId == 'POSTS' then selectedClass else ''), ->
          a href: @getPath('posts'), -> 'Posts'

