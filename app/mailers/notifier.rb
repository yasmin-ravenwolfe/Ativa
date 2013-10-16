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

  def post_notification(post, user)
    @post = post
    @user = user
    
    # Users is an array of all users subscribed to project. Bc its an array, can't call email on it, have to do this through .each on posts_controller.
     mail(to: "#{user.name} <#{user.email}>", subject: "New post #{post.title.capitalize} | Ativa")
  end
  # post.project.subscriptions.users.email
end
