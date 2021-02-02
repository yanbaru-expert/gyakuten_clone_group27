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
  
    @event = Event.new(event_params)
    d = @event.start_day.values
    s = @event.start_time
    e = @event.end_time
    @event.start_time = Time.zone.local(d[0], d[1], d[2], s.hour, s.min)
    @event.end_time = Time.zone.local(d[0], d[1], d[2], e.hour, e.min)
    # timezone = @event.start_day + @event.start_time
    # timezone
    # @event.start_time = @event.start_day
    # @event.end_time = @event.start_day
    # @event.start_time.to_i = @event.start_day
    # @event.end_time = @event.start_day{1..3}
    # @evevt
    # binding.pry
    # @event.start_time.save
    # @event.end_time.save
    # binding.pry
    if @event.save
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
