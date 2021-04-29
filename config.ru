require './config/environment'
require './main'

require './models/issue'


 require_relative 'models/issue'
 
use Rack::MethodOverride

use UsersController 
use SneakersController
use SessionController
run ApplicationController
