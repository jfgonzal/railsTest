module ApplicationHelper
  def get_season()
      # year - gets you the numerical year
      # month - gets you the numberical value of the month
      # day - gets you the day
      # wday - gets you 0 - 6
      # yday - gets you 0 - 365
      # hour - gets you 0 - 24
      # sec - gets you 0 - 59
      # min - gets you 0 - 59
      # zone - gets you the timezone


    time = Time.new

    if(time.month >= 3) && (time.month <= 5)
      "Yeah it is Spring"
    elsif(time.month > 5) && (time.month <= 8)
      "Everyone Loves Summer"
    elsif(time.month > 8) && (time.month <= 10)
      "Put on your coat because FAll is here"
    else
      "Winter is here!"
    end
  end

  def get_random_number(max_value = 10)
    rand(max_value)
  end

  def get_random_welcome()
    opening = ["What a beautiful day. ",
               "Welcome to our site. ",
               "Thank you for stopping by. "]

    middle = ["We hope you find what you need. ",
               "We have a wide selection. ",
               "Check out our sale items. "]

    ending = ["Contact us if you need help. ",
               "We are here to serve you. ",
               "Call us if you need to 412-555-1212. "]

    "#{opening[rand(3)]} #{middle[rand(3)]} #{ending[rand(3)]}"
  end

  def count_to_10
    x=2
    number_list = "1"

    loop do
      number_list = number_list + ", " + x.to_s
      x += 1
      break if x > 10
    end
    "#{number_list}"
  end
end
