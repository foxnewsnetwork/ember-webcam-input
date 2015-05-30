`import Ember from 'ember'`
`import layout from '../templates/components/ember-webcam-input'`

EmberWebcamInputComponent = Ember.Component.extend
  tagName: "button"
  classNames: ["ember-webcam-input"]
  layout: layout
  type: "button"
  attributeBindings: ["type"]
  options:
    width: 320
    height: 240
    dest_width: 640
    dest_height: 480
    image_format: 'jpeg'
    jpeg_quality: 90
    force_flash: false
    flip_horiz: true
    fps: 45
  pathToSWF: "assets/webcam.swf"

  didInsertElement: ->
    Webcam.setSWFLocation @get "pathToSWF"
    Webcam.set @get "options"
    @set "picUrls", Ember.A []
    Webcam.attach @$()[0]
  
  click: ->
    Webcam.snap (dataUri) =>
      @get("picUrls")?.pushObject dataUri

  willDestroyElement: ->
    Webcam.reset()

`export default EmberWebcamInputComponent`
