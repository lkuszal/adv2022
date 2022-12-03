class RucksackManager
  def initialize(input_file)
    @rucksacks = []
    File.foreach(input_file) do |input_line|
      @rucksacks.append input_line.chomp
    end
  end

  def priority_of_duplicated_items
    sum_of_priorities = 0
    @rucksacks.each do |rucksack_content|
      compartment_1, compartment_2 = rucksack_content.chars.each_slice(rucksack_content.length / 2).map(&:join)
      compartment_1.each_char do |item|
        if compartment_2.include? item
          sum_of_priorities += get_priority(item)
          break
        end
      end
    end
    sum_of_priorities
  end

  private

  def get_priority(item)
    ascii_code = item.ord
    if item.downcase == item
      ascii_code - 96
    else
      ascii_code - 64 + 26
    end
  end
end

rucksack_manager = RucksackManager.new('./lib/day_03/input')
p rucksack_manager.priority_of_duplicated_items
