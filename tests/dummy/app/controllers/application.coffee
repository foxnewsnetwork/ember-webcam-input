`import Ember from 'ember'`

ApplicationController = Ember.Controller.extend
  urls: Ember.A()
  actions:
    ecto: (uri) -> console.log uri
    submit: (formData) ->
      # Setting this for the integration test
      @set "model", formData

`export default ApplicationController`