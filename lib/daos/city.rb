module DAO
  class City < ActiveRecord::Base
    self.table_name = 'cities'
    belongs_to :country, class_name: 'DAO::Country'
    belongs_to :region, class_name: 'DAO::Region'
    has_many :aliases, class_name: 'DAO::CityAlias'
  end
end
