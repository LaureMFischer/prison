require_relative "../import_recid_data"
namespace :import do

  desc "Import my recid data"
  # 'Task' is just a method, take three arguments
  # Takes name of task, environment, and a block
  # Environment task is invoked first, makes everything like models available to the ruby
  # we'll write in the task
  task recid_data: :environment do
    ImportRecid.import
  end

end
