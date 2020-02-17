class GossipController < ApplicationController
  def all
    puts "On affiche les potins."
  end

  def show
    puts "On affiche les potins separement."
    @gossip = Gossip.find(params[:id])
    @author = Gossip.find(params[:id]).user.first_name + "#{Gossip.find(params[:id]).user.last_name}"
    @title = Gossip.find(params[:id]).title
    @creation_date = Gossip.find(params[:id]).created_at
  end

  def new
  end

  def create
      puts "La méthode create s'est lancée correctement."
      @gossip = Gossip.new(title: params[:title], content: params[:body], user_id: 12)
      if @gossip.save
        flash[:notice] = "Votre gossip a bien été sauvegardé."
        redirect_to root_path
      else
        @errors = @gossip.errors
        render new_gossip_path
      end
  end

  def update
    puts "La méthode update s'est lancée correctement."
    @gossip = Gossip.find(params[:id])
  if @gossip.update(title: params[:title], content: params[:body])
    redirect_to @gossip
  else
    render :edit
  end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.delete
    redirect_to root_path
  end
end