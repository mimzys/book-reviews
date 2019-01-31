require 'spec_helper'

describe Review do

  it { should have_valid(:rating).when(1, 3, 5) }
  it { should_not have_valid(:rating).when(nil, "", 7, -1, 0) }

  it { should have_valid(:comment).when("J.K Rowling", "", nil, 1) }

  it { should have_valid(:likes).when(0, 6) }
  it { should_not have_valid(:likes).when(nil, "", -1) }

  it { should have_valid(:dislikes).when(0, 6) }
  it { should_not have_valid(:dislikes).when(nil, "", -1) }

  it { should have_valid(:book_id).when(1) }
  it { should_not have_valid(:book_id).when(nil, "") }

  it { should belong_to(:book) }
  it { should belong_to(:user) }
end
