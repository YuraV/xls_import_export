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

ActiveRecord::Schema.define(:version => 20140416114455) do

  create_table "faculties", :force => true do |t|
    t.string   "faculty_name"
    t.string   "specialnist"
    t.string   "kvalifikaciya"
    t.string   "person_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "form_of_educations", :force => true do |t|
    t.string   "education_form"
    t.string   "person_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "graduated_students", :force => true do |t|
    t.string   "initials"
    t.string   "faculty_name"
    t.string   "study_type"
    t.string   "department"
    t.string   "qualification"
    t.string   "appointment"
    t.string   "search_archive_data"
    t.string   "person_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "join_tables", :force => true do |t|
    t.string   "initials"
    t.string   "qualification"
    t.string   "appointment"
    t.integer  "person_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "initials"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rector_appointments", :force => true do |t|
    t.string   "nakaz"
    t.string   "person_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "initials"
    t.string   "department"
    t.string   "study_type"
    t.string   "appointment"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "person_id"
  end

end
