require 'response/base'

module Response
  class WhatTime < Base
    def to_s
      case Time.zone.now.strftime('%l%M').strip
        when '400' then %q(I don’t understand you)
        when '401' then %q(I'm not authorized to tell you)
        when '402' then %q(You'll have to pay to know)
        when '403' then %q(I refuse to tell you)
        when '404' then %q(I cannot find my watch)
        when '405' then %q(You should ask with a different verb)
        when '404' then %q(Your request is unacceptable)
        when '404' then %q(You will have to ask to my proxy)
        when '404' then %q(It would take me too long to tell you)
        when '404' then %q(I cannot know for sure, the time might be changing meanwhile)
        when '410' then %q(Someone stole my watch)
        when '411' then %q(Exactly, how much time do you want to know?)
        when '412' then %q(I don't have the notion of time)
        when '413' then %q(Can you ask me something simpler?)
        when '414' then %q(That's too much for me to process)
        when '415' then %q(Can you ask in a different language?)
        when '416' then %q(I can tell you the time of some other moment, but not of now)
        when '417' then %q(I thought I would be able to tell you, but I’m not)
        # More codes at http://en.wikipedia.org/wiki/List_of_HTTP_status_codes
        else %Q(It’s#{Time.zone.now.strftime('%l:%M%p')} #{Time.zone.name})
      end
    end
  end
end