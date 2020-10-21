require 'rails_helper'

describe Recipes::Commands::CreateRecipe do
  let(:resource) { OpenStruct.new id: SecureRandom.hex, title: 'Some title' }
  subject { described_class.new(resource) }

  it 'responds to call' do
    expect(subject).to respond_to :call
  end
  it 'creates a recipe from remote recipe resource' do
    recipe = subject.call
    expect(recipe.persisted?).to be_truthy
    expect(recipe).to be_instance_of Recipe
    expect(recipe.title).to eq 'Some title'
  end
end