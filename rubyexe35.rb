players = [
  [27, 'Jose Altuve'],
  [2,  'Alex Bregman'],
  [1,    'Carlos Correa'],
  [9,    'Marwin Gonzalez'],
  [10, 'Yulieski Gurriel']
]

def find_element array, element
  array.rassoc(element)
end

p find_element(players, 'Marwin Gonzalez')

p players.repeated_permutation(5).to_a