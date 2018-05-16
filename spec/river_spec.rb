require_relative './spec_helper'

describe "River" do

  it "can create individual instances of the river" do
    test_river = River.new("Mississippi")
    expect(test_river).to be_an_instance_of(River), "No class was found named River"
  end

  it "has a name attribute" do
    test_river1 = River.new("Amazon")
    test_river1.name = "Hudson"
    expect(test_river1.name).to eq("Hudson"), "Cannot write and read name attribute"
  end

  it "initializes with a name" do
    test_river4 = River.new("Euphrates")
    expect(test_river4.name).to eq("Euphrates"), "River must be initialized with a name"
  end


  it "has an length attribute" do
    test_river2 = River.new("Delaware")
    test_river2.length = 3432
    expect(test_river2.length).to eq(3432), "Cannot write and read length attribute"
  end

  it "has an countries attribute" do
    test_river2 = River.new("Rio Grande")
    test_river2.countries = ["United States", "Mexico"]
    expect(test_river2.countries).to eq(["United States", "Mexico"]), "Cannot write and read countries attribute"
  end

  it "has an discharge attribute" do
    test_river2 = River.new("Delaware")
    test_river2.discharge = 343200
    expect(test_river2.discharge).to eq(343200), "Cannot write and read discharge attribute"
  end

  it "floods" do
    test_river = River.new("East")
    test_river.discharge = 100000
    test_river.flood
    expect(test_river.discharge).to eq(100000+100000/100*30), "The method 'flood' should increase a river's discharge to 130%"
  end

  it "dries up" do
    test_river = River.new("East")
    test_river.discharge = 100000
    test_river.dry_up
    expect(test_river.discharge).to eq(100000/2), "The method 'flood' should decrease a river's discharge to 50%"
  end

end
