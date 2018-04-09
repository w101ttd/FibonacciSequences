require 'test_helper'

class FibsControllerTest < ActionDispatch::IntegrationTest
    
    test "should get index" do
    	get fibs_url
    	assert_response :success
    end

    test "should get new" do
    	get new_fib_url
    	assert_response :success
    end

    test "should show fib sequence" do
    	
    	get fibs_url(fibs.index)
    	assert_response :success
    end

    test "the truth" do
    	assert true
    end

	test "should show" do
		fib = Fib.new
		fib.input = 8
	    get :show, {fib.input: 8 }
	    assert_response :success
	end
	
end
