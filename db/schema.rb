# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140429071753) do

  create_table "aspirants", :force => true do |t|
    t.string   "initials"
    t.string   "faculty_name"
    t.boolean  "with_separation"
    t.string   "code_and_name_of_the_speciality"
    t.integer  "person_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "diplomas", :force => true do |t|
    t.string   "initials"
    t.string   "faculty_name"
    t.string   "study_type"
    t.string   "protocol_DEK"
    t.string   "year_of_entry"
    t.string   "end_year"
    t.string   "speciality"
    t.string   "qualification"
    t.string   "insignia"
    t.string   "series_and_number"
    t.string   "date"
    t.integer  "student_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "enrolled_aspirants", :force => true do |t|
    t.string   "initials"
    t.string   "date"
    t.string   "nakaz_rektora"
    t.integer  "aspirant_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "enrolled_students", :force => true do |t|
    t.string   "initials"
    t.string   "faculty_name"
    t.string   "study_type"
    t.string   "nakaz_rektora"
    t.integer  "student_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "exclusion_aspirants", :force => true do |t|
    t.string   "initials"
    t.string   "date"
    t.string   "nakaz_rektora"
    t.integer  "aspirant_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "exclusions", :force => true do |t|
    t.string   "initials"
    t.string   "faculty_name"
    t.string   "kyrs"
    t.string   "study_type"
    t.string   "exclusion_reason"
    t.string   "exclusion_date"
    t.string   "nakaz_rektora"
    t.integer  "student_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "graduates_students", :force => true do |t|
    t.string   "initials"
    t.string   "faculty_name"
    t.string   "study_type"
    t.string   "speciality"
    t.string   "qualification"
    t.string   "nakaz_rektora"
    t.integer  "student_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "initials"
    t.string   "person_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refresh_courses", :force => true do |t|
    t.string   "initials"
    t.string   "faculty_name"
    t.string   "kyrs"
    t.string   "refresh_reason"
    t.string   "study_type"
    t.string   "nakaz_rektora"
    t.integer  "student_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "renovation_students", :force => true do |t|
    t.string   "initials"
    t.string   "faculty_name"
    t.string   "kyrs"
    t.string   "renovation_reason"
    t.string   "study_type"
    t.string   "date"
    t.string   "nakaz_rektora"
    t.integer  "student_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "initials"
    t.integer  "person_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "transfer_students", :force => true do |t|
    t.string   "initials"
    t.string   "faculty_name"
    t.string   "kyrs"
    t.string   "transfer_reason"
    t.string   "study_type"
    t.string   "nakaz_rektora"
    t.integer  "student_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
