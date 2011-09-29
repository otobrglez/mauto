class Car < ActiveRecord::Base


	validates_presence_of :make, :model, :e_power, :e_horses, :e_space, :price, :built_at, :length
	validates_numericality_of :e_power, :e_horses, :e_space, :price, :length


	default_scope order("built_at DESC, updated_at DESC")

	def to_s
		"#{self.make} - #{self.model}"
	end

	def to_param
		"#{id}-#{self.make}-#{self.model}-#{self.built_at.strftime("%Y")}".parameterize
	end

end
