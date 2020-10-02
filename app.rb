require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  @words = Word.all
  erb(:words)
end

get('/words') do
  @words = Word.all
  erb(:words)
end

get('/words/new') do
  erb(:new_word)
end

post('/words') do
  name = params[:new_word]
  word = Word.new({name: name, id: nil})
  word.save
  redirect to('/words')
end

get('/words/:id') do
  @word = Word.find(params[:id].to_i)
  erb(:word)
end

get('/words/:id/edit') do
  @word = Word.find(params[:id].to_i)
  erb(:word_edit)
end

patch('/words/:id') do
  @word = Word.find(params[:id].to_i)
  @word.update(params[:edit_word])
  erb(:word)
end

delete('/words/:id') do
  @word = Word.find(params[:id].to_i)
  @word.delete
  @words = Word.all
  erb(:words)
end

post('/words/:id/definitions') do
  @word = Word.find(params[:id].to_i)
  definition = Definition.new({name: params[:definition_name], id: nil, word_id: @word.id})
  definition.save
  erb(:word)
end

get('/words/:id/definitions/:definition_id') do
  @definition = Definition.find(params[:definition_id].to_i)
  erb(:definition)
end

patch('/words/:id/definitions/:definition_id') do
  definition = Definition.find(params[:definition_id].to_i)
  new_definition_name = params[:new_definition]
  definition.update(new_definition_name)
  @word = Word.find(params[:id].to_i)
  erb(:word)
end

delete('/words/:id/definitions/:definition_id') do
  definition = Definition.find(params[:definition_id].to_i)
  definition.delete
  @word = Word.find(params[:id].to_i)
  erb(:word)
end