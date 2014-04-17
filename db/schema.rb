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

ActiveRecord::Schema.define(version: 20140416194620) do

  create_table "life_events", force: true do |t|
    t.string  "description"
    t.string  "date_happened"
    t.boolean "life_is_good",         default: true
    t.string  "person_most_affected"
  end

  create_table "school_attendeds", force: true do |t|
    t.string  "description"
    t.string  "date_started"
    t.string  "date_graduated"
    t.string  "date_dropped_out"
    t.boolean "great_school",     default: true
    t.string  "name"
  end

end
