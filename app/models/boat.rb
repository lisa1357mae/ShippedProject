class Boat < ApplicationRecord

belongs_to :company
has_many :boat_jobs
has_many :jobs, :through => :boat_jobs


end
