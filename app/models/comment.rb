class Comment < ApplicationRecord
  belongs_to :ref, polymorphic: true
end
