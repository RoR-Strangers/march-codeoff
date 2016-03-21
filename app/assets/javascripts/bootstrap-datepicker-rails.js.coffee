$ ->
  # convert bootstrap-datepicker value to rails date format (yyyy-mm-dd) on our hidden field
  # taken from http://stackoverflow.com/questions/15405703/rails-simple-form-bootstrap-and-datepicker
  $(document).on 'changeDate', '.bootstrap-datepicker-rails', (evt) ->
    rails_date = evt.date.getFullYear() + '-' + ('0' + (evt.date.getMonth() + 1)).slice(-2) + '-' + ('0' + evt.date.getDate()).slice(-2)
    $(this).next("input[type=hidden]").val(rails_date)
