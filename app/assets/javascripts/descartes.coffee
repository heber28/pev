# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#descarte_proprietario_cep").keyup ->
    cep = $("#descarte_proprietario_cep").val()
    cep = cep.match(/_/)
    if cep == null
      cep = $("#descarte_proprietario_cep").val()
      cep = cep.replace("-", "");
      $.getJSON "/pesquisar_por_cep?cep=" + cep, (data) ->
        if data.address != ""
          $("#descarte_proprietario_endereco").val data.address

  $("#descarte_transportador_cep").keyup ->
    cep = $("#descarte_transportador_cep").val()
    cep = cep.match(/_/)
    if cep == null
      cep = $("#descarte_transportador_cep").val()
      cep = cep.replace("-", "");
      $.getJSON "/pesquisar_por_cep?cep=" + cep, (data) ->
        if data.address != ""
          $("#descarte_transportador_endereco").val data.address
