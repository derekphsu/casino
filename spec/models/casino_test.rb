# class CasinoTest < ActiveSupport::TestCase
#   test "the truth" do
#     debugger
#     assert Casino.last.games.length == 1
#   end
# end
describe "Casino" do
  before(:all) do
    # Rails.application.load_seed
  end

  describe "my model..." do
    it "passes" do
      expect(true).to eq(false)
    end
  end
end