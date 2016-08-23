require_relative("../lib/lexicon.rb")

describe Lexicon do 
	before :each do 
		@lexi = Lexicon.new
	end
  describe "#eat_t" do
    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
end

    describe "#shazam" do
    	it "reverses the strings in the array." do
    		expect(@lexi.shazam(["This","is","a","sentence"])).to eq(["sih","ecnenes"])
    end
end
    describe "#oompa_loompa" do
    	it "deletes words over 3 letters long" do
    		expect(@lexi.oompa_loompa(["if","you","wanna","be","my","lover"])).to eq(["if","you","be","my"])
    		expect(@lexi.oompa_loompa(["The","Tiny","Tit"])).to eq(["he","i"])
    end
  end
end