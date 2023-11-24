import * as Dracarys from "@dashkite/dracarys"
import * as DRN from "@dashkite/drn-sky"

export default (genie) ->

  if ( options = genie.get "dracarys" )?
  
    name = await DRN.resolve options.name
    client = Dracarys.Client.create name

    genie.on "deploy", "dracarys:deploy"

    genie.define "dracarys:clear", ->
      client.clear()
      
    genie.define "dracarys:undeploy", ->
      client.undeploy()

    genie.define "dracarys:deploy", ->
      client.deploy()

    genie.define "dracarys:status", ->
      status = await client.status()
      console.log { status }

  
  
