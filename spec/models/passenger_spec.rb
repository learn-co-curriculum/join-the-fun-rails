require 'spec_helper'

describe Passenger do
  it 'has many taxis through rides' do
    subject.taxis << Taxi.create
    expect(Taxi.last.passenger).to include(subject)
  end

  it 'has many rides' do
    subject.rides << Ride.create
    expect(Ride.first.passenger).to eq subject
  end
end
