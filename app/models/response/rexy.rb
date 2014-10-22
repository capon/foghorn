require 'response/base'

module Response
  class Rexy < Base
    def to_s
      [
        %q(Rexy is da bomb),
        %q(Rexy makes shit happen),
        %q(Rexy is better than you),
        %q(Rexy will survive),
        %q(Rexy is probably a vampire),
        %q(Rexy’s favorite band is Limp Bizkit),
        %q(Rexy says, "BACK THAT ASS UP"),
        %q(Rexy is best friends with Trent Reznor),
      ].sample
    end
  end
end
