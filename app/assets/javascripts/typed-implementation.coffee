ready = ->
  Typed.new '.element',
    strings: [
      "Hey there, welcome to Brian Haltom's porfolio, built with Ruby on Rails, Javascript and Bootstrap 4. Follow the links above, or the one below to see more.  "
    ]
    typeSpeed: 0
  return
$(document).ready ready
$(document).on 'turbolinks:load', ready
