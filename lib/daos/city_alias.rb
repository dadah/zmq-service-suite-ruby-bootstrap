module DAO
  class CityAlias < ActiveRecord::Base
    self.table_name = 'city_aliases'
    belongs_to :city, class_name: 'DAO::City'
  end
end
