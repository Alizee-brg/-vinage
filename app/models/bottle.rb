class Bottle < ApplicationRecord
  include AlgoliaSearch

  belongs_to :wine_type
  belongs_to :region
  belongs_to :grape
  has_many :stocks

  has_many :associations
  has_many :foods, through: :associations


  algoliasearch do
    attributes :year, :name, :region, :grape, :vineyard, :wine_type
    searchableAttributes ["name", "region", "vineyard", "grape", "wine_type", "year"]

    attribute :grape do
      { name: grape.name }
    end

    attribute :region do
      { name: region.name }
    end

    # the `customRanking` setting defines the ranking criteria use to compare two matching
    # records in case their text-relevance is equal. It should reflect your record popularity.
  end
end
