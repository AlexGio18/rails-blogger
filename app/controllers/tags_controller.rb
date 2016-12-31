class TagsController < ApplicationController
  http_basic_authenticate_with name: "aristophanes", password: "badandboujee", only: :destroy
  
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tag = Tag.find(params[:id])
    flash.notice = "Tag '#{@tag.name}' Destroyed!"
    @tag.destroy

    redirect_to tags_path
  end
end
