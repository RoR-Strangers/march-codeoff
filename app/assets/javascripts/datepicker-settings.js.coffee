$ ->
  # taken from 
  # http://eternicode.github.io/bootstrap-datepicker/? Can make more settings
  # https://github.com/Nerian/bootstrap-datepicker-rails#sandbox.  
  # http://www.eyecon.ro/bootstrap-datepicker/#
  # startDate: "<%=Time.zone.today%>" when I can use the users Time.zone instead of the applications
     $('.datepicker-settings').datepicker({
       format: "D, dd M yyyy",
       autoclose: true
   });