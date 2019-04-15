ready = ->
  Typed.new '.element',
    strings: [
      "Hey there, feel free to look around, this is a Ruby on Rails application, styled with Bootstrap 4 and CSS, it's acting as the portfolio page for Brian Haltom"
    ]
    typeSpeed: 0
  return
$(document).ready ready
$(document).on 'turbolinks:load', ready
