# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$paws = $('.star').children('img')
$paws.each (index, paw) ->
  if paw.attr('src') == '/assets/cancel-off.png'
    $('#paws-message').append '<p>this sucks!</p>'
  return