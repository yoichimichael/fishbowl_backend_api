class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :game, :team
end
