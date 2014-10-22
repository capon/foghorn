require 'response/base'

module Response
  class Justin < Base
    def to_s
      [
        %q(Pink ice cream is for girls!),
        %q(I will kick your ass when Chapa is in your mouth!),
        %q(How do you spell Jesus?),
        %q(Hey Justin, where is the best Chinese food around here?" "My home."),
        %q(I use Pivotal Tracker to keep track of my eight girlfriends),
        %q(The shit gets real!),
        %q(I skip my dinner. I’m on a diet),
        %q(Im vegetarian now! I only eat chicken),
        %q(I’m a nerdy panda),
        %q(I will kill them with my mind),
        %q(I’m so hungry to eat shit),
        %q(I like games that you’ve nothing to do, just hang there as stupid as you can),
        %q(Move that ass up),
        %q(Take me to the magic park next time! I need stay in shape, since all my meals consist of MEAT.),
        %q(I just found that my face start peeling when I’m about to go to the office. My sunburn is much serious than I thought. So I’ll WFH today.),
        %q(I need a ride to San Gabriel),
        %q(Cookies are for fat girls!),
        %q(I’m the mayor of San Gabriel!),
        %q(Let’s go to WI SPA, I have a coupon),
        %q(I’m going to punch you in the face if you don’t have any ideas),
        %q(Heh. Heh. Heh.)
      ].sample
    end
  end
end