class Sale < ActiveRecord::Base
	has_many :items, dependent: :destroy
	validates :customer_name, presence: true,
                    length: { minimum: 8 }
end
