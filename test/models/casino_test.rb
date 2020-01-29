require 'test_helper'

class CasinoTest < ActiveSupport::TestCase
  test "the truth" do
    debugger
    assert Casino.last.games.length == 1
  end
end

describe CasinoTest do
  before(:all) do
  Rails.application.load_seed
end

describe "my model..." do
  it "passes" do
    expect(true).to eq(true)
  end
end