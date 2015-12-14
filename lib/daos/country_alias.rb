module DAO
  class CountryAlias < ActiveRecord::Base
    self.table_name = 'country_aliases'
    belongs_to :country, class_name: 'DAO::Country'
  end
end
