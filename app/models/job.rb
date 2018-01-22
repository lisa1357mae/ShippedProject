class Job < ApplicationRecord

# belongs_to :company
has_many :customers
has_many :boat_jobs
has_many :boats , :through => :boat_jobs

validates :cost , numericality: true 
validates :cost , numericality: {greater_than_or_equal_to: 1000}
end
