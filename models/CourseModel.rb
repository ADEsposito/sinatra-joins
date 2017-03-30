class Course < ActiveRecord::Base
  self.table_name = "courses"
  has_many :students
  has_and_belongs_to_many :locations, join_table: 'course_locations', class_name: 'Location'
end
