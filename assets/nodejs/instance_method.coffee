class Songs
  _titles: 0
  get_count: ->
    @_titles

  constructor: (@artist, @title) ->
    @_titles++

song = new Songs("Taylor Swift", "22")
console.log song.get_count()

Songs.get_count()


class Klass
  constructor:(@artist, @title) ->

  getArtist: ->
    @artist
