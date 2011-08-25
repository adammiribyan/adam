FactoryGirl.define do 
  factory :request do
    body 'thedoctor@adammiribyan.com'
  end
  
  factory :post do
    title 'Prince and Pirate'
    lead 'They.'
    body 'They were.'
  end
end