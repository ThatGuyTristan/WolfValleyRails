class Resident < ApplicationRecord
    belongs_to :property_complex

    has_many :work_orders
    has_many :resident_vehicles
end