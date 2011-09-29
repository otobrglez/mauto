class DecisionDivisionValidator < ActiveModel::Validator
	def validate(decision)
		total_level_one = [decision.built_at.to_f, decision.length.to_f, decision.engine.to_f, decision.price.to_f]
		if total_level_one.sum != 1
			decision.errors[:base] << "Decision division on top level must equal 1!
				Current: #{total_level_one.join("/")}=#{total_level_one.sum}"
		else
			total_level_two = [decision.e_power.to_f, decision.e_horses.to_f, decision.e_space.to_f]
			if total_level_two.sum < 0.85
				decision.errors[:base] << "Decision division on engine level must equal 1 (+/- 10%)!
					Current: #{total_level_two.join("/")}=#{total_level_two.sum}"				
			end
		end
	end
end