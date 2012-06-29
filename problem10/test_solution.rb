require 'test/unit'

class TestSolution < Test::Unit::TestCase

  INPUT = 10
  OUTPUT = 17

  SOLUTION = File.join(File.dirname(__FILE__), "solution")

  def test_solution
    results = `#{SOLUTION} #{INPUT}`.chomp
    raise "error!" unless $?.success?

    assert_equal(results.to_i, OUTPUT)
  end

end
