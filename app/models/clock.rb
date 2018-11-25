class Clock < ApplicationRecord
  validates :user, :in_out, :time, presence: true
  validates :in_out, inclusion: {in: ['In', 'Out']}

end
