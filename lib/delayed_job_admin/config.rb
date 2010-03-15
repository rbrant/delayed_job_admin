module DelayedJobAdmin
  module Config

    # Specify the controller DelayedAdmin controllers inherit from
    # Redefine in lib/delayed_job_admin/config.rb:
    # module DelayedAdmin::Config
    #   def self.parent_controller_class() AdminController end
    # end
    def self.parent_controller_class
      self.settings['parent_controller_class'] ? 
        self.settings['parent_controller_class'].constantize : 
        ActionController::Base
    end
    
    def self.settings
      begin
        YAML.load_file("#{RAILS_ROOT}/config/delayed_job_admin.yml")
      rescue
        {}
      end
    end
    
  end
end