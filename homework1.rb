def calculator
  puts "Базовий калькулятор на Ruby"
  puts "Введіть перше число:"
  num1 = gets.chomp.to_f

  puts "Введіть оператор (+, -, *, /):"
  operator = gets.chomp

  puts "Введіть друге число:"
  num2 = gets.chomp.to_f

  result = case operator
           when "+"
             num1 + num2
           when "-"
             num1 - num2
           when "*"
             num1 * num2
           when "/"
             if num2 != 0
               num1 / num2
             else
               "Помилка: ділення на нуль"
             end
           else
             "Невідомий оператор"
           end

  puts "Результат: #{result}"
end

# Запуск калькулятора
calculator
