# frozen_string_literal: true

module Recipes
  module Commands
    # ListRecipes class
    #
    # Fetches a list of recipes
    class ListRecipes
      include Queries
      include Presenters

      def self.call
        # Fetch recipes list from cache
        # If there's no cache for recipes list, then fetch from remote source
        # Remote source is injected to query object. Currently the source is Contentful
        caches_recipes = Rails.cache.fetch('recipes', expires_in: 1.minute) do
          recipes = RecipesQuery.new(DataSources::Contentful.new).call

          recipes.map { ListItemPresenter.new(_1).as_json }.to_json
        end
        JSON.parse caches_recipes
      rescue StandardError
        []
      end
    end
  end
end
