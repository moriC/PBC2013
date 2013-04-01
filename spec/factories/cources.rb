#coding: utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cource do
    cource_name "MyString"
  end
end

module Domain
  def self.cource
    [
     {id: 1, cource_name: 'プログラマーコース'},
     {id: 2, cource_name: 'システムデザインコース'},
     {id: 3, cource_name: 'Webデザインコース'},
     {id: 4, cource_name: '初心者コース'},
    ]
   end
end
