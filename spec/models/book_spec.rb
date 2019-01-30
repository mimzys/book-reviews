require 'spec_helper'

describe Book do
  it { should have_valid(:name).when("Harry Potter") }
  it { should_not have_valid(:name).when(nil, "") }

  it { should have_valid(:author).when("J.K Rowling") }
  it { should_not have_valid(:author).when(nil, "") }

  it { should have_valid(:isbn).when(6123456798, 7878787878543, "5632976516", "6512095224569") }
  it { should_not have_valid(:isbn).when(nil, "", 4542, 675426792367943) }

  subject { Book.new(isbn: 2345980127, publication_date: "Jan-01-2001", author: "JK", description: "hahahah", name: "best name")}
  it { should validate_uniqueness_of(:isbn).case_insensitive }

  it { should have_valid(:description).when("Harry Potter") }
  it { should_not have_valid(:description).when(nil, "") }

  it { should have_valid(:publication_date).when("Jan-01-2001") }
  it { should_not have_valid(:publication_date).when(nil, "") }

  it { should have_many(:reviews) }
end
