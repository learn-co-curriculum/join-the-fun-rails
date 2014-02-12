require 'spec_helper'

describe Taxi do
  it 'has many passengers through rides' do
    subject.taxis << Taxi.create
    expect(Taxi.last.passenger).to include(subject)
  end

  it 'has many rides' do
    subject.rides << Ride.create
    expect(Ride.first.passenger).to eq subject
  end
end
