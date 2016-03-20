class BootstrapDatepickerInput < SimpleForm::Inputs::Base
  def input
     text_field_options = input_html_options
     hidden_field_options = text_field_options.dup
     hidden_field_options[:class] << 'bootstrap-datepicker-rails'
     text_field_options[:class] << 'datepicker-settings'
     set_data_option(text_field_options, 'provide', 'datepicker')

     return_string =
       "#{@builder.text_field(attribute_name, text_field_options.to_hash)}\n" +
       "#{@builder.hidden_field(attribute_name, hidden_field_options.to_hash)}\n"
    return return_string.html_safe
  end

protected

   def set_data_option(hash, key, value)
     hash[:data].try(:[]=,key,value) || (hash["data-#{key}"] = value)
   end

end