path = require('path');

class AssetsManager
  constructor: (@css, @js)->
    @root = ''

  combinePath: (file) =>
    path.join(@root, file) if @root != ''
    file if @root == ''

  addCss: (file, namespace=undefined) =>    
    @css.addFile(@combinePath(file), namespace)

  addCssUrl: (file, namespace=undefined) =>    
    @css.addUrl(file, namespace)

  addJs: (file, namespace=undefined) =>   
    @js.addFile(@combinePath(file), namespace)

  addJsUrl: (file, namespace=undefined) =>    
    @js.addUrl(file, namespace)

  addJsObject: (obj, namespace=undefined) =>
    @js.addObject(obj, namespace)

module.exports = AssetsManager
