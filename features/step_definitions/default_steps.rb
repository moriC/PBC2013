# coding: utf-8
前提 /^参加者がログインしている$/ do
  @user ||= FactoryGirl.create :user, number: "b210132" ,email: "b210132@cc.it-hiroshima.ac.jp", password: "hogehoge"
  visit('/users/sign_in')
  fill_in 'user[number]', with: @user.number
  fill_in 'user[password]', with: "hogehoge"
  click_button 'login'
end

もし /^"(.*?)"に訪問する$/ do |path|
  visit(path)
end

ならば /^合宿の情報が表示されている$/ do
  have_content('PBC2013')
end