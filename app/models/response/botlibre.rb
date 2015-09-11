require 'response/base'
require 'open-uri'

module Response
  class Botlibre < Base
    def to_s
      request.text.slice! request.trigger_word
      params = "instance=165&conversation=4529814163449004505&message=#{CGI::escape request.text.lstrip}"
      url = "http://www.botlibre.com/rest/botlibre/form-chat?#{params}"
      body = open(url).read
      emoji = case body[/emote="(.*?)"/m, 1]
        when 'LOVE' then ':heart_eyes:'
        when 'LIKE' then ':kissing_heart:'
        when 'DISLIKE' then ':confused:'
        when 'HATE' then ':triumph:'
        when 'RAGE' then ':confounded:'
        when 'ANGER' then ':imp:'
        when 'CALM' then ':kissing_smiling_eyes:'
        when 'SERENE' then ':relaxed:'
        when 'ECSTATIC' then ':relieved:'
        when 'HAPPY' then ':smiley:'
        when 'SAD' then ':disappointed:'
        when 'CRYING' then ':cry:'
        when 'PANIC' then ':open_mouth:'
        when 'AFRAID' then ':worried:'
        when 'CONFIDENT' then ':sunglasses:'
        when 'COURAGEOUS' then ':grimacing:'
        when 'SURPRISE' then ':scream:'
        when 'BORED' then ':sleeping:'
        when 'LAUGHTER' then ':joy:'
        when 'SERIOUS' then ':neutral_face:'
      end
      response = body[/<message>(.*?)<\/message>/m, 1]
      "#{emoji} #{response}"
    end
  end
end