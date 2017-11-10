class CharacterController < ActionController::API
  def create
    # render plain: 'Criando personagem'
    character = Character.new(name: params[:name])
    if character.save

      current_stat = CurrentStat.new(character_id: character.id)

      if current_stat.save
        render plain: 'Personagem criado com sucesso'
      else
        render plain: 'Não foi possível criar o personagem1'
      end

    else

      render plain: 'Não foi possível criar o personagem'

    end
  end

  def find
    render plain: 'Encontrando personagem'
  end

  def show
    render plain: 'Encontrando personagem 2'
  end

  def update
    render plain: 'Atualizando personagem'
  end
end
