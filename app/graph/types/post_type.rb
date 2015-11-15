PostType = GraphQL::ObjectType.define do
  name "Post"
  description "A post entry"

  interfaces [NodeIdentification.interface]

  field :id, field: GraphQL::Relay::GlobalIdField.new('Post')
  field :title, types.String, "The title of this post"
  field :body, types.String,  "The body of this post"
  field :user, UserType, "User associated with this post"


  connection :comments, CommentType.connection_type do
    resolve ->(post, args, ctx){
      post.comments.includes(:user)
    }
  end

  field :comments_count do
    type types.Int
    description "get comments count"
    resolve -> (post, arguments, context) {
      post.comments.count
    }
  end

end
