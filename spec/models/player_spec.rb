describe Player do
  let!(:player) { Player.new(name: "Derek Hsu") }
  let!(:bet_history)  { BetHistory.new(casino_id: 1, game_id: 1, player_id: 1, betsize: 5.00, profit: 0) }
  let!(:player_balance) { PlayerBalance.new(player_id: 1, balance: 495) }
  let!(:player_transactions) { PlayerTransaction.new(player_id: 1, casino_id: 1, transaction_type: 'deposit', amount: 500) }

  it "has many bet_histories" do
    expect(Player.first.bet_histories.length).to eq(1)
  end
 
  it "has many player_balances" do
    expect(Player.first.player_balances.length).to eq(1)
  end
 
  it "has many player_transactions" do
    expect(Player.first.player_transactions.length).to eq(1)
  end
end

