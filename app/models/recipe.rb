# frozen_string_literal: true

# Recipe model
class Recipe < ApplicationRecord
  validates :contentful_id, presence: true
  validates :title, presence: true
end

# == Schema Information
#
# Table name: recipes
#
#  id                                                            :bigint           not null, primary key
#  chef_name                                                     :string
#  description                                                   :text
#  image                                                         :string
#  is_loaded(States recipe status if the recipe is fully loaded) :boolean          default(FALSE), not null
#  tags                                                          :jsonb
#  title                                                         :string           not null
#  created_at                                                    :datetime         not null
#  updated_at                                                    :datetime         not null
#  contentful_id                                                 :string           not null
#
