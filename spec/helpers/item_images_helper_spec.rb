require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ItemImagesHelper. For example:
#
# describe ItemImagesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ItemImagesHelper, type: :helper do
  pending "add some examples to (or delete) #{__FILE__}"
end
system("rake db:seed RAILS_ENV=test")
