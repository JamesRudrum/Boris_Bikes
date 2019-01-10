require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
    it { subject.release_bike == Bike.new }
      it { expect(subject.release_bike).to be_working }
        it "dock something" do
          bike = Bike.new
          expect(subject.dock(bike)).to eq bike
        end
          it "return bike" do
            bike = Bike.new
            subject.dock(bike)
            expect(subject.bike).to eq bike
        end
end
