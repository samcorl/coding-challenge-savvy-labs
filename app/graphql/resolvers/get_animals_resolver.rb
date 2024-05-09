module Resolvers
  class GetAnimalsResolver < GraphQL::Schema::Resolver
    type Types::PostType, null: false
    argument :id, ID

    def resolve(id:)
      ::Post.find(id)
    end
  end
end
