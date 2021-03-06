# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_18_225101) do

  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'recipes', force: :cascade do |t|
    t.string 'contentful_id', null: false
    t.string 'title', null: false
    t.string 'image'
    t.text 'description'
    t.string 'chef_name'
    t.jsonb 'tags'
    t.boolean 'is_loaded', default: false, null: false, comment: 'States recipe status if the recipe is fully loaded'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

end
