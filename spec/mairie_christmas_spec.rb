require_relative '../lib/maire_christmas.rb'

describe "check" do
  it "should return answer is not nil" do
    expect(perform).not_to be_nil
  end

  it "definition" do
    expect(get_townhall_email("http://annuaire-des-mairies.com/95/berville.html")).to eq("reponse!")
  end

  it "definition" do
    expect(get_townhall_email("http://annuaire-des-mairies.com/95/le-mesnil-aubry.html")).to eq("reponse!")
  end

  it "definition" do
    expect(get_townhall_email("http://annuaire-des-mairies.com/95/themericourt.html")).to eq("reponse!")
  end
end
