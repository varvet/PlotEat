# frozen_string_literal: true

module ApplicationHelper
  def error_message_for(field, options = { prepend_text: "" })
    error_message = @user.errors[field][0]
    raw "<span class='formError'>#{options[:prepend_text]} #{error_message}</span>" if error_message
  end
end
