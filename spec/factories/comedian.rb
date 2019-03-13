FactoryBot.define do
  factory :comedian do
    sequence(:name) {|n| "comedian#{n}"}
    sequence(:city) {|n| "city#{n}"}
    age { 60 }
  end

  factory :deceased_comedian, parent: :comedian do
    deceased { true }
  end

  factory :old_comedian, parent: :comedian do
    age { 90 }
  end

  factory :young_comedian, parent: :comedian do
    age { 30 }
  end
end
