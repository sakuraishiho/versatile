class UserMailer < ApplicationMailer
    default from: 'admin@example.com'  # 送信元のメールアドレス
  
    def registration_confirmation(user)
      @user = user
      mail(to: @user.email, subject: '登録完了') do |format|
        format.text { render plain: "#{@user.name}様\nユーザ登録が完了しました。" }
        format.html { render html: "#{@user.name}様<br>ユーザ登録が完了しました。".html_safe }
      end
    end
  end
