# _Word Definer_

_2 October 2020_

#### _Web application for kids to enter and view word definitions_

#### By _**Vanessa Stewart**_

## Description

This is a Friday project for Epicodus to demonstrate competency with Ruby routing using test-driven development while creating full CRUD functionality in a Sinatra application. The original instructions for the project include:

_The concept for the website is to make learning fun: children will write up a list of words they don't know (but would like to learn) and then come up with their own definitions. Once you complete the basic objectives, you have an additional challenge: make this the best website for kids you can!_

_Make an application that contains a Word class. The homepage of the app should list all words. When a word is clicked, it should lead to a page with the word's definitions. Children should be able to add a word, and when viewing a word, be able to add, update or delete one or more definitions. This week you should deploy your application to Heroku so the kids can try it out!_

## Specifications

| Spec     | Behavior |
| -------- | -------- | 
| 1 | Homepage allows user to see list of all words.  |
| 2 | When a user clicks button, 'Add a Word', user is able to add a word to the homepage list of words. |
| 3 | When a word is clicked on homepage, the user is taken to a page with the word's definitions. |
| 4 | On the word's page, the user is able to update the word. |
| 4 | On the word's page, the user is able to delete the word. |
| 5 | On the word's page, the user is able to add one or more definitions. |
| 6 | On the word's page, the user is able to update one or more definitions. |
| 7 | On the word's page, the user is able to delete one or more definitions. |

## Backend Logic for Words

| CRUD Action | Route | Method | Description |
| ------------| ----- | ------ | ----------- |
| GET | /words | READ | Get a list of words. |
| GET | /words/new | READ | Got to the form page for adding a new word to the list. |
| GET | /words/:id | READ | Look at detail page for a single word. |
| GET | /words/:id/edit | READ | Go to the form page for editing an existing word. |
| POST | /words | CREATE | Add a new word to the list of words. |
| PATCH | /words/:id | UPDATE | Update a single word. |
| DELETE | /words/:id | DELETE| Delete a single word from the list of words. |

## Backend Logic for Definitions

| CRUD Action | Route | Method | Description |
| ------------| ----- | ------ | ----------- |
| GET | /words/:id/definitions | READ | Get a list of all the definitions of a word. |
| GET | /words/:id/definitions/:definition_id | READ | Look at the detail page for a single definition. |
| POST | /words/:id/definitions | CREATE | Add a new definition to a word. |
| PATCH | /words/:id/definitions/:definitions_id | UPDATE | Update a single defintion. |
| DELETE | /words/:id/definitions/:definitions_id | DELETE | Delete a single definition from a word. |

## Setup/Installation Requirements
To view this project:
- Open a browswer of your choice, and navigate to the following url: https://radiant-taiga-43937.herokuapp.com/

To clone and extend this project:
- Navigate to the directory on your local computer where you would like to clone this repo.
- Clone this repo using the 'git clone https://github.com/vanmars/word_definer.git' command in terminal/command line.
- Navigate to the cloned folder and run 'bundle' in your command line to download all dependencies.
- Open the cloned repo in a text editor of your choice.
- **To Run Tests**: While in the root directory of this project, run 'rspec' in your command line.
- **To Run the App in Browser**: While in the root directory of the project, run 'ruby app.rb' in the terminal. This will start a server, which you can access by entering 'localhost:4567' in your browser.

## Known Bugs

_There are no known bugs at this time._

## Support and Contact Details

_Connect with me at vamariestewart@gmail.com with ideas to improve this project._

## Technologies Used

* HTML
* CSS
* Bootstrap
* Ruby
* Ruby Gems: Pry, RSpec, Sinatra, Sintara-Contrib, Capybara

### License

Copyright (c) 2020 **_Vanessa Stewart_**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
