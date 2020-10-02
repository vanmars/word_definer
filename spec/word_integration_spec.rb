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
end