redis_server = require('redis')
redis = redis_server.connect('127.0.0.1', 6379)
if os.getenv('REDIS_PASSWORD') then
	redis:auth(os.getenv('REDIS_PASSWORD')) -- If RedisPassWord
end
SID = "TCHID"
require('Tabchi')
function tdcli_update_callback(data)  Doing(data, SID)  end
