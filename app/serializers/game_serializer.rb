class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :join_code, :host, :teams
end
