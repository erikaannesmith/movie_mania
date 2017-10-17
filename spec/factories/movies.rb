FactoryGirl.define do
  factory :movie do
    sequence(:title) { |n| "Title #{n}" }
    sequence(:description) { |n| "Description #{n}" }
    director
  end
end
