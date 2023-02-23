import * as Dracarys from "@dashkite/dracarys"

export default (genie) ->

  if ( options = genie.get "dracarys" )?
  
    client = Dracarys.Client.create options.name

    genie.define "dracarys:clean", ->
      client.clean()
      
    genie.define "dracarys:delete", ->
      client.delete()

    genie.define "dracarys:create", ->
      client.create()

  
  
