`import Ember from 'ember'`

ApplicationController = Ember.Controller.extend
  actions:
    submit: (formData) ->
      # Setting this for the integration test
      @set "model", formData

`export default ApplicationController`