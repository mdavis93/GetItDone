namespace :todo do
  desc 'Delete items older than seven days.'
  task delete_items: :environment do
    puts "Cleaned #{Item.where('created_at <= ?', Time.now - 7.days).destroy_all.count} expired task(s)."
  end

end
