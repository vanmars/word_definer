require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('#app') do
  before(:each) do
    Word.clear
    Definition.clear
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

  describe('/words/:id get route', {:type => :feature}) do
    it('creates path to individual words') do
      visit('/words')
      click_on('Add a new word!')
      fill_in('new_word', :with => 'Vanessa')
      click_on('Submit')
      click_on('Vanessa')
      expect(page).to have_content('Definition List:')
    end
  end

  describe('/words/:id/definitions post route', {:type => :feature}) do
    it('posts new definition') do
      visit('/words')
      click_on('Add a new word!')
      fill_in('new_word', :with => 'Vanessa')
      click_on('Submit')
      click_on('Vanessa')
      fill_in('definition_name', :with => 'the greatest of all time')
      click_on('Add definition')
      expect(page).to have_link('the greatest of all time')
    end
  end

  describe('/words/:id/definitions/:definition_id get route', {:type => :feature}) do
    it('creates path to definition page') do
      visit('/words')
      click_on('Add a new word!')
      fill_in('new_word', :with => 'Vanessa')
      click_on('Submit')
      click_on('Vanessa')
      fill_in('definition_name', :with => 'the greatest of all time')
      click_on('Add definition')
      click_on('the greatest of all time')
      expect(page).to have_field('new_definition')
    end
  end

  describe('/words/:id/definitions/:definition_id patch route', {:type => :feature}) do
    it('updates definition on word page') do
      visit('/words')
      click_on('Add a new word!')
      fill_in('new_word', :with => 'Vanessa')
      click_on('Submit')
      click_on('Vanessa')
      fill_in('definition_name', :with => 'the greatest of all time')
      click_on('Add definition')
      click_on('the greatest of all time')
      fill_in('new_definition', :with => 'the most talented')
      click_on('Update Definition')
      expect(page).to have_link('the most talented')
    end
  end

  describe('/words/:id/definitions/:definition_id delete route', {:type => :feature}) do
    it('delete definition on word page') do
      visit('/words')
      click_on('Add a new word!')
      fill_in('new_word', :with => 'Vanessa')
      click_on('Submit')
      click_on('Vanessa')
      fill_in('definition_name', :with => 'the greatest of all time')
      click_on('Add definition')
      click_on('the greatest of all time')
      click_on('Delete Definition')
      expect(page).to have_no_link('the greatest of all time')
    end
  end

  describe('/words/:id/edit get route', {:type => :feature}) do
    it('delete definition on word page') do
      visit('/words')
      click_on('Add a new word!')
      fill_in('new_word', :with => 'Vanessa')
      click_on('Submit')
      click_on('Vanessa')
      click_on('Edit word')
      expect(page).to have_field('edit_word')
    end
  end

end