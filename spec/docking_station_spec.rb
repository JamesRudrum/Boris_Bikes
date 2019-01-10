require 'docking_station'

describe DockingStation do

  it "respons to release_bike method" do
   is_expected.to respond_to(:release_bike)
 end

  it "gets a bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike) == Bike.new
  end

  it "bike is working" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to be_working
  end

  it "dock something" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  describe '#release_bike' do
    it "return bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

    it "raises an eror when no bikes" do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
end
