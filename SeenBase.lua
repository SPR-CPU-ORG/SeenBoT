redis_server = require('redis')
redis = redis_server.connect('127.0.0.1', 6379)
SID = "TCHID"
require('SeenBot')
function tdcli_update_callback(data)  Doing(data, SID)  end
