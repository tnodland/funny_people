FactoryBot.define do
  factory :special do
    sequence(:name) {|n| "special#{n}"}
    sequence(:length) {|n| ("#{n}".to_i+60)}
    image { "https://images-na.ssl-images-amazon.com/images/I/51zLZbEVSTL._SX425_.jpg" }
    comedian
  end
end
