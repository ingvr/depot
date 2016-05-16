# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Depot::Application.initialize!

# Patch for mysql not null id error
# require File.expand_path('../../lib/patches/abstract_mysql_adapter.rb', __FILE__)