require 'rails_helper'

describe Recipes::Presenters::ItemPresenter do
  let(:recipe) { create :recipe }
  subject { described_class.new(recipe) }

  it 'created an instance' do
    expect(subject).to be_instance_of Recipes::Presenters::ItemPresenter
  end
  it 'responds to as_json' do
    expect(subject).to respond_to :as_json
  end
  it 'decorates recipe obj' do
    keys = %i[title image description tags chef]
    expect(subject.as_json.keys.sort).to eq keys.sort
  end
end
