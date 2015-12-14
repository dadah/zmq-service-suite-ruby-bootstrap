module DTO
  class Search < Base

    attr_reader :model, :source

    def serialize
      serialized = super
      serialized["source"] = source.serialize if source.present?
      serialized
    end

  end
end
