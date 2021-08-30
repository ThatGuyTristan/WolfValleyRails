class PropertyComplex < ApplicationRecord
    has_many :residents
    has_many :resident_vehicles, :through => :residents
    has_many :workorders
end
