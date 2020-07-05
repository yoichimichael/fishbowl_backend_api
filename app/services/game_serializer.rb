class GameSerializer
  
  def initialize(game_object)
    @game = game_object
  end

  def to_serialized_json
    @game.to_json(:include => {
      :host => {
        :include => [
          :game => {:except => [:created_at, :updated_at]}, 
          :team => {:except => [:created_at, :updated_at]}
        ], 
        :except => [
          :created_at, :updated_at
        ]
      },
      :teams => {:except => [:created_at, :updated_at]},
      :players => {
        :include => [
          :game => {:except => [:created_at, :updated_at]}, 
          :team => {:except => [:created_at, :updated_at]}
        ], 
        :except => [:created_at, :updated_at]
      },
      :rounds => {:except => [:created_at, :updated_at]}
    }, :except => [:created_at, :updated_at])
  end

end