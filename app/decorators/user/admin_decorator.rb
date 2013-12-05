class User::AdminDecorator < Draper::Decorator
  delegate_all

  decorates "User::Admin"

  def full_name
    "#{first_name} #{nick.blank? ? '' : "\"#{nick}\""} #{last_name}"
  end

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

end
