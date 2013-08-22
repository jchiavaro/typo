ARTICLES = [
  { :id => 1, :title=>'First Article', :body=> 'This is the first article', :author=> 'meffekl'},
  { :id => 2, :title=>'Second Article', :body=> 'This is the first article', :author=> 'wipi'}
]

Given /the following articles exist/ do |articles_table|
  articles_table.hashes.each do |article|
    Content.create!(article)
  end
end