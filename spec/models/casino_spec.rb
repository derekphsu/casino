describe Casino do
  it "has many casino games" do
    expect(Casino.first.games.length).to eq(2)
    expect(Casino.first.games.first).to eq(Game.first)
  end

  it "must have a valid name" do
    bad_name = Casino.last
    bad_name.name = "faulty name"
    bad_name.valid?
    expect(bad_name.errors[:name]).to eq(["is not included in the list"])
  end
end
