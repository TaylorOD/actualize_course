require "http"

system "clear"

while true
  puts "Welcome to the weather app! Enter 'done' when finished."
  puts "Please enter a city:"
  input = gets.chomp
  if input == "done"
    puts "Goodbye!"
    break
  end
  puts "What temperature unit would you like? (F or C)"
  input2 = gets.chomp.downcase
  if input2 == "f"
    units = "imperial"
    temp_name = "Fahrenheit"
  elsif input2 == "c"
    units = "metric"
    temp_name = "Celsius"
  end
  response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{input}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=#{units}")
  response2 = HTTP.get("https://api.openweathermap.org/data/2.5/forecast?q=#{input}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=#{units}")
  weather_data = response.parse
  temperature = weather_data["main"]["temp"]
  description = weather_data["weather"][0]["description"]
  puts "Today in #{input} it is #{temperature} degrees #{temp_name} outside with #{description}!"
end

# pp response2.parse
weather_data_five_day = response2.parse

day1 = weather_data_five_day["list"][0]["main"]
day1_temp = weather_data_five_day["list"][0]["main"]["temp"]

p day1
p day1_temp
