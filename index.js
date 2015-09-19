/* jshint node: true */
'use strict';

module.exports = {
  name: 'ember-webcam-input',
  included: function(app) {
    this._super.included(app);

    app.import(app.bowerDirectory + "/webcamjs/webcam.min.js");
    app.import(app.bowerDirectory + "/webcamjs/webcam.swf", {
      destDir: "assets"
    });
  }
};
