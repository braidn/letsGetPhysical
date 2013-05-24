require 'spec_helper'

describe Combo do
	it 'should have a valid factory' do
		Fabricate(:combo).should be_valid
	end
end
