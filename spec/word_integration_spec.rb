require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('#app') do
  before(:each) do
    Word.clear
  end

  describe('/ route', {:type => :feature}) do
    it('creates a splash page') do
      visit('/')
      expect(page).to have_content('Welcome, Word Lover!')
    end
  end

  describe('/words route', {:type => :feature}) do
    it('creates a splash page') do
      visit('/words')
      expect(page).to have_content('Welcome, Word Lover!')
    end
  end

  describe('/words/new route', {:type => :feature}) do
    it('creates a form page for adding a new word') do
      visit('/words/new')
      expect(page).to have_field('new_word')
    end
  end

  describe('/words/ post route', {:type => :feature}) do
    it('appends newly created word to /words page') do
      visit('/words')
      click_on('Add a new word!')
      fill_in('new_word', :with => 'Vanessa')
      click_on('Submit')
      expect(page).to have_link('Vanessa')
    end
  end
end