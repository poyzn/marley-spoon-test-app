# frozen_string_literal: true

module Recipes
  module Commands
    # ShowRecipe class
    #
    # Fetches single recipe
    class ShowRecipe
      include Queries
      include Presenters

      def self.call(id)
        # Find recipe by contentful id in the local db
        recipe = Recipe.find_by(contentful_id: id)
        # If no recipe in local db then fetch recipe from source
        unless recipe
          resource = RecipeQuery.new(DataSources::Contentful.new, id).call
          recipe = Commands::CreateRecipe.new(resource).call
        end
        recipe ? ItemPresenter.new(recipe).as_json : {}
      rescue StandardError
        {}
      end
    end
  end
end
