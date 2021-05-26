class Bottle < ApplicationRecord
  include AlgoliaSearch

  belongs_to :wine_type
  belongs_to :region
  belongs_to :grape
  has_many :stocks
  has_many :foods, through: :association

  algoliasearch do
    attributes :name, :vineyard, :year, :description, :grape
    searchableAttributes ["name", "vineyard", "grape", "unordered(description)", "asc(year)"]

    attribute :grape do
      { name: grape.name }
    end
    
    # the `customRanking` setting defines the ranking criteria use to compare two matching
    # records in case their text-relevance is equal. It should reflect your record popularity.
  end
end
