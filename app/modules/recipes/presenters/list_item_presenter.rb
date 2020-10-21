# frozen_string_literal: true

module Recipes
  module Presenters
    # ListItemPresenter class
    #
    # Decorates recipe in a list of recipes
    class ListItemPresenter < SimpleDelegator
      def as_json
        { title: title,
          path: path,
          image: image }
      end

      def image
        photo.url
      end

      def path
        "/recipes/#{id}"
      end
    end
  end
end
