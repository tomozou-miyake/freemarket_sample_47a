class Evaluation < ApplicationRecord
  belongs_to :user
  belongs_to :item
  belongs_to :evaluator
end
