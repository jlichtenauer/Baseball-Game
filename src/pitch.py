import random

pitches_dict = {
	'fb': 'Fastball',
	'cb': 'Curveball',
	'cu': 'Changeup',
	'sl': 'Slider'
}

def get_random_pitch():
	return random.choice(list(pitches_dict.keys()))

def print_pitch_options():
  for pitch_key in pitches_dict:
    print('Type "' + pitch_key + '" for ' + pitches_dict[pitch_key])

def select_pitch_type():
  print('Select your pitch type.\n')
  print_pitch_options()
  pitch = input('\nSelection: ')
  return pitch