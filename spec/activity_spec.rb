require "../lib/activity"
require "../lib/reunion"

RSpec.describe Activity do
  before :each do
    @activity = Activity.new("Brunch")
    @activity.add_participant("Maria", 20)
    @activity.add_participant("Luther", 40)
  end

  it "exists" do
    expect(@activity).to be_instance_of(Activity)
  end

  it "has correct total cost" do
    expect(@activity.total_cost).to eq(60)
  end

  it "is split evenly" do
    expect(@activity.split).to eq(30)
  end

  it "is owed correctly" do
    expect(@activity.owed["Maria"]).to eq(10)
    expect(@activity.owed["Luther"]).to eq(-10)
  end

  it "is added to reunion" do
    @reunion = Reunion.new("1428 BE")
    @reunion.add_activity(@activity)

    expect(@reunion.activities.length).to eq(1)
  end


end
