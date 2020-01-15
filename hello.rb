require 'date'

arr = Array.new

class Booking
    def initialize(checkin, checkout, id)
        @checkin = checkin
        @checkout = checkout
        @length = (Date.parse(checkout) - Date.parse(checkin)).to_i
        @id = id
    end
def description 
    puts "ID #{@id} checks in on #{@checkin} and stays for #{@length} days"
end

end

first = Booking.new("2017-10-1", "2017-10-3", 1)
second = Booking.new("2017-10-1", "2017-10-4", 2)
third = Booking.new("2017-10-3", "2017-10-6", 3)
fourth = Booking.new("2017-10-3", "2017-10-8", 4)
fifth = Booking.new("2017-10-4", "2017-10-8", 5)
sixth = Booking.new("2017-10-8","2017-10-12",6)
seventh = Booking.new("2017-10-9","2017-10-20",7)
eighth = Booking.new("2017-10-15","2017-10-20",8)
ninth = Booking.new("2017-10-21", "2017-10-30",9)

first.description