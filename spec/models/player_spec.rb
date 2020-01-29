describe Player do
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
