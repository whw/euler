require 'test/unit'

class TestSolution < Test::Unit::TestCase

  INPUT = 28 # Triangle number
  OUTPUT = 6 # Number of divisors

  SOLUTION = File.join(File.dirname(__FILE__), "solution")

  def test_solution
    results = `#{SOLUTION} #{INPUT}`.chomp
    raise "error!" unless $?.success?

    assert_equal(results.to_i, OUTPUT)
  end

end