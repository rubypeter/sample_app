require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Health Club'" do
      visit root_path
      page.should have_selector('h1', :text => 'Health Club')
    end
    it "should have the right title" do
	visit root_path
	  page.should have_selector('title',
         	:text => "Ruby on Rails Base Title")
    end
    it "should not have a custom page title" do
#      visit '/static_pages/home'
      visit root_path
      page.should_not have_selector('title', :text => '| Home')
    end

  end


  describe "Help page" do

    it "should have the content 'Help'" do
#      visit '/static_pages/help'
      visit help_path
      page.should have_content('Help')
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      #visit '/static_pages/about'
      visit about_path
      page.should have_content('About Us')
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
                    text: "Ruby on Rails Base Title | Contact")
    end
  end

end


