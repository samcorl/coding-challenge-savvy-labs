# frozen_string_literal: true

module Types
  class CommentType < Types::BaseObject
    field :title, String
    field :comment, String
  end
end
