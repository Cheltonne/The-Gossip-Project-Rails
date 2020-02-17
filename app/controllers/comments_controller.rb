class CommentsController < ApplicationController

  def index
  end

  def create
    puts "Petite création de commentaire au calme"
    @gossip = Gossip.find(params[:gossip_id])
    @comment = Comment.new(content: params['body'], gossip_id: @gossip.id, user_id: 12)
    if @comment.save
      flash[:success] = "Le Commentaire a bien été créé !"
      redirect_to gossip_path(@gossip.id)
    else
      flash[:danger] = "Le Commentaire n'a pas été créé !"
    end
  end

  def new
    @comment = Comment.new
  end

  def edit
    @gossip= Gossip.find(params['gossip_id'])
    @comment = Comment.find(params['id'])
  end

  def update
    @gossip = Gossip.find(params['gossip_id'])
    @comment = Comment.find(params['id'])
    if @comment.update(content: params['content'])
      redirect_to gossip_path(@gossip.id)
      flash[:success] = "Le Commentaire a bien été édité !"
    else
      render gossip_path(@gossip.id)
      flash[:danger] = "Le Commentaire n'a pas été édité !"
    end
  end

  def destroy
    @gossip = Gossip.find(params['gossip_id'])
    @comment = Comment.find(params['id'])
    if @comment.destroy
      redirect_to gossip_path(@gossip.id)
      flash[:success] = "Le Commentaire a bien été supprimé !"
    else
      render gossip_path(@gossip.id)
      flash[:danger] = "Le Commentaire n'a pas été supprimé !"
    end
  end
end