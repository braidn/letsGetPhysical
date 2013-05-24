require 'spec_helper'

describe Workout do
	it 'should have a valid factory' do
		Fabricate(:workout).should be_valid
	end
end
