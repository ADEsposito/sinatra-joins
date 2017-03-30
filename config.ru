require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/StudentController'
require './controllers/CourseController'


require './models/StudentModel'
require './models/CourseModel'



map('/') {run ApplicationController}
map('/students') {run StudentController}
map('/courses') {run CourseController}
