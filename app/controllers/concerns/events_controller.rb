class EventsController < ApplicationController
  def index
    sleep 5
    @page = (params[:page] || 1).to_i
    @per_page = params[:per_page] || 2
    @events = Event.order('created_at DESC').offset((@page - 1) * @per_page).limit(@per_page)
    @total_events = Event.count
    @total_pages = (@total_events.to_f / @per_page.to_f).ceil
  end

  def paginate
    sleep 5
    @page = (params[:page] || 1).to_i
    @per_page = params[:per_page] || 2
    @events = Event.order('created_at DESC').offset((@page - 1) * @per_page).limit(@per_page)
    @total_events = Event.count
    @total_pages = (@total_events.to_f / @per_page.to_f).ceil
    html = render_to_string(
      partial: 'events_index_table',
      locals: {
        events: events,
        pagination: {
          page: page,
          total_pages: total_pages,
        },
      }
    )
    render json: { html: html.html_safe }
  end

  def show
    @event = Event.find(params[:id])
  end
end