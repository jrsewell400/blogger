require 'rails_helper'

RSpec.describe "As a user," do 
    describe "when I click the create new artcile link on the idex page" do 
        it "then I am taken to a page to create a new article." do 

            visit '/articles'
            click_link "Create a New Article"
            expect(current_path).to eq('/articles/new')

            fill_in "article[title]", with: "New Title!"
            fill_in "article[body]", with: "New Body!"
            click_on("Create Article")
            expect(page).to have_content("New Title!")
            expect(page).to have_content("New Body!")
        end 
    end 
end