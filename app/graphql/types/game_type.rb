Types::GameType = GraphQL::ObjectType.define do
  field :name, !types.String
  field :description, types.String
  field :launch_year, !types.String
end