describe Casino do
  let!(:casino_1) { Casino.create(name: "Pearl of Macau",location: "Macau")}
  let!(:casino_2) { Casino.create(name: "Bellagio", location: "Macau")}

  let(:game_1) { Game.create(name: "poker",      game_type: "cards") }
  let(:game_2) { Game.create(name: "craps",      game_type: "dice") } 
  let(:game_3) { Game.create(name: "blackjack",  game_type: "cards") }
  
  let!(:cg_1) { CasinosGames.create(casino_id: casino_1.id, game_id: game_1.id) }
  let!(:cg_2) { CasinosGames.create(casino_id: casino_1.id, game_id: game_2.id) }
  let!(:cg_3) { CasinosGames.create(casino_id: casino_2.id, game_id: game_2.id) }
  let!(:cg_4) { CasinosGames.create(casino_id: casino_2.id, game_id: game_3.id) }

  it "has many casino games" do
    expect(casino_1.games.length).to eq(2)
    expect(casino_1.games.first).to eq(game_1)
  end

  it "must have a valid name" do
    casino_1.name = "faulty name"
    casino_1.valid?
    expect(casino_1.errors[:name]).to eq(["is not included in the list"])
  end
end
