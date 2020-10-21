# frozen_string_literal: true

class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :contentful_id, null: false
      t.string :title, null: false
      t.string :image
      t.text :description
      t.string :chef_name
      t.jsonb :tags
      t.boolean :is_loaded, default: false, null: false,
                comment: 'States recipe status if the recipe is fully loaded'
      t.timestamps
    end
  end
end
