require 'test_helper'

class ClockTest < ActiveSupport::TestCase
  test 'valid clock' do
    clock = Clock.new(user: 'Bobo', in_out: 'In', time: Time.now)
    assert clock.valid?
  end

  test 'invalid clock without user' do
    clock = Clock.new(in_out: 'In', time: Time.now)
    refute clock.valid?
  end

  test 'invalid clock without In/Out' do
    clock = Clock.new(user: 'Bobo', time: Time.now)
    refute clock.valid?
  end

  test 'invalid clock without time' do
    clock = Clock.new(user: 'Bobo', in_out: 'In')
    refute clock.valid?
  end

  test 'invalid clock with wrong In/Out input' do
    clock = Clock.new(user: 'Bobo', time: Time.now, in_out: 'Oops')
    refute clock.valid?
  end
end
