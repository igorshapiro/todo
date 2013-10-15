module LoginSteps
  def user; @user ||= User.find_by_email @my_email end

  step "I'm a visitor :with an account" do |with|
    @my_email = "user#{SecureRandom.hex(5)}@test.com"
    User.create! email: @my_email if with == 'with'

    visit '/'
  end

  step "I'm a logged in user with :n todos" do |n|
    @my_email = "user#{SecureRandom.hex(5)}@test.com"
    @user = User.create! email: @my_email
    n.to_i.times {
      @user.todo_items.create! title: SecureRandom.hex(5)
    }
    visit '/'
    fill_in 'email', with: @user.email
    click_on 'Let me in'
    sleep(2)
  end

  step "I should see :text text" do |text|
    page.should have_text(text)
  end

  step "I enter my email in :field_name field" do |field_name|
    fill_in field_name, with: @my_email
  end

  step "I click :button_name" do |button_name|
    click_on button_name
  end

  step "I should have an account" do
    User.where(email: @my_email).exists?.should == true
  end

  step "I should see all my todos" do
    user = User.find_by_email @my_email
    user.todo_items.each {|todo| page.should have_text(todo.title)}
  end
end
