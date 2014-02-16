module UpdateLogger
  module ActvityLog
    def log_update(item_id = nil, log_msg = nil) 
      ActivityLog.create(:item_type => controller_name.classify, :item_id => item_id, :act_action => action_name, :updated_by => current_user.username, :activity => log_msg, :act_tstamp => Time.now)
      #Rails.logger.debug "DEBUG: #{current_user.username} Updated data: ext #{ext} in subdept #{sdp} for #{@phone.user_name}"
    end
    protected
    def new
      @activity_log = ActivityLog.new
    end
    def create
      @activity_log = ActivityLog.new(activity_log_params)
      @activity_log.save
    end
  end
end
