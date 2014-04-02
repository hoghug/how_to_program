class LessonsController < ApplicationController
  def index
    @lessons = Lesson.find(:all, :order => "number")
    render('index.html.erb')
  end

  def new
    @sections = Section.all
    @lesson = Lesson.new
    render('new.html.erb')
  end

  def create
    @lesson = Lesson.new(params[:lesson])
    if @lesson.save
      redirect_to("/lessons/#{@lesson.number}")
    else
      render('new.html.erb')
    end
  end

  def show
    @lesson = Lesson.find_by(number: params[:number])
    @section = Section.find(@lesson.section_id)
    render('lessons/show.html.erb')
  end

  def edit
    @sections = Section.all
    @lesson = Lesson.find_by(number: params[:number])
    render('lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.find_by(number: params[:number])
    if @lesson.update(params[:lesson])
      flash[:notice] = "Post successfully created"
      redirect_to("/lessons/#{@lesson.number}")
    else
      render('edit.html.erb')
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to("/lessons")
  end

end





