module Types
  class QueryType < Types::BaseObject
    field :game do
      type Types::GameType
      argument :id, !types.Int
      resolve -> (root, args, ctx) {
        Game.find(args[:id])
      }
    end
  end
end
