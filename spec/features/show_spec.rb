require 'rails_helper'

RSpec.describe "As a user," do 
    describe "if we click on an article title link" do
        it "then we are taken to an individual article's show page." 
            article = Article.create!(title: "New Title", body: "New Body")

            visit '/articles'
            click_on(article.title)
            expect(page).to have_content(article.title)
            expect(page).to have_content(article.body)
        end
    end
end