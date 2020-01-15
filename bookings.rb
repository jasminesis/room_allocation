require 'date'

bookings = [{
    "checkin"=> "2017-10-1",
    "checkout"=> "2017-10-3",
    "id" => 1
  },
  {
    "checkin"=> "2017-10-1",
    "checkout"=> "2017-10-4",
    "id" => 2
  },
  {
    "checkin"=> "2017-10-3",
    "checkout"=> "2017-10-6",
    "id" => 3
  },
  {
    "checkin"=> "2017-10-3",
    "checkout"=> "2017-10-8",
    "id" => 4
  },
  {
    "checkin"=> "2017-10-4",
    "checkout"=> "2017-10-8",
    "id" => 5
  },
  {
    "checkin"=> "2017-10-8",
    "checkout"=> "2017-10-12",
    "id" => 6
  },
  {
    "checkin"=> "2017-10-9",
    "checkout"=> "2017-10-20",
    "id" => 7
  },
  {
    "checkin"=> "2017-10-15",
    "checkout"=> "2017-10-20",
    "id" => 8
  },
  {
    "checkin"=> "2017-10-21",
    "checkout"=> "2017-10-30",
    "id" => 9
  }]
  
num_of_rooms = 3

def assign_rooms(bookings, num_of_rooms)
    # set up nested array with num of rooms
    rooms = Array.new(num_of_rooms, Array.new())
    print rooms
    # find the earliest bookings and put into array
    bookings.each do |x|
    end

    # for each booking in the array, find the next booking with the closest checkin date to the checkout date

    # repeat until all bookings are done


end

  puts Date.parse(bookings[0]["checkin"])

  assign_rooms(bookings,num_of_rooms)
