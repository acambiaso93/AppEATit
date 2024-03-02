class Dashboard < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
