$ ->
  # taken from 
  # http://eternicode.github.io/bootstrap-datepicker/? Can make more settings
  # https://github.com/Nerian/bootstrap-datepicker-rails#sandbox.  
  # http://www.eyecon.ro/bootstrap-datepicker/#
     $('.datepicker-settings').datepicker({
       format: "yyyy-mm-dd",
       todayBtn: "linked",
       autoclose: true
   });