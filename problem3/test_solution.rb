require 'test/unit'

class TestSolution < Test::Unit::TestCase

  INPUT = 13195
  OUTPUT = %w[5 7 13 29]

  SOLUTION_EXE = File.join(File.dirname(__FILE__), "solution.rb")

  def test_solution
    results = `#{SOLUTION_EXE} #{INPUT}`.chomp
    raise "error!" unless $?.success?

    assert_equal(results.split(/\s/), OUTPUT)
  end

end
