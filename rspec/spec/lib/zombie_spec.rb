require 'rspec'
require '../spec_helper.rb'
require './zombie.rb'

describe Zombie do
	it "is named Ash" do
		zombie = Zombie.new
		zombie.name.should == "Ash"
	end
end
