require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/StudentController'
require './controllers/CourseController'
require './controllers/LocationController'



require './models/StudentModel'
require './models/CourseModel'
require './models/LocationModel'



map('/') {run ApplicationController}
map('/students') {run StudentController}
map('/courses') {run CourseController}
map('/locations') {run LocationController}
