require 'rails_helper'

RSpec.describe Record, type: :model do
  it { should validate_presence_of :location }
  it { should validate_uniqueness_of :location }
  it { should validate_presence_of :comment }
end
