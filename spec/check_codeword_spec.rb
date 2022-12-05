require "check_codeword"

describe "check_codeword" do
  it "returns Correct" do
    expect(check_codeword("horse")).to eq "Correct! Come in."
  end 
end