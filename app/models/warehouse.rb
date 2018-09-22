class Warehouse < ApplicationRecord
  # include AlgoliaSearch

  # algoliasearch do
  #   attribute :name, :address, :description

  #   searchableAttributes ['name', 'address', 'unordered(description)']

  #   # the `customRanking` setting defines the ranking criteria use to compare two matching
  #   # records in case their text-relevance is equal. It should reflect your record popularity.
  #   customRanking ['desc(likes_count)']
  # end


  has_many :bookings
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :subtitle, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
  validates :description, presence: true
  validates :user_id, presence: true

  mount_uploader :photo, PhotoUploader


end
