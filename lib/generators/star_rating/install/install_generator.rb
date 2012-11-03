module StarRating
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def manifest
        copy_file "images/on.png", "app/assets/images/on.png"
        copy_file "images/off.png", "app/assets/images/off.png"
        copy_file "rating.coffee", "app/assets/javascripts/rating.coffee"
        copy_file "rating.css", "app/assets/stylesheets/rating.css"
        copy_file "_rating.html.erb", "app/views/shared/_rating.html.erb"
      end
    end
  end
end
