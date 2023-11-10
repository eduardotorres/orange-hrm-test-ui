class ResetPasswordPage < SitePrism::Page

  element :resetPasswordTitle, :css, 'h6.oxd-text.oxd-text--h6.orangehrm-forgot-password-title'
  element :instructionText, :xpath, '//*[@id="app"]/div[1]/div[1]/div/form/p/p'
  element :usernameField, :css, 'input[name="username"]'
  element :cancelButton, :css, 'button.oxd-button.oxd-button--large.oxd-button--ghost.orangehrm-forgot-password-button.orangehrm-forgot-password-button--cancel'
  element :resetPasswordButton, :css, 'button.oxd-button.oxd-button--large.oxd-button--secondary.orangehrm-forgot-password-button.orangehrm-forgot-password-button--reset'

  element :successMessageTitle, :css, 'h6.oxd-text.oxd-text--h6.orangehrm-forgot-password-title'
  element :successMessagesubTitle, :xpath, '//*[@id="app"]/div[1]/div[1]/div/p[1]/p'
  element :successMessageSecondSubTitle, :xpath, '//*[@id="app"]/div[1]/div[1]/div/p[2]/p'
  element :successMessageThirdSubTitle, :xpath, '//*[@id="app"]/div[1]/div[1]/div/p[3]/p[2]'
  element :noteMessage, :css, 'p.oxd-text.oxd-text--p.orangehrm-sub-title'

  element :cancelButton, :css, 'button.oxd-button.oxd-button--large.oxd-button--ghost.orangehrm-forgot-password-button.orangehrm-forgot-password-button--cancel'



  def resetPassword
    expect(resetPasswordTitle.text).to eql "Reset Password"
    expect(instructionText.text).to eql "Please enter your username to identify your account to reset your password"
    usernameField.set "Admin"
    resetPasswordButton.click
  end

  def resetPasswordSuccessfully
    expect(successMessageTitle.text).to eql "Reset Password link sent successfully"
    expect(successMessagesubTitle.text).to eql "A reset password link has been sent to you via email."
    expect(noteMessage.text).to eql "Note:"
    expect(successMessageSecondSubTitle.text).to eql "You can follow that link and select a new password."
    expect(successMessageThirdSubTitle.text).to eql "If the email does not arrive, please contact your OrangeHRM Administrator."
  end

  def cancelResetPassword
    cancelButton.click
  end
end