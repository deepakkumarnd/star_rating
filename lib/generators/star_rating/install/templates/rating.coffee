jQuery ->
  initialize = () ->
    for i in [1..5]
      $(".star").addClass("off")
      for field in $(".rating_value_field")
        res_id = field.id.split('_')[1]
        star_count = parseInt(field.value)
        for i in [1..star_count] when star_count isnt 0
          $("##{res_id}_#{i}").removeClass("off")
          $("##{res_id}_#{i}").addClass("on")

  initialize()

  $(".star").click ->
    clicked = $(this)
    item_id = clicked.attr("id")
    res_id = item_id.split('_')[0]
    star_count = parseInt(item_id.split('_')[1])
    $(".#{res_id}").removeClass("on")
    $(".#{res_id}").addClass("off")
    post_rating(res_id, star_count)
    for i in [1..star_count]
      $("##{res_id}_#{i}").removeClass("off")
      $("##{res_id}_#{i}").addClass("on")

  post_rating = (res_id, star_count) ->
    $("#input_#{res_id}").attr("value", star_count)
    $.ajax
      type: "put"
      url: $("#form_#{res_id}").attr("action")
      data: $("#form_#{res_id}").serialize()
      dataType: "JSON"
