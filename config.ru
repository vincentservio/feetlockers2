require './config/environment'


use Rack::MethodOverride

use UsersController 
use SneakersController
use SessionController
run ApplicationController
