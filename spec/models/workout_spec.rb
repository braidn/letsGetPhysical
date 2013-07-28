require 'spec_helper'

describe Workout do
  let(:workout) { Fabricate(:workout) }

	it 'has a valid factory' do
		workout.should be_valid
	end

  context 'with an invalid body_type' do
    it 'fails when saving' do
      expect{ Fabricate(:workout, body_type: 'flabs') }.to raise_error
    end
  end
  context 'with a valid body_type' do
    it 'saves spectacularly' do
      expect{ Fabricate(:workout, body_types: 'shoulders') }.to be_true
    end
  end
end
