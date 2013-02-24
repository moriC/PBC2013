# coding: utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "pbc2013@pbc.com"
    password "pbc2013admin"
    remember_created_at nil
    last_sign_in_at Time.now
    name "pbc2013"
    faculty "情報学部"
    department "知的情報システム学科"
    year 3
    number "b21xxxx"
  end
end