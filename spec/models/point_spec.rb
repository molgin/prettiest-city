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

  describe '#image_link' do

    it 'returns the correct street view image link' do
      point = Point.create(lat: 40.763991, long: -73.827525, city_id: 1)
      img_link = "https://maps.googleapis.com/maps/api/streetview?size=500x500&location=40.763991,-73.827525&fov=90&heading=34&pitch=10&key=#{ENV['STREET_VIEW_KEY']}"
      expect(point.image_link).to eq(img_link)
    end

  end
end
