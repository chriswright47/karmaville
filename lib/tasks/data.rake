namespace :migrate do
  desc 'seed karma_score column'
  task :add_karma => :environment do
    User.pluck(:id).each_slice(1000) do |ids|
      User.where(:id => ids).includes(:karma_points).each do |user|
        user.karma_score = user.total_karma
        user.save(:validate => false)
        print '.'
      end
    end
  end
end


#     users.each do |user|
#       user.karma_score = user.total_karma
#       user.save(:validate => false)
#       print '.'
#     end
#   end
# end