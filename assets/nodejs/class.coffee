class CoffeeCup
  constructor: ->
    @properties =
    strength: 'medium'
    cream: false
    sugar: false

  strength: (newStrength) ->
    @properties.strength = newStrength
    this
