class FibsController < ApplicationController
def index
		@fib = Fib.all

	end

	def show
		@fib = Fib.find(params[:id])
	end

	def new
		@fib = Fib.new
		
	end

	def create
		
		@fib = Fib.new(fib_params)
		
		n = @fib.input.to_i
		
		#set result = generated Fibo sequence
		@fib.result = fib_generator(n)
		
		
		if(@fib.save)
			redirect_to @fib
		else
			render 'new'
		end

	end

	private def fib_params
		params.require(:fib).permit(:input, :result)
	end

	# TD: generate a fibonacci sequence with a user input
	private def fib_generator(n)
	  if n <= 1
	    0
	  else
	    fib = [0,1]
	    
	    (n-2).times do
	      fib << fib[-1] + fib[-2]
	    end
	    return p fib.join(' ')
	  end
	end
end

