require 'response/base'
require 'open-uri'

module Response
  class Botlibre < Base
    def to_s
      request.text.slice! request.trigger_word
      params = "instance=145&message=#{CGI::escape request.text.lstrip}"
      url = "http://www.botlibre.com/rest/botlibre/form-chat?#{params}"
      body = open(url).read
      body[/<message>(.*?)<\/message>/m, 1]
    end
  end
end