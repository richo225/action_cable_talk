App.borat = App.cable.subscriptions.create { channel: "BoratChannel", room: "blue" },
#   # connected: ->
#     # console.log "connected", arguments, this
#
#     # Called when the subscription is ready for use on the server
#
#   # disconnected: ->
#     # console.log "aeee"
#     # Called when the subscription has been terminated by the server
#
  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $('#messages').append data['body']
#
#
# # App.borat.send({ sent_by: "Paul", body: "ffs" })
