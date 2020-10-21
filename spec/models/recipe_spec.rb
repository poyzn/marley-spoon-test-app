# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it 'builds an instance' do
    expect(subject).to be_instance_of Recipe
  end
  %i[title image description contentful_id].each do |prop|
    it "responds to #{prop}" do
      expect(subject).to respond_to prop
    end
  end
  it 'is invalid without title' do
    subject = build :recipe, title: nil
    expect(subject.valid?).to be_falsey
  end
  it 'is invalid without contentful_id' do
    subject = build :recipe, contentful_id: nil
    expect(subject.valid?).to be_falsey
  end
  it 'is valid with title and contentfule id' do
    subject = described_class.new title: 'Some title', contentful_id: SecureRandom.hex
    expect(subject.valid?).to be_truthy
  end
  it 'create with title' do
    subject = described_class.create title: 'Some title', contentful_id: SecureRandom.hex
    expect(subject.persisted?).to be_truthy
    expect(subject.title).to eq 'Some title'
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
