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
  rooms = []
  num_of_rooms.times do 
    rooms.push([])
  end
    # find the earliest bookings and put into array

    # for each booking in the array, find the next booking with the closest checkin date to the checkout date
    
    rooms.each do |room|
      date = Date.parse("2017-10-1") 
      
      while date <= Date.parse("2017-10-30")

        bookings.each do |booking|
          if Date.parse(booking["checkin"]) == date
            room.push(booking["id"])
            date = Date.parse(booking["checkout"])
            bookings.delete(booking)
          end
        end
        
        # repeat until all bookings are done
        date += 1
      end
    end

    print rooms
          
end



assign_rooms(bookings,num_of_rooms)