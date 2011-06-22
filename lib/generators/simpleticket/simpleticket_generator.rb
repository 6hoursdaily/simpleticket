class SimpleticketGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  
  def generate_controller
    copy_file "controllers/issues_controller.rb", "app/controllers/issues_controller.rb"
  end
  
  def generate_model
    copy_file "models/issue.rb", "app/models/issue.rb"
  end
  
  def generate_view
    copy_file "views/edit.html.erb", "app/views/issues/edit.html.erb"
    copy_file "views/index.html.erb", "app/views/issues/index.html.erb"
    copy_file "views/show.html.erb", "app/views/issues/show.html.erb"
    copy_file "views/new.html.erb", "app/views/issues/new.html.erb"
  end
  
  def generate_migrations
    copy_file "migrations/create_issues.rb", 
      "db/migrate/#{Time.now.strftime "%Y%m%d%H%M%S"}_create_issues.rb"
  end
  
  def update_routes
    route "resources :issues"
  end
  
  def migrate_db
    rake "db:migrate"
  end
end
