# == Schema Information
#
# Table name: leases
#
#  id           :bigint           not null, primary key
#  deposit      :integer
#  monthly_rent :integer
#  rental       :string
#  tenant       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class LeaseTest < ActiveSupport::TestCase

  test "all fixtures valid" do
    leases.each do |l|
      assert l.valid?
    end
  end

  test "tenant is empty" do
    one = leases(:one)
    one.tenant = nil
    assert_not one.valid?

    two = leases(:two)
    two.tenant = ""
    assert_not two.valid?
  end

  test "deposit cannot be more than two times the monthly rent" do
    one = leases(:one)
    assert one.valid?

    one = leases(:one)
    one.deposit = one.monthly_rent * 2
    assert one.valid?

    two = leases(:two)
    two.deposit = two.monthly_rent * 2 + two.deposit
    assert_not two.valid?
  end

end
