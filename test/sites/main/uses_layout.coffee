module.exports= (req,res,next)->
  req.malifi.render 'text/html',
    name: 'testing'

module.exports.meta= (prev)->
  ext_malifi_marked_options_: ''
  ext_malifi_marked_layout_path_: '/layout_'