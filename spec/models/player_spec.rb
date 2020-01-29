describe Player do
  let!(:player) { Player.create(name: "Derek Hsu") }
  let!(:casino) { Casino.create(name: "Pearl of Macau",location: "Macau")}
  let(:game) { Game.create(name: "poker",      game_type: "cards") }
  let!(:bet_history)  { BetHistory.create(casino_id: casino.id, game_id: game.id, player_id: player.id, betsize: 5.00, profit: 0) }
  let!(:player_balance) { PlayerBalance.create(player_id: player.id, balance: 495) }
  let!(:player_transaction) { PlayerTransaction.create(player_id: player.id, casino_id: casino.id, transaction_type: 'deposit', amount: 500) }

  it "has many bet_histories" do
    expect(player.bet_histories.length).to eq(1)
    expect(player.bet_histories.first).to eq(bet_history)
  end
 
  it "has many player_balances" do
    expect(player.player_balances.length).to eq(1)
    expect(player.player_balances.first).to eq(player_balance)
  end
 
  it "has many player_transactions" do
    expect(player.player_transactions.length).to eq(1)
    expect(player.player_transactions.first).to eq(player_transaction)
  end
end

