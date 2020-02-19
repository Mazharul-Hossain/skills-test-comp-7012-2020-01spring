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

class Lease < ApplicationRecord
    validates :tenant, presence: true
    validates :deposit, presence: true
    validates :monthly_rent, presence: true

    validate :deposit_cannot_be_more_than_two_times_the_monthly_rent

    def deposit_cannot_be_more_than_two_times_the_monthly_rent
        if deposit && monthly_rent && deposit > monthly_rent * 2
            errors.add(:deposit, "deposit cannot be more than two times the monthly rent")
        end
    end
end
