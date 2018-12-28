jQuery ->
  maskBehavior = (val) ->
    if val.replace(/\D/g, '').length == 11 then '(00) 00000-0000' else '(00) 0000-00009'

  options = onKeyPress: (val, e, field, options) ->
    field.mask maskBehavior.apply({}, arguments), options
    return
  $('.telefone_novo').mask maskBehavior, options
