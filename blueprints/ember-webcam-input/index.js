module.exports = {
  description: 'Installs foreign dependencies for webcamjs'

  // locals: function(options) {
  //   // Return custom template variables here.
  //   return {
  //     foo: options.entity.options.foo
  //   };
  // }

  afterInstall: function(options) {
    return this.addBowerPackageToProject('webcamjs', '~1.0.0');
  }
};
