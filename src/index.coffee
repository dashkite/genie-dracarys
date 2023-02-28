import * as Dracarys from "@dashkite/dracarys"

export default (genie) ->

  if ( options = genie.get "dracarys" )?
  
    client = Dracarys.Client.create options.name

    genie.define "dracarys:clear", ->
      client.clear()
      
    genie.define "dracarys:delete", ->
      client.undeploy()

    genie.define "dracarys:create", ->
      client.deploy()

    genie.define "dracarys:status", ->
      status = await client.status()
      console.log { status }

  
  
