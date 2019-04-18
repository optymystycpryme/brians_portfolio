ready = ->
  Typed.new '.element',
    strings: [
      "This is an awesome Ruby on Rails portfolio, and this is being typed to you by Typed.js, sooooooo cool!!! Have a look around at all the awesome features and don't forget to click the link below to find out more about me."
    ]
    typeSpeed: 0
  return
$(document).ready ready
$(document).on 'turbolinks:load', ready
