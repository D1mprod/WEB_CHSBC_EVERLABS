require 'json'

file = File.read('users.json')
users = JSON.parse(file)

if users.is_a?(Array)
  total_age = 0

  users.each do |user|
    name = user['name']
    age = user['age']
    puts "Ім'я: #{name}, Вік: #{age}"
    total_age += age
  end

  average_age = total_age.to_f / users.size
  puts "\nСередній вік: #{average_age.round(2)}"
else
  puts "Invalid JSON format: expected an array of users"
end
