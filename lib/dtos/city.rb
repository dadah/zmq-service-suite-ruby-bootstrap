module DTO
  class City < DTO::Base

    attr_reader :id, :name, :aliases, :country, :region, :geolocation

    def initialize payload
      params = payload.with_indifferent_access
      @id, @name = params.values_at(:id, :name)
      @aliases = params[:names] || params[:aliases]
      @geolocation = params[:geolocation] || get_geolocation_from(params)
      @country = DTO::Country.new params.delete(:country)
      @region = DTO::Region.new params.delete(:region)
    end

    def serialize
      instance_values.merge(
        {
          "country" => country.instance_values,
          "region" => region.instance_values
        }
      )
    end

    private

    def get_geolocation_from params
      return nil unless params[:latitude].present? && params[:longitude].present?
      {
        "lat" => params[:latitude],
        "lon" => params[:longitude]
      }
    end

  end
end
