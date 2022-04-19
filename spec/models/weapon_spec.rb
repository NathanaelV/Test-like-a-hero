require 'rails_helper'
require 'faker'

RSpec.describe Weapon, type: :model do
  it 'is valid' do
    name = 'Mjölnir'
    description = "Thor's Hammer"
    power_base = 3000
    power_step = 100
    level = 1
    weapon = Weapon.new(name: name, description: description, power_base: power_base, power_step: power_step, level: level)

    expect(weapon.name).to eq(name)
    expect(weapon.description).to eq(description)
    expect(weapon.power_base).to eq(power_base)
    expect(weapon.power_step).to eq(power_step)
    expect(weapon.level).to eq(level)
  end

  it 'when the weapon is at level one' do
    power_base = 3000 
    power_step = 100 
    level = 1
    weapon = build(:weapon, power_base: power_base, power_step: power_step, level: level)

    expect(weapon.current_power).to eq(3000)
  end

  it 'when the weapon is at level five' do
    power_base = 3000 
    power_step = 100 
    level = 5
    weapon = build(:weapon, power_base: power_base, power_step: power_step, level: level)

    expect(weapon.current_power).to eq(3400)
  end

  it 'is a title' do
    name = Faker::Games::Pokemon.name
    level = FFaker::Random.rand(1..100)
    weapon = build(:weapon, name: name, level: level)

    expect(weapon.title).to eq("#{name} ##{level}")
  end
end
