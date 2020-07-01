class GameSerializer
  
  def initialize(game_object)
    @game = game_object
  end

  def to_serialized_json
    @game.to_json(:include => {
      :host => {:except => [:created_at, :updated_at]},
      :teams => {:except => [:created_at, :updated_at]},
      :players => {:except => [:created_at, :updated_at]}
    }, :except => [:created_at, :updated_at])
  end

end