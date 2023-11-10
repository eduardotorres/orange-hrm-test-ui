class HomePage < SitePrism::Page

  set_url ''
  element :textDashboard, :xpath , "//*[@id='app']/div[1]/div[1]/header/div[1]/div[1]/span/h6"
  element :textTimeAtWork, :xpath, "//*[@id='app']/div[1]/div[2]/div[2]/div/div[1]/div/div[1]/div/p"
  element :textMyActions, :xpath, "//*[@id='app']/div[1]/div[2]/div[2]/div/div[2]/div/div[1]/div/p"
  element :textQuickLaunch, :xpath, "//*[@id='app']/div[1]/div[2]/div[2]/div/div[3]/div/div[1]/div/p"
  element :textBuzzLatestPosts, :xpath, "//*[@id='app']/div[1]/div[2]/div[2]/div/div[4]/div/div[1]/div/p"
  element :textEmployeesOnLeaveToday, :xpath, "//*[@id='app']/div[1]/div[2]/div[2]/div/div[5]/div/div[1]/div/p"
  element :textEmployeeDistributionBySubUnit, :xpath, "//*[@id='app']/div[1]/div[2]/div[2]/div/div[6]/div/div[1]/div/p"
  element :textEmployeeDistributionByLocation, :xpath, "//*[@id='app']/div[1]/div[2]/div[2]/div/div[7]/div/div[1]/div/p"

  def checkLoginSuccessful
    expect(textDashboard.text).to eql "Dashboard"
    expect(textTimeAtWork.text).to eql "Time at Work"
    expect(textMyActions.text).to eql "My Actions"
    expect(textQuickLaunch.text).to eql "Quick Launch"
    expect(textBuzzLatestPosts.text).to eql "Buzz Latest Posts"
    expect(textEmployeesOnLeaveToday.text).to eql "Employees on Leave Today"
    expect(textEmployeeDistributionBySubUnit.text).to eql "Employee Distribution by Sub Unit"
    expect(textEmployeeDistributionByLocation.text).to eql "Employee Distribution by Location"
  end

end