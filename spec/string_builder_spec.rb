require "string_builder"

RSpec.describe StringBuilder do
  context "initially" do
    it "initially returns an empty string" do
      string_builder = StringBuilder.new
      expect(string_builder.output).to eq ""
    end
    
    it "initially returns a length of 0" do
      string_builder = StringBuilder.new
      expect(string_builder.size).to eq 0
    end
  end

  context "given many additions of a string" do
    it "returns the string" do
      string_builder = StringBuilder.new
      string_builder.add("London")
      string_builder.add("Cambridge")
      string_builder.add("Bristol")
      expect(string_builder.output).to eq "LondonCambridgeBristol"
    end
 
    it "has the string's number of characters" do
      string_builder = StringBuilder.new
      string_builder.add("London")
      string_builder.add("Cambridge")
      string_builder.add("Bristol")
      expect(string_builder.size).to eq 22
    end
  end
end

# Failures:

#   1) StringBuilder initially initially returns an empty string
#      Failure/Error: expect(string_builder.output).to eq ""
     
#        expected: ""
#             got: nil
     
#        (compared using ==)
#      # ./spec/string_builder_spec.rb:7:in `block (3 levels) in <top (required)>'

#   2) StringBuilder given many additions of a string returns the string
#      Failure/Error: expect(string_builder.output).to eq "LondonCambridgeBristol"
     
#        expected: "LondonCambridgeBristol"
#             got: nil
     
#        (compared using ==)
#      # ./spec/string_builder_spec.rb:22:in `block (3 levels) in <top (required)>'

# Finished in 0.01514 seconds (files took 0.09908 seconds to load)
# 4 examples, 2 failures

# Failed examples:

# rspec ./spec/string_builder_spec.rb:5 # StringBuilder initially initially returns an empty string
# rspec ./spec/string_builder_spec.rb:17 # StringBuilder given many additions of a string returns the string
