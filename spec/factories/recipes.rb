# frozen_string_literal: true

FactoryBot.define do
  factory :recipe do
    contentful_id { SecureRandom.hex }
    title { Faker::Food.dish }
    description { Faker::Food.description }
    image { Faker::Internet.url }
    chef_name { Faker::Name.name }
    tags { [] }
  end
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
