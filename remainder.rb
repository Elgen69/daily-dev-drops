# reminder.rb - Simple reminder app

class Reminder
  def initialize
    @reminders = []
  end

  def add(text)
    @reminders << { id: @reminders.size + 1, text: text }
  end

  def list
    @reminders.each { |r| puts "#{r[:id]} - #{r[:text]}" }
  end
end

r = Reminder.new
r.add("Buy bread")
r.add("Do assignments")
r.list
