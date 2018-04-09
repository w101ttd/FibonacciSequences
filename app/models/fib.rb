class Fib < ApplicationRecord
	validates :input, presence: true, numericality: { :greater_than_or_equal_to => 0 }
end
