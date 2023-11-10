class LoginPage < SitePrism::Page

    set_url ''
    element :usernameField, :css, 'input[name="username"]'
    element :passwordField, :css, 'input[name="password"]'
    element :loginButton, :css, 'button.oxd-button.oxd-button--medium.oxd-button--main.orangehrm-login-button'

    element :messageLoginInvalidCredentials, :css, '.oxd-text.oxd-text--p.oxd-alert-content-text'
    element :messageLoginRequiredFields, :css, 'span.oxd-text.oxd-text--span.oxd-input-field-error-message.oxd-input-group__message'

    element :forgotPasswordLink, :css, 'p.oxd-text.oxd-text--p.orangehrm-login-forgot-header'

    element :loginTitle, :css, 'h5.oxd-text.oxd-text--h5.orangehrm-login-title'

    element :userDropdown, :css, 'span.oxd-userdropdown-tab[data-v-bdd6d943]'

    element :logoutButton, :css, 'a.oxd-userdropdown-link[href="/web/index.php/auth/logout"][role="menuitem"]'


    def login(username, password)
        usernameField.set (username)
        passwordField.set (password)
        loginButton.click
    end

    def checkMessageErrorInvalidCredentias(invalid_credentials)
        expect(messageLoginInvalidCredentials.text).to eql invalid_credentials
    end

    def checkMessageErrorRequiredFields(required_fields)
        expect(messageLoginRequiredFields.text).to eql required_fields
    end

    def clickForgotPassword
        forgotPasswordLink.click
    end

    def validateLoginPage
        expect(loginTitle.text).to eql "Login"
    end

    def alreadyLogged
        usernameField.set "Admin"
        passwordField.set "admin123"
        loginButton.click
    end

    def logout
        userDropdown.click
        logoutButton.click
    end

end