# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#author_continent").change ->
    option_url = "/api/continents/#{$('#author_continent :selected').val()}/countries.json"
    $.get option_url, (data) ->
      $("#author_country").empty()
      $.each data, (key, country) ->
        country_option = document.createElement("option")
        country_option.value = country.id
        country_option.text = country.name
        console.log
        $("#author_country").append country_option
        return

      return

    return

  return


