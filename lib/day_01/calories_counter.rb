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
end
