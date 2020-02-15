require 'rails_helper'

RSpec.describe "As a user,", type: :feature do 
    describe 'if I visit /artciles' do 
        it "then I see a display of all articles." do
            article_1 = Article.create!(title: "Title 1", body: "Body 1")
            article_2 = Article.create!(title: "Title 2", body: "Body 2")

            visit '/articles'

            expect(page).to have_content(article_1.title)
            expect(page).to have_content(article_2.title)
        end
    end
end