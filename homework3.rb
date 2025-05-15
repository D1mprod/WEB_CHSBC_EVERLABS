tasks = []

loop do
  puts "\n1. Додати нову задачу"
  puts "2. Показати всі задачі"
  puts "3. Видалити задачу"
  puts "4. Вийти"
  print "\nВибрати опцію: "
  choice = gets.chomp

  case choice
  when "1"
    print "Введіть нову задачу: "
    task = gets.chomp
    tasks << task
    puts "\nЗадача успішно додана!"
  when "2"
    if tasks.empty?
      puts "\nЗадач немає."
    else
      puts "\nПоточні задачі:"
      tasks.each_with_index do |task, index|
        puts "#{index + 1}. #{task}"
      end
    end
  when "3"
    if tasks.empty?
      puts "\nНемає задач для видалення."
    else
      puts "\nЯку під номером задачу Ви бажаєте видалити?"
      tasks.each_with_index do |task, index|
        puts "#{index + 1}. #{task}"
      end
      print "Введіть номер: "
      num = gets.chomp.to_i
      if num.between?(1, tasks.length)
        deleted = tasks.delete_at(num - 1)
        puts "\nВидалена задача: #{deleted}"
      else
        puts "\nНевірний номер задачі."
      end
    end
  when "4"
    puts "\nДопобачення!"
    break
  else
    puts "\nНевірна опція. Будь-ласка виберіть від 1 до 4."
  end
end
