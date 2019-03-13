FactoryBot.define do
  factory :comedian do
    sequence(:name) {|n| "comedian#{n}"}
    sequence(:city) {|n| "city#{n}"}
    sequence(:age) {|n| ("#{n}".to_i+30)}
  end

  factory :deceased_comedian, parent: :comedian do
    deceased { true }
  end
end
