class SectionsController < ApplicationController

  def new
    @section = Section.new
    render('sections/new.html.erb')
  end

  def create
    @section = Section.new(params[:section])
    if @section.save
      redirect_to('/lessons')
    else
      render('sections/new.html.erb')
    end
  end

  def edit
    @section = Section.find(params[:id])
    render('sections/edit.html.erb')
  end

  def update
    @section = Section.find(params[:id])

    if @section.update(params[:section])
      redirect_to('/lessons')
    else
      render('sections/edit.html.erb')
    end
  end

  def delete
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to('/lessons')
  end

end
