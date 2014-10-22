module Response
  class Base
    attr_reader :request

    def initialize(request)
      @request = request
    end

    def to_s
      "#{salutation}I’m here. What can I help you with?"
    end

  private

    def salutation
      "#{request.user_name.to_s.capitalize}, " if request.user_name
    end
  end
end