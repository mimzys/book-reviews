require 'spec_helper'

describe Book do

  it { should have_valid(:name).when("Harry Potter") }
  it { should_not have_valid(:name).when(nil, "") }

  it { should have_valid(:author).when("J.K Rowling") }
  it { should_not have_valid(:author).when(nil, "") }

  it { should have_valid(:isbn).when(01234567) }
  it { should_not have_valid(:isbn).when(nil, "") }

  it { should have_valid(:description).when("Harry Potter") }
  it { should_not have_valid(:description).when(nil, "") }

  it { should have_valid(:publication_date).when("Jan-01-2001") }
  it { should_not have_valid(:publication_date).when(nil, "") }
end
