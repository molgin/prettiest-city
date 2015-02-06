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
end
