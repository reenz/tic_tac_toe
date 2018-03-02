require 'player'

describe Player do
  let(:player) {described_class.new("x")}

  describe "player" do
    it "returns the name the player" do
      expect(player.name).to eq "x"
    end
  end
end
