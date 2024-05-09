class Post < ApplicationRecord
  has_many :comments, inverse_of: :ref
end
