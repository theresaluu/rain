$ ->
  console.log "DOM is ready"

  #TODO: function for clicking to load emotion partial form with category ID
  #filled out already on hidden form, based on click

  $('.category').on "click", (event) ->
    console.log "Clicked"
    event.preventDefault()

