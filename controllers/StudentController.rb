class StudentController < ApplicationController

  get '/' do
      @students =  Student.all
      @students.to_json
  end

  get '/:id' do
    @student = Student.find(id)
    @student.to_json
  end

  post '/' do
    student = JSON.parse(request.body.read)
    @student = Student.new
    @student.title = student["name"]
    @student.save

    @students = Student.all
    @students.to_json
  end

  patch '/:id' do
    content_type :json

    id = params[:id]
    student = JSON.parse(request.body.read)

    @student = Student.find(id)
    @student.title = student["name"]
    @student.save

    @students = Student.all
    @students.to_json
  end

  delete '/:id' do
    id = params[:id]

    @student = Student.find(id)
    @student.destroy

    @students = Student.all
    @students.to_json
  end
end
