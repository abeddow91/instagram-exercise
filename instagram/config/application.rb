require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Instagram
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.generators do |g|
      g.test_framework :rspec,
        # specifies to  generate a fiture for each model using factory girl factory
        fixtures: true,
        # says to skip generting view specs
        view_specs: false,
        # generating specs for the helper files Rails generates with each controller.
        helper_specs: false,
        # omits a spec file for your config/routes.rb file. If this is a large application, its a god idea to incorporate routing specs
        routing_specs: false,
        controller_specs: true,
        request_specs: => true,
        # tells Rails to generate factories instead of fixtures and save them in spec/factories directory
      g.fixture_replacement :factory_girl, :dir => "spec/factories"
    end
  end
end
