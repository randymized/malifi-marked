malifi= require 'malifi'
malifi_marked= require '../../../index'

module.exports=
  template_map_:
    'text/html': [
      ['md', malifi_marked]
      ['markdown', malifi_marked]
      ['html', malifi.underscore_renderer]
    ]
