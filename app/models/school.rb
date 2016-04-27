class School < ActiveRecord::Base
  include PgSearch

  validates :name, presence: true
  validates :api_url, presence: true

  pg_search_scope :search, against: [:name],
                   using: { tsearch: { prefix: true }}
end
