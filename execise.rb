class Exercise

  def initialize
    require 'open-uri'
    source = 'https://api.github.com/users/dhh/events/public'
    @data = JSON.load(open(source))
    @rules = {
      IssuesEvent: 7,
      IssueCommentEvent: 6,
      PushEvent: 5,
      PullRequestReviewCommentEvent: 4,
      WatchEvent: 3,
      CreateEvent:2
    }
    sum = 0
      @data.each do |d|
        a = @rules[d["type"].to_sym]
        score = a.present? ? a.to_i : 1
        sum = sum + score
      end
    return sum
  end

  def process
    sum = 0
      @data.each do |d|
        a = @rules[d["type"].to_sym]
        score = a.present? ? a.to_i : 1
        sum = sum + scoere
      end
      return sum
  end
end
