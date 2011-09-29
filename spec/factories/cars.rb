# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
      make "MyString"
      model "MyString"
      e_power 1
      e_horses 1
      e_space 1
      price 1.5
    end
end