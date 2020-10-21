# frozen_string_literal: true

module Recipes
  module Queries
    # RecipeQuery class
    #
    # Fetches single recipe from data source
    class RecipeQuery
      def initialize(source, id)
        @source = source
        @id = id
      end

      def call
        @source.entry @id
      end
    end
  end
end
