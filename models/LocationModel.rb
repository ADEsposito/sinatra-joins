class Location < ActiveRecord::Base
  self.table_name = "courses"
  has_and_belongs_to_many :courses, join_table: 'course_locations', class_name: 'Course'
end
