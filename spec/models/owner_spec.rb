require 'spec_helper'

describe Owner do
  it { should have_many(:buildings) }

  it { should have_valid(:first_name).when('Kevin', 'Barack') }
  it { should have_valid(:last_name).when('Kwon', 'Obama') }
  it { should have_valid(:email).when('kwon@gmail.com', 'obama@whitehouse.gov') }
  it { should have_valid(:company_name).when('Kwon Inc.', 'The Government') }

  let(:blanks){[nil,'']}
  it { should_not have_valid(:first_name).when(*blanks) }
  it { should_not have_valid(:last_name).when(*blanks) }

  let(:invalid_emails){['user@mycom', 'hello', '.com', 'user.com'] }
  it { should_not have_valid(:email).when(*invalid_emails) }

end
