require "itamae/resource/base"

module Itamae
  module Plugin
    module Resource
      class BrewTap < Itamae::Resource::Base
        define_attribute :action, default: :install
        define_attribute :target, type: String, default_name: true

       def set_current_attributes
          res= run_command("brew tap | grep -w -- #{attributes.target}", error: false)
          current.exist = res.exit_status.equal?(0)
        end

        def action_install(options)
          run_command(["brew", "tap", attributes.target]) unless current.exist
        end

        def action_delete(options)
          run_command(["brew", "untap", attributes.target]) if current.exist
        end
      end
    end
  end
end
