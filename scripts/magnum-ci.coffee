# Description:
#   Find the build status of an open-source project on Travis
#   Can also notify about builds, just enable the webhook notification on travis http://about.travis-ci.org/docs/user/build-configuration/ -> 'Webhook notification'
#
# Dependencies:
#
# Configuration:
#   None
#
# Commands:
#   hubot travis me <user>/<repo> - Returns the build status of https://github.com/<user>/<repo>
#
# URLS:
#   POST /hubot/travis?room=<room>[&type=<type]
#     - for XMPP servers (such as HipChat) this is the XMPP room id which has the form id@server
#
# Author:
#   sferik
#   nesQuick
#   sergeylukin

url = require('url')

module.exports = (robot) ->

  robot.router.post "/hubot/magnum-ci", (req, res) ->


    try
      payload = JSON.parse req.body.payload
      user = {}
      user.room = payload.room if payload.room
      user.type = payload.type if payload.type

      robot.send "#{payload.title}"

    catch error
      console.log "travis hook error: #{error}. Payload: #{req.body.payload}"

    res.end JSON.stringify {
      send: true #some client have problems with and empty response, sending that response ion sync makes debugging easier
    }