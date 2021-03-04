class Plant < ApplicationRecord
  belongs_to :garden

  validates :name, :photo_url, presence: true
end
