class Job < ApplicationRecord

# belongs_to :company
has_many :customers
has_many :boat_jobs
has_many :boats , :through => :boat_jobs

end
