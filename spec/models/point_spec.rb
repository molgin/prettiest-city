require 'rails_helper'

RSpec.describe Point, :type => :model do
  it "is valid with a latitude" do
    point = Point.create(lat: 40.763991, long: -73.827525, city_id: 1)
    expect(point).to be_valid
  end

  it "is invalid without a latitude" do
    point = Point.create
    point.valid?
    expect(point.errors[:lat]).to include("can't be blank")
  end

  it "is valid with a longitude" do
    point = Point.create(lat: 40.763991, long: -73.827525, city_id: 1)
    expect(point).to be_valid
  end

  it "is invalid without a longitude" do
    point = Point.create
    point.valid?
    expect(point.errors[:long]).to include("can't be blank")
  end

  it "is valid with a city" do
    point = Point.create(lat: 40.763991, long: -73.827525, city_id: 1)
    expect(point).to be_valid
  end

  it "is invalid without a city" do
    point = Point.create
    point.valid?
    expect(point.errors[:city_id]).to include("can't be blank")
  end

  describe '#coords' do

    it 'returns the coordinates as an array' do
      point = Point.create(lat: 40.763991, long: -73.827525, city_id: 1)
      expect(point.coords).to eq([40.763991, -73.827525])
    end

  end
end
