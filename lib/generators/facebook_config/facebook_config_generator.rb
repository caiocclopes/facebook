# Use this generator like this:
# rails g facebook_config

class FacebookConfigGenerator < Rails::Generators::Base

  def self.source_root
    @source_root ||= File.join(File.dirname(__FILE__), 'templates')
  end

  def generate_scaffold
    generate("scaffold", "facebook_config account_name:string account_number:integer priority:integer area_id:integer")
    remove_file "./app/models/facebook_config.rb"
    template "facebook_config_model.rb", "./app/models/facebook_config.rb"
  end

end