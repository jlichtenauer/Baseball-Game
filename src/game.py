from .utils import print_divider
from src.players import select_batter, get_random_pitcher
from src.pitch import get_random_pitch, select_pitch_type

game_intro_text = """Here are the rules:

1). You will select one batter from the choices given
2). The game will auto-generate a pitcher for you to play against
3). There are 4 pitches that can be thrown: Fastball, Curveball, Slider, Changeup
4). You get 3 tries to guess which pitch is going to be thrown
5). If you guess the correct pitch, you hit a homerun 
6). If you guess wrong after three tries, you strikeout and lose

Press "Enter" to start. """

def game_intro():
	input(game_intro_text)

def print_player_selections(batter, pitcher):
	print('You have selected:', batter)
	print('You will face:', pitcher)
	input('\nPress Enter to play ball. ')

def play_again_input():
	play_again = input('Type "Yes" to play again: ')
	return play_again == 'Yes'

def play_game():
	game_intro()
	print_divider()

	batter = select_batter()	
	pitcher = get_random_pitcher()
	winning_pitch = get_random_pitch()
	print_divider()

	print_player_selections(batter, pitcher)
	print_divider()

	for attempt in range(1, 4):
		print('Pitch', attempt, '\n')
		pitch = select_pitch_type()
		if pitch != winning_pitch:
			print('\nStrike', attempt)
			print_divider()
		else:
			print('\nHomerun!')
			print('You win!\n')
			break
	
	return play_again_input()
