module.exports= (req,res,next)->
  layout_context= req.layout_context
  req.malifi.render 'text/html',
    body: layout_context.body
    name: layout_context.context.name
