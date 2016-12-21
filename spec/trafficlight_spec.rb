require_relative '../lib/trafficlight'
require 'byebug'

RSpec.describe "TrafficLight" do
  before(:each) do
    @trafficlight = TrafficLight.new
  end
  it "can initialize" do
    expect(@trafficlight.class).to eq(TrafficLight)
    expect(@trafficlight.print_state).to eq("The light is red")
  end

  it "can change state from red to green" do
    @trafficlight.change_state
    expect(@trafficlight.print_state).to eq("The light is green")
  end
  it "can change state from green to yellow" do
    @trafficlight.change_state
    @trafficlight.change_state
    expect(@trafficlight.print_state).to eq("The light is yellow")
  end
  it "can change state from yellow to red" do
    @trafficlight.change_state
    @trafficlight.change_state
    @trafficlight.change_state
    expect(@trafficlight.print_state).to eq("The light is red")
  end
  it "can change state again and again" do
    @trafficlight.change_state
    @trafficlight.change_state
    @trafficlight.change_state
    @trafficlight.change_state
    expect(@trafficlight.print_state).to eq("The light is green")
  end
end
