class AdminPage < SitePrism::Page

  set_url ''
  element :adminMenuItem, :xpath, '//*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a'
  element :addButton, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[1]/button'
  element :selectContainerRole, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div'
  element :selectOption, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div[2]/div[2]'

  element :inputEmployeeName, :css, 'input[data-v-75e744cd]'
  element :selectEmployeeName, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div[2]'

  element :selectContainerStatus, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[3]/div/div[2]/div/div'
  element :enabledOption, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[3]/div/div[2]/div/div[2]/div[2]'
  element :inputUsername, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[4]/div/div[2]/input'

  element :passwordField, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/input'
  element :passwordFieldConfirm, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[2]/div/div[2]/input'

  element :saveButton, :css, 'button.oxd-button.oxd-button--medium.oxd-button--secondary.orangehrm-left-space'

  element :successMessage, :xpath, '//*[@id="oxd-toaster_1"]/div/div[1]/div[2]'

  element :passwordHint, '.user-password-hint'

  element :inputUsernameSearch, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/input'
  element :searchButton, :css, 'button.oxd-button.oxd-button--medium.oxd-button--secondary.orangehrm-left-space[data-v-10d463b7]'
  element :usernameColumn, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div[2]/div'

  element :deleteButton, :xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div[6]/div/button[1]'
  element :titleConfirmation, :css, 'p.oxd-text.oxd-text--p.oxd-text--card-title[data-v-7b563373]'
  element :bodyConfirmation, :css, 'p.oxd-text.oxd-text--p.oxd-text--card-body[data-v-7b563373]'
  element :deleteConfirmButton, :xpath, '//*[@id="app"]/div[3]/div/div/div/div[3]/button[2]'

  element :successDeleted, :xpath, '//*[@id="oxd-toaster_1"]/div/div[1]/div[2]'

  def createNewAdm(employee_name, username, password)

    adminMenuItem.click
    addButton.click

    selectContainerRole.click
    selectOption.click

    inputEmployeeName.set (employee_name)
    sleep 2
    selectEmployeeName.click

    selectContainerStatus.click
    enabledOption.click

    inputUsername.set (username)

    passwordField.set (password)
    passwordFieldConfirm.set (password)

    expect(passwordHint.text).to eql "For a strong password, please use a hard to guess combination of text with upper and lower case characters, symbols and numbers"

    saveButton.click
  end

  def checkNewAdmSuccessfull
    expect(successMessage.text).to eql "Success\nSuccessfully Saved"
  end

  def searchNewAdmin(username)
    adminMenuItem.click
    inputUsernameSearch.set (username)
    searchButton.click
  end

  def checkAdminOnList(username)
    expect(usernameColumn.text).to eql username
  end

  def deleteNewAdmin
    deleteButton.click
    expect(titleConfirmation.text).to eql "Are you Sure?"
    expect(bodyConfirmation.text).to eql "The selected record will be permanently deleted. Are you sure you want to continue?"
    deleteConfirmButton.click
  end

  def deletedWithSuccessfull
    expect(successDeleted.text).to eql "Success\nSuccessfully Deleted"
  end

end