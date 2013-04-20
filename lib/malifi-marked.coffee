###!
 * malifi-marked
 * Copyright(c) 2013 Randy McLaughlin <8b629a9884@snkmail.com>
 * MIT Licensed
###
marked= require('marked')
fs= require('fs')

module.exports= marked_renderer=
  compile_file: (req,res,filename,when_compiled)->
    fs.readFile filename, 'utf8', (err, template)->
      if (err)
        when_compiled(err)
      else
        try
          options= req.malifi.meta.ext_malifi_marked_options_ || {}
          html= marked(template,options)
          when_compiled null,
            render: (context,done)->
              done(null, html)
        catch err
          when_compiled(err)