class ChaptersController < ApplicationController

  def new
    @chapter = Chapter.new
    render('chapters/new.html.erb')
  end

  def create
    @chapter = Chapter.new(params[:chapter])

    if @chapter.save
      redirect_to('/lessons')
    else
      render('chapters/new.html.erb')
    end
  end

  def edit
    @chapter = Chapter.find(params[:id])
    render('chapters/edit.html.erb')
  end

  def update
    @chapter = Chapter.find(params[:id])
    if @chapter.update(params[:chapter])
      redirect_to('/lessons')
    else
      render('chapters/edit.html.erb')
    end
  end
  def destroy
    @chapter = Chapter.find(params[:id])
    @chapter.destroy
    redirect_to('/lessons')
  end
end
