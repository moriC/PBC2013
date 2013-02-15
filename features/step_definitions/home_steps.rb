# coding: utf-8
前提 /^参加者がログインしている$/ do

end

もし /^"(.*?)"に訪問する$/ do |path|
  visit(path)
end

ならば /^合宿の情報が表示されている$/ do
  have_content('PBC2013')
end