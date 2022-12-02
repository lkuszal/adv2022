class RPS
  def initialize(input_file)
    @input = File.read(input_file).split("\n").map { |a| a.split(" ") }
  end

  def calculate_guide_results
    score = 0
    @input.each do |game|
      score += position_score(game[1])
      score += score_for_match(game)
    end
    score
  end

  def calculate_results_correctly
    score = 0
    @input.each do |game|
      score += results_score(game[1])
      your_position = choose_position(game)
      score += position_score(your_position)
    end
    score
  end

  private

  def position_score(position)
    {
      "X" => 1,
      "Y" => 2,
      "Z" => 3
    }[position]
  end

  def score_for_match(game)
    {
      %w[A X] => 3,
      %w[A Y] => 6,
      %w[A Z] => 0,

      %w[B X] => 0,
      %w[B Y] => 3,
      %w[B Z] => 6,

      %w[C X] => 6,
      %w[C Y] => 0,
      %w[C Z] => 3
    }[game]
  end

  def choose_position(game)
    {
      %w[A X] => "Z",
      %w[A Y] => "X",
      %w[A Z] => "Y",

      %w[B X] => "X",
      %w[B Y] => "Y",
      %w[B Z] => "Z",

      %w[C X] => "Y",
      %w[C Y] => "Z",
      %w[C Z] => "X"
    }[game]
  end

  def results_score(result)
    {
      "X" => 0,
      "Y" => 3,
      "Z" => 6
    }[result]
  end
end

rps = RPS.new('./lib/day_02/input')
p rps.calculate_guide_results
p rps.calculate_results_correctly
