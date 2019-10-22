# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

=begin
ActionMailer::Base.smtp_settings = {
  user_name: ENV['SENDGRID_LOGIN'],
  password: ENV['SENDGRID_PWD'],
  domain: 'monsite.fr',
  address: 'smtp.sendgrid.net',
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}
=end

# SMTP AWS SES
ActionMailer::Base.smtp_settings = {
  address: 'email-smtp.eu-west-1.amazonaws.com',
  port: 587,
  user_name: ENV['SES_SMTP_USERNAME'], # Your SMTP user
  password: ENV['SES_SMTP_PASSWORD'], # Your SMTP password
  authentication: :login,
  enable_starttls_auto: true
}
