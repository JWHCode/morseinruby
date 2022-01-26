require "morse"

# What to test?
# Function takes in a character, returns a morse code
describe ConvertCharacter do
    describe "Checking morse code function" do
        context "Given a character..." do
            it "Given a, returns .-" do
                # Call function and see if we're getting what we want
                cc=ConvertCharacter.new

                expect(cc.convert_character('a')).to eql(".-")
            end
        end
        context "If given an integer..." do
            it "Returns nil" do
                cc=ConvertCharacter.new
                expect(cc.convert_character(1)).to eql(nil)
            end
        end
        context "If given a long string..." do
            it "Returns nil" do
                cc=ConvertCharacter.new
                expect(cc.convert_character("aaaa")).to eql(nil)
            end
        end
        context "If given a capital character..." do
            it "Returns nil" do
                cc=ConvertCharacter.new
                expect(cc.convert_character("A")).to eql(nil)
            end
        end
        
    end

end