add = (a,b) ->
  a + b

subtract = (a,b) ->
  a - b

square = (a) ->
  a * a

SimpleMath = exports? and exports or @SimpleMath = {}

class SimpleMath.Calculator
  add: add
  subtract: subtract
  square: square
