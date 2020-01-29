describe CasinosGames do
  let!(:casino) { Casino.create(name: "Pearl of Macau",location: "Macau")}
  let(:game) { Game.create(name: "poker", game_type: "cards") }
  let!(:cg) { CasinosGames.create(casino_id: casino.id, game_id: game.id) }

  it "has game" do
    expect(cg.game).to eq(game)
  end

  it "has casino" do
    expect(cg.casino).to eq(casino)
  end

  it "can only have 1 game per casino" do
    c_1 = Casino.create(name: "Pearl of Macau",location: "Macau")
    g_1 = Game.create(name: "poker", game_type: "cards")
    new_cg = CasinosGames.new(casino_id: c_1.id, game_id: g_1.id)
    
    expect(new_cg.valid?).to eq(true)
    new_cg.casino_id = casino.id
    expect(new_cg.valid?).to eq(true)
    new_cg.game_id = game.id
    new_cg.valid?
    expect(new_cg.errors[:casino_id]).to eq(["has already been taken"])
  end
end