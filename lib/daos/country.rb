module DAO
  class Country < ActiveRecord::Base
    self.table_name = 'countries'
    has_many :cities, class_name: 'DAO::City'
    has_many :regions, class_name: 'DAO::Region'
    has_many :aliases, class_name: 'DAO::CountryAlias'
  end
end
