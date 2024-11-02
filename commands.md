### 1. create new rails app with database = postgresql
    rails new . --database=postgresql  (If you want to create new folder then rails new <app_name> --database=postgresql)

### 2. ActiveAdmin Setup
    2.1 Add below gems to the gemfile
        gem 'activeadmin'

        # Plus integrations with:
        gem 'devise'
        gem 'cancancan'
        gem 'draper'
        gem 'pundit'

        Then " bundle install "

    2.2 With no arguments we will create an AdminUser class to use with Devise
        rails g active_admin:install

    2.3 rails db:migrate
        rails db:seed
        rails server

### 3 Active Storage Setup:
    3.1 rails active_storage:install
    3.2 rails db:migrate
    
    3.3 Add the active storage association in model file
        has_one_attached :image

