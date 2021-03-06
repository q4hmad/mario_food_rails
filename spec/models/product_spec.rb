require 'rails_helper'

describe Product do
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country_of_origin }
end

# describe Product do
#   it { should validate_presence_of :cost }
# end
#
# describe Product do
#   it { should validate_presence_of :country_of_origin }
# end
