class CourseController < ApplicationController

  get '/' do
      @course =  Course.all
      @course.to_json
  end

  get '/:id' do
    id = params[:id]

    @course = Course.find(id)
    @course.to_json
  end

  post '/' do
    my_course = JSON.parse(request.body.read)
    @course = Course.new
    @course.title = my_course["name"]
    @course.save

    @courses = Course.all
    @courses.to_json
  end

  patch '/:id' do
    response['Access-Control-Allow-Origin'] = '*'
    content_type :json

    id = params[:id]
    my_course = JSON.parse(request.body.read)

    @course = Course.find(id)
    @course.title = my_course["name"]
    @course.save

    @courses = Course.all
    @courses.to_json
  end

  delete '/:id' do
    id = params[:id]

    @course = Course.find(id)
    @course.destroy

    @courses = Course.all
    @courses.to_json
  end
end
