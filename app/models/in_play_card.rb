class InPlayCard < ApplicationRecord
  belongs_to :round
  belongs_to :submission
end
