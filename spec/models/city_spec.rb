require 'rails_helper'

RSpec.describe City, :type => :model do

  it "is valid with a name" do
    city = City.create(name: "Republic City")
    expect(city).to be_valid
  end

  it "is invalid without a name" do
    city = City.create
    city.valid?
    expect(city.errors[:name]).to include("can't be blank")
  end

end
