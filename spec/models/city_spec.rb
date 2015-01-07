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

  it "is invalid with a name that is not unique in its state" do
    state = State.create(name: "California", abbr: "CA")
    city1 = City.create(name: "Republic City", state_id: state.id)
    city2 = City.create(name: "Republic City", state_id: state.id)
    city2.valid?
    expect(city2.errors[:name]).to include("has already been taken")
  end

  it "sets a slug before save" do
    city = City.create(name: "Republic City")
    expect(city.slug).to eq("republic-city")
  end

  describe "#" do


  end

end
