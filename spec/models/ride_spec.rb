require 'spec_helper'

describe Ride do
  it 'belongs to a passenger' do
    subject.passenger = Passenger.create
    subject.save

    expect(Passenger.first.rides).to include(subject)
  end

  it 'belongs to a taxi' do
    subject.taxi = Taxi.create
    subject.save

    expect(Taxi.first.rides).to include(subject)
  end
end
