class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    # binding.pry
    # @event = Event.new(event_params)
    @event = Event.create(event_params)
    if @event[:start_day] != Time.current 
      @event.save
      redirect_to events_path, notice: 'リストを作成しました'
    else
      flash.now[:alert] = "#{@event.errors.messages.length}つ空欄です。"
      render :new
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path, notice:"削除しました"
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to events_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :content, :start_time, :end_time, :start_day)
  end
end
