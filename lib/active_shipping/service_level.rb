module ActiveShipping
  class ServiceLevel
    attr_reader :type, :description, :short_description

    def initialize(type:, description:, short_description:)
      @type = type
      @description = description
      @short_description = short_description
    end

    def ==(other)
      attributes = %i[type description short_description]

      attributes.all? { |attr| self.public_send(attr) == other.public_send(attr) }
    end
  end
end
