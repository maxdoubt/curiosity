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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140828213844) do

  create_table "courses", force: true do |t|
    t.text     "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "daykinds", force: true do |t|
    t.text     "name"
    t.integer  "school_id"
    t.integer  "semester_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "days", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gradelevels", force: true do |t|
    t.text     "name"
    t.text     "abbrev"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gradelevels_standards", id: false, force: true do |t|
    t.integer "gradelevel_id"
    t.integer "standard_id"
  end

  add_index "gradelevels_standards", ["gradelevel_id", "standard_id"], name: "index_gradelevels_standards_on_gradelevel_id_and_standard_id"
  add_index "gradelevels_standards", ["standard_id"], name: "index_gradelevels_standards_on_standard_id"

  create_table "lesson_entrysets", force: true do |t|
    t.text     "name"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lesson_items", force: true do |t|
    t.text     "content"
    t.integer  "lesson_id"
    t.integer  "lesson_template_box_id"
    t.integer  "user_id"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lesson_template_boxes", force: true do |t|
    t.integer  "lesson_template_id"
    t.integer  "lesson_entryset_id"
    t.integer  "row"
    t.integer  "col"
    t.integer  "rowspan"
    t.integer  "colspan"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lesson_templates", force: true do |t|
    t.text     "name"
    t.text     "description"
    t.integer  "rows"
    t.integer  "cols"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lessons", force: true do |t|
    t.integer  "user_id"
    t.integer  "lesson_template_id"
    t.date     "begin_date"
    t.date     "end_date"
    t.integer  "lesson_state_id"
    t.integer  "parent_id"
    t.text     "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.text     "name"
    t.text     "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schoolyears", force: true do |t|
    t.date     "begin_date"
    t.date     "end_date"
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sectiondays", force: true do |t|
    t.integer  "daykind_id"
    t.time     "begin_time"
    t.time     "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: true do |t|
    t.text     "name"
    t.integer  "course_id"
    t.integer  "semester_id"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "semesters", force: true do |t|
    t.text     "name"
    t.date     "begin_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "standard_domains", force: true do |t|
    t.integer  "subject_id"
    t.integer  "standardkind_id"
    t.text     "name"
    t.text     "abbrev"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "standardkinds", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "standards", force: true do |t|
    t.text     "lang"
    t.text     "ref_id"
    t.text     "ref_uri"
    t.integer  "number"
    t.text     "description"
    t.text     "statement_code"
    t.text     "initiative"
    t.text     "framework"
    t.text     "set"
    t.text     "grade"
    t.text     "domain"
    t.text     "domain_description"
    t.integer  "standard_domain_id"
    t.text     "cluster"
    t.text     "standard"
    t.text     "component"
    t.text     "statement"
    t.text     "learning_standard_document_ref_id"
    t.text     "learning_standard_item_ref_id"
    t.text     "relationship_type"
    t.integer  "standardkind_id"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: true do |t|
    t.text     "firstname"
    t.text     "lastname"
    t.integer  "user_id"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
