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

ActiveRecord::Schema.define(:version => 20140422192133) do

  create_table "akadem_vidpustkas", :force => true do |t|
    t.string   "initials"
    t.string   "faculty"
    t.string   "kyrs"
    t.string   "study_type"
    t.string   "pruchuna_akadem_vidpystku"
    t.string   "data_pochatky_akadem_vidpystku"
    t.string   "data_zavershenja_akadem_vidpystku"
    t.string   "nomer_data_nakazy"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "aspirat_joins", :force => true do |t|
    t.string   "initials"
    t.string   "faculty"
    t.boolean  "z_vidruvom_vid_vurobnyctva"
    t.string   "shufr_i_nazva_specialnosti"
    t.string   "vidrahyvanja_vid_chusla"
    t.string   "nakaz_rektora"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "aspirat_lefts", :force => true do |t|
    t.string   "initials"
    t.string   "faculty"
    t.boolean  "z_vidruvom_vid_vurobnyctva"
    t.string   "shufr_i_nazva_specialnosti"
    t.string   "vidrahyvanja_vid_chusla"
    t.string   "nakaz_rektora"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
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

  create_table "ipo_vidrahyvanjas", :force => true do |t|
    t.string   "initials"
    t.string   "faculty"
    t.string   "specialnist"
    t.string   "study_type"
    t.string   "after_diploma_institute"
    t.string   "institude_of_qualification_improvment"
    t.string   "nakaz_rektora"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "ipo_zarahyvanjas", :force => true do |t|
    t.string   "initials"
    t.string   "faculty"
    t.string   "specialnist"
    t.string   "study_type"
    t.string   "after_diploma_institute"
    t.string   "institude_of_qualification_improvment"
    t.string   "nakaz_rektora"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "join_tables", :force => true do |t|
    t.string   "initials"
    t.string   "qualification"
    t.string   "appointment"
    t.integer  "person_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "knuga_vudachi_duplomivs", :force => true do |t|
    t.string   "initials"
    t.string   "rik_vstypy"
    t.string   "rik_vupysky"
    t.string   "faculty"
    t.string   "specialnist"
    t.string   "kvalifikacia"
    t.string   "forma_navchanya"
    t.string   "vidznaka"
    t.string   "serija_ta_nomer_duplomy"
    t.string   "vudano"
    t.string   "protokol_dekanaty_vid"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "perevids", :force => true do |t|
    t.string   "initials"
    t.string   "faculty"
    t.string   "kyrs"
    t.string   "study_type"
    t.string   "tekst_nakazy"
    t.string   "data_nakazy"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "ponovlenyas", :force => true do |t|
    t.string   "initials"
    t.string   "faculty"
    t.string   "kyrs"
    t.string   "study_type"
    t.string   "pruchuna_ponovlenya_tekst_nakazy"
    t.string   "z_jakogo_chusla"
    t.string   "nomer_i_data_nakazy"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "povernenya_z_akadem_vidpystkus", :force => true do |t|
    t.string   "initials"
    t.string   "faculty"
    t.string   "kyrs"
    t.string   "z_jakogo_chusla_dopysheno_do_zanyat"
    t.string   "y_zvyazky_z_chum_dopysheno_do_zanyat"
    t.string   "nomer_i_data_nakazy"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  create_table "povtornui_kyrs", :force => true do |t|
    t.string   "initials"
    t.string   "faculty"
    t.string   "kyrs"
    t.string   "study_type"
    t.string   "pruchuna_povtornogo_kyrsy"
    t.string   "nakaz"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "initials"
    t.string   "department"
    t.string   "faculty_name"
    t.string   "appointment"
    t.integer  "person_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "vidrahyvanjas", :force => true do |t|
    t.string   "initials"
    t.string   "faculty"
    t.string   "kyrs"
    t.string   "study_type"
    t.string   "pruchuna_vidrahyvanja"
    t.string   "z_jakogo_chusla"
    t.string   "nomer_i_data_nakazy"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "zarahyvanja_v_ndches", :force => true do |t|
    t.string   "initials"
    t.string   "posada_na_chas_zarah"
    t.string   "posada_na_jaky_zarah"
    t.string   "tema_na_jaky_zarah"
    t.string   "symisnuctvo"
    t.string   "stavka"
    t.string   "zarahyvanja_z"
    t.string   "zarahyvanja_do"
    t.string   "posadovyi"
    t.string   "yklad"
    t.string   "nakaz_rektora"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "zarahyvanya_na_2_6_kyrs", :force => true do |t|
    t.string   "initials"
    t.string   "faculty"
    t.string   "kyrs"
    t.string   "text_nakazy"
    t.string   "data_nakazy"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "zvilnenja_z_robotus", :force => true do |t|
    t.string   "initials"
    t.string   "posada"
    t.string   "pidrozdil"
    t.string   "z_jakogo_chusla"
    t.string   "pruchuna"
    t.string   "nakaz_rektora"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "zvilnenya_z_ndches", :force => true do |t|
    t.string   "initials"
    t.string   "posada"
    t.string   "pruchuna"
    t.string   "z_jakogo_chusla"
    t.string   "nakaz_rektora"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
