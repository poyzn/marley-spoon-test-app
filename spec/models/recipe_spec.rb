# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it 'responds to content' do
    expect(subject).to respond_to :content
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
