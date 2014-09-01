class Songs
  @_titles: 0
  @get_count: ->
    @_titles

  constructor: (@artist, @title) ->
    Songs._titles++


console.log Songs.get_count()
song = new Songs("Billy Joel", "Piano Man")
console.log Songs.get_count()

song.get_count()
