class CaloriesCounter
  def initialize(input_file)
    @elves_calories_array = []
    current_elf_calories = 0

    File.foreach(input_file) do |input_line|
      if !!(input_line =~ /\S/)
        current_elf_calories += input_line.to_i
      else
        @elves_calories_array.append current_elf_calories
        current_elf_calories = 0
      end
    end
    if current_elf_calories != 0
      @elves_calories_array.append current_elf_calories
    end
  end

  def find_biggest_value
    @elves_calories_array.max
  end

  def sum_of_three_biggest_values
    @elves_calories_array.sort.last(3).sum
  end
end

calories_counter = CaloriesCounter.new('./lib/day_01/input')
p calories_counter.find_biggest_value
p calories_counter.sum_of_three_biggest_values
