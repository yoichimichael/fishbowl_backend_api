class PlayerSerializer
  
  def initialize(player_object)
    @player = player_object
  end

  def to_serialized_json
    @player.to_json(:include => {
      :game => {:except => [:created_at, :updated_at]},
      :team => {:except => [:created_at, :updated_at]}
    }, :except => [:created_at, :updated_at])
  end

end