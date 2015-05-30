module.exports = {
  afterInstall: function(options) {
    return this.addBowerPackageToProject('webcamjs', '~1.0.0');
  }
};
