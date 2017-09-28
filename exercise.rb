require "pp"

trains = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

pp trains

direction111 = " "
frequency80B = " "
direction610 = " "

trains.each do |item|

  if item[:train] == "111"
    direction111 = item[:direction]
  end

  if item[:train] == "80B"
    frequency80B = item[:frequency_in_minutes]
  end

  if item[:train] == "610"
    direction610 = item[:direction]
  end

end


puts "The direction of train 111 is #{direction111}"
puts "The frequency of train 80B is #{frequency80B} minutes" 
puts "The direction of train 610 is #{direction610}" 
puts " "

arrNorth = []

trains.each do |item|
  
  if item[:direction] == "north"
    arrNorth << item[:train]
  end

end

pp arrNorth


arrEast = []
trains.each do |item|
  
  if item[:direction] == "east"
    arrEast << item[:train]
  end

end

pp arrEast


def searchByDirection(arr,direction)

  newArr = []
  
  arr.each do |item|
    if item[:direction] == direction
      newArr << item[:train]
    end
  end

  return newArr

end


pp searchByDirection(trains , "south")

