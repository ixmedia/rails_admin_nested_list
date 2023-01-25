require 'rails'
require 'rails_admin_nested_list'

module RailsAdminNestedList
  class Engine < Rails::Engine
    initializer "RailsAdminNestedList precompile hook", group: :all do |app|
      app.config.assets.precompile += %w(rails_admin/rails_admin_nestable_list.css)
    end
  end
end
