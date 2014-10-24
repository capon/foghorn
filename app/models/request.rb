class Request
  include ActiveModel::Model
  attr_accessor :channel_id, :channel_name, :service_id, :team_id, :team_domain
  attr_accessor :text, :timestamp, :token, :trigger_word, :user_id, :user_name

  def reply
    reply_with response
  end

  def valid?
    token == valid_token
  end

private

  def response
    response_class = case text
      when /what time/i then :what_time
      when /justin/i then :justin
      when /rexy/i then :rexy
      else :botlibre
    end.to_s.prepend('response/').classify.constantize

    response_class.new self
  end

  def reply_with(message)
    `curl -s -X POST --data-urlencode 'payload={"text": "#{message}"}' #{url}`
  end

  def url
    ENV['SLACK_WEBHOOK_URL']
  end

  def valid_token
    ENV['SLACK_WEBHOOK_TOKEN']
  end
end