require 'rails_helper'

describe Listing do
  it {should belong_to :user}
  it {should have_many :photos}
  it { should validate_presence_of :price}
  it { should validate_presence_of :title}
  it { should validate_presence_of :details}
  it { should validate_presence_of :location}

end
