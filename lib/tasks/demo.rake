namespace :demo do
  task :go => [:environment] do
    query = "
    {
      post(id: 1) {
        rating
        title,
        comments {
          title
          comment
        }
      }
    }"
    result = Hashie::Mash.new(SavvySchema.execute(query))
    puts result.inspect
    puts result.data.comments
  end
end