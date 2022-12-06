require "check_codeword"

describe "check_codeword" do

  it "returns Correct" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end 

  it "returns Close" do
    result = check_codeword("h..e")
    expect(result).to eq "Close, but nope."
  end

  it "returns WRONG!" do
    result = check_codeword("banana")
    expect(result).to eq "WRONG!"
  end

end