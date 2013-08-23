ARTICLES = [
  { :title=>'First Article', :body=> 'This is the first article', :author=> 'meffekl', :user_id => 1},
  { :title=>'Second Article', :body=> 'This is the first article', :author=> 'wipi', :user_id => 2}
]

Given /the following articles exist/ do |articles_table|
  articles_table.hashes.each do |article|
    Article.create!(article)
  end
end