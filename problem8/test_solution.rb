require 'test/unit'

class TestSolution < Test::Unit::TestCase

  INPUT =
  OUTPUT =

  SOLUTION = File.join(File.dirname(__FILE__), "solution")

  def test_solution
    results = `#{SOLUTION} #{INPUT}`.chomp
    raise "error!" unless $?.success?

    assert_equal(results, OUTPUT)
  end

end
