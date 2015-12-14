module DAO
  class Region < ActiveRecord::Base
    self.table_name = 'regions'
    has_many :cities, class_name: 'DAO::City'
    belongs_to :country, class_name: 'DAO::Country'
  end
end
