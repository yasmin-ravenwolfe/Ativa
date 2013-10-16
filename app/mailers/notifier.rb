class Notifier < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.subscription_confirmation.subject
  #
  def subscription_confirmation(user, project)
    @user = user
    @project = project

    mail(to: "#{user.name} <#{user.email}>", subject: "Subscribed to #{project.name.capitalize} | Ativa")
  end

  def subscription_terminate(user,project)
    @user = user
    @project = project

    mail(to: "#{user.name} <#{user.email}>", subject: "Un-subscribed to #{project.name.capitalize} | Ativa")
  end
end
