malifi-marked
===========

Adds marked (https://github.com/chjj/marked) markdown processing to Malifi.
Please note that because the result is an HTML fragment that is missing doctype, html and body, this project may be of limited utility.

Usage:
In the metadata `template_map_` object for the target MIME type, map file extension(s) to `malifi-marked`.

For example, to establish mapping of md or markdown files for an entire site, in the site's root directory `_default.meta.coffee` file:
```
malifi_marked= require 'malifi-marked'

module.exports=
  template_map_:
    'text/html': [
      ['md', malifi_marked]
      ['markdown', malifi_marked]
    ]
```

Alternatively, in Javascript, place the following in `_default.meta.js`:
```
(function() {
  var malifi_marked;

  malifi_marked = require('malifi-marked');

  module.exports = {
    template_map_: {
      'text/html': [
        ['md', malifi_marked],
        ['markdown', malifi_marked]
      ]
    }
  };

}).call(this);
```

Of course, the metadata file could define other metadata, and the mapping could be established for any directory or even for individual URLs.

## Options

If `ext_malifi_marked_options_` is defined in metadata, those options will be passed to marked's `marked` function.
