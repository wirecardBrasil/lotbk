class ScoreController < ActionController::API
  def index
    render plain: "Listagem de score de personagens"
  end

  def show
    render plain: "Mostrando a score de 1 personagem"
  end
end
