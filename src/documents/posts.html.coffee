---
layout: "page"
title: "Posts"
description: "A blog to share Michael Rambeau's experience as an IT engineer in Japan"
menuId: "POSTS"
className: 'posts'
standalone: true
---


options =
  relativeOutDirPath: 'posts'
  #active: true
docs = @getCollection('documents').findAll(options, [date:-1]).toJSON()

#p 'Some posts to share my experience as an IT engineer in Japan'

div '.posts', ->
  for doc in docs
    div '.post', ->
      div '.pure-g-r', ->
        div '.pure-u-3-5', ->
          div '.first-col', ->
            div '.date.pull-left', ->
              div '.date', @getMonth(doc.date) + ' '+ doc.date.getFullYear()
            h2  doc.title
            div ->
              p '.post-introduction', doc.description
              if doc.introduction
                p -> doc.introduction
              p '.button-container', ->
                a '.pure-button.pure-button-secondary.pure-button-xsmall', href: @getPath(doc.url), 'Read post &raquo;'

        div '.pure-u-2-5', ->
          div '.second-col', ->
            if doc.image
              url = if doc.image.url then doc.image.url else @getPath('img/blog/'+doc.image)
              a href: @getPath(doc.url), title: doc.title, ->
                img '.img-responsive.img-thumbnail2', src: url, alt: doc.title
            div '.clearfix', ''

getIntroduction = (doc) =>
 doc.title
