class Decision

	include ActiveModel::Validations
	include ActiveModel::Conversion
	
	include ActiveSupport::Callbacks
	extend ActiveModel::Naming

	attr_accessor :built_at, :length, :engine, :price
	attr_accessor :e_power, :e_horses, :e_space
		
	validates_presence_of :built_at, :engine, :price, :e_power, :e_horses, :e_space
	validates_with DecisionDivisionValidator
	
	def initialize(attributes = {})
    	attributes.each do |name, value|
      		send("#{name}=", value)
    	end
    	self.default_values
  	end

  	def default_values
		self.built_at 	||= 0.25
		self.length 	||= 0.25
		self.engine 	||= 0.25
		self.e_power 		||=0.33
		self.e_horses 		||=0.33
		self.e_space 		||=0.33
		self.price  	||= 0.25
	end

	def importance
		{
			built_at: self.built_at,
			length: self.length,
				e_power: self.e_power*self.engine.to_f,
				e_horses: self.e_horses*self.engine.to_f,
				e_space: self.e_space*self.engine.to_f,
			price: self.price
		}
	end

	def benefit
		{
			built_at: Proc.new do |built_at, interes_f=0.5|
				max = Car.order("built_at DESC").limit(1).first.built_at.strftime("%Y").to_i
				(built_at.to_f/max.to_f) ** interes_f
			end,
			
			length: Proc.new do |price, interes_c=1.089, interes_f=3.5|
				interes_c+((price/Car.sum(:length)) ** interes_f)
			end,
			
			e_power: Proc.new do |e_power, interes_f=0.65|
				max = Car.maximum(:e_power)
				(e_power.to_f/max.to_f) ** interes_f
			end,
			
			e_horses: Proc.new do |e_horses, interes_f=0.94|
				max = Car.maximum(:e_horses)
				(e_horses.to_f/max.to_f) ** interes_f
			end,
			
			e_space: Proc.new do |e_space, interes_f=1.34|
				max = Car.maximum(:e_space)
				(e_space.to_f/max.to_f) ** interes_f
			end,

			price: Proc.new do |price, interes_c=1.089, interes_f=3.1|
				interes_c+((price/Car.sum(:price)) ** interes_f)
			end
		}		
	end

	def decide
		cars = Car.all.map! do |car|
			car.score = 0
			
			fields = %w(built_at length e_power e_horses e_space price).map! {|f| f.to_sym }

			fields.each do |field|
				car.score += self.benefit[field].call(car[field].to_f) * self.importance[field].to_f
			end

			car
		end

		cars.sort_by(&:score).reverse!
	end

	def persisted?
		false
	end

end
