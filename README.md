update_logger
=============
First attempt at a gem.

This is one to add basic logging functionality to Ruby on Rails
application that can be applied to a controller.

It is hoped that this will replace the detail needed in my controllers
that do the logging.

after_action :log_update, only: [:create, :update, :destroy]
...

priavte
 ...
  def log_update
    @at = AccountType.account_type_name(@tempacct.account_type_id)
    log_msg = "id: #{@item_object.id}\name: #{@item_object.name}\nsurname#{@item_object.surname}\ndescription: #{@item_object.description}" 
    ActivityLog.create(:item_type => controller_name.classify, :item_id => @item_object.id, :act_action => action_name, :updated_by => current_user.username, :activity => log_msg, :act_tstamp => Time.now)
  end
