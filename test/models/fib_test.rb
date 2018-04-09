require 'test_helper'

class FibTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end

   test "should not generate a sequence without an input" do
	  fib = Fib.new
	  assert_not fib.save
	  fib.input = ''
	  assert_not fib.save
	end

	test "input should = + integer" do
		fib = Fib.new(input:'test')
		assert_not fib.valid?
		assert_equal ["is not a number"], fib.errors.messages[:input]
	end
	
end
