module Refinery
  module Authentication
    module RequestMacros
      def login_refinery_user
        before(:each) do
          Factory(:refinery_user, :username => "refinerycms",
                                  :password => "123456",
                                  :password_confirmation => "123456")
          visit new_refinery_user_session_url
          fill_in "Login", :with => "refinerycms"
          fill_in "Password", :with => "123456"
          click_button "Sign in"
        end
      end
    end
  end
end
