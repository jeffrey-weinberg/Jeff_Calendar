var initialize_calendar;
initialize_calendar = function() {
  $(".calendar").each(function() {
    var calendar = $(this);
    calendar.fullCalendar({
      header: {
        left: "",
        center: "title"
      },
      selectable: true,
      selectHelper: true,
      editable: true,
      eventLimit: true,
      events: "/events.json",

      select: function(start, end) {
        $.getScript("/events/new", function() {
          $("#event_date_range").val(
            moment(start).format("MM/DD/YYYY HH:mm") +
              " - " +
              moment(end).format("MM/DD/YYYY HH:mm")
          );
          date_range_picker();
          $(".start_hidden").val(moment(start).format("YYYY-MM-DD HH:mm"));
          $(".end_hidden").val(moment(end).format("YYYY-MM-DD HH:mm"));
        });

        calendar.fullCalendar("unselect");
      },

      eventClick: function(event, jsEvent, view) {
        $.getScript(event.edit_url, function() {});
      }
    });
  });
};
$(document).on("turbolinks:load", initialize_calendar);
