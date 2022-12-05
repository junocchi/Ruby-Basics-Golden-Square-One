require "report_length"

describe "report_length" do
  it "returns length of string" do
    expect(report_length("hello")).to eq "This string was 5 characters long."
  end

  it "returns invalid character" do
    expect(report_length(2)).to eq "Not a string"
  end
end


# Check characters
# If input is empty