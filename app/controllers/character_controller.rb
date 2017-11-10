class CharacterController < ActionController::API

  def create
    render plain: "Criando personagem"
  end

  def find
    render plain: "Encontrando personagem"
  end

  def show
    render plain: "Encontrando personagem 2"
  end

  def update
    render plain: "Atualizando personagem"
  end
end
