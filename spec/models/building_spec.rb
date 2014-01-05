require 'spec_helper'

describe Building do
  it { should belong_to(:owner) }
  
  
  it { should have_valid(:street_address).when('1134 Blanch Avenue', '33 Harrison Ave') }
  it { should have_valid(:city).when('Norwood', 'Boston') }
  it { should have_valid(:state).when('NJ', 'MA') }
  it { should have_valid(:postal_code).when('07648', '02100') }
  it { should have_valid(:description).when('My house', 'Launch Academy') }
  
  let(:blanks){[nil,'']}
  it { should_not have_valid(:street_address).when(*blanks) }
  it { should_not have_valid(:city).when(*blanks) }
  it { should_not have_valid(:state).when(*blanks) }
  it { should_not have_valid(:postal_code).when(*blanks) }

  it "has its owner become nil after destroying owner" do
    owner = Owner.create
    building = Building.create
    building.owner = owner
    building.save
    owner.destroy
    expect(building.owner_id).to be_nil
  end

end
