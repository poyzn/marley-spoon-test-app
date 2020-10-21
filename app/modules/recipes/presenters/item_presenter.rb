# frozen_string_literal: true

module Recipes
  module Presenters
    # ItemPresenter class
    #
    # decorates a singe recipe
    class ItemPresenter < SimpleDelegator
      def as_json
        {
          title: title,
          image: image,
          description: description,
          tags: tags,
          chef: chef_name
        }
      end
    end
  end
end
