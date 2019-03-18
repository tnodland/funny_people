FactoryBot.define do
  factory :special do
    sequence(:name) {|n| "special#{n}"}
    length { 60 }
    image { "https://images-na.ssl-images-amazon.com/images/I/51zLZbEVSTL._SX425_.jpg" }
    comedian
  end

  factory :short_special, parent: :special do
    length { 45 }
  end

  factory :long_special, parent: :special do
    length { 75 }
  end
end
