class News < ActiveRecord::Base
  belongs_to :author, polymorphic: true

  validates :title, presence: true, length: { minimum: 15, maximum: 90 }
  validates_presence_of :author

  scope :latest, -> { order(:created_at).limit(5) }
end
