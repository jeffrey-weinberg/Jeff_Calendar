class TodosController < ApplicationController
    before_action :set_event
    before_action :set_todo, except: [:create]

    def create
        @event = Event.find(params[:event_id])
        @todo = @event.todos.create(todo_params)
        redirect_to event_path(@event)
    end

    def complete
    end

    def complete
        @todo.update_attribute(:completed_at, Time.now)
        redirect_to event_path(@event)
        # notice: "Todo item completed"
    end
     
      private
        def set_event
            @event = Event.find(params[:event_id])
        end

        def set_todo
          @todo = @event.todos.find(params[:id])
        end

        def todo_params
          params.require(:todo).permit(:body, :priority)
        end
end
