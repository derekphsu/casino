describe Casino do
  let!(:casino_1) { Casino.new(name: "Bellagio",location: "Vegas")}
  let!(:casino_2) { Casino.new(name: "Pearl of Macau",location: "Macau")}

  let!(:game_1) { Game.new(name: "poker",      game_type: "cards") }
  let!(:game_2) { Game.new(name: "blackjack",  game_type: "cards") }
  let!(:game_3) { Game.new(name: "craps",      game_type: "dice") }
 
  let!(:casinos_games_1) { CasinosGames.new(casino_id: 1, game_id: 1) }
  let!(:casinos_games_2) { CasinosGames.new(casino_id: 1, game_id: 2) }
  let!(:casinos_games_3) { CasinosGames.new(casino_id: 2, game_id: 2) }
  let!(:casinos_games_4) { CasinosGames.new(casino_id: 2, game_id: 3) }
  
  it "has many casino games" do
    expect(Casino.first.games.length).to eq(2)
    expect(Casino.first.games.first).to eq(Game.first)
  end

  it "must have a valid name" do
    casino_1.name = "faulty name"
    casino_1.valid?
    expect(casino_1.errors[:name]).to eq(["is not included in the list"])
  end
end
