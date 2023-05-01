require_relative '../items_manager'

namespace :items do
  task fix_users_associations: :environment do
    user = User.find_by_email('dominik@email.com')
    ItemsManager.new.fix_items_and_users_associations(user: user)
    p 'Task: fix_users_associations done! '
  end
end
