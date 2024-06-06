from src.game import play_game
from src.utils import print_divider

def main():
	playing = True

	while playing == True:
		playing = play_game()
		print_divider()

	print("Thanks for playing!\n")

if __name__ == '__main__':
	main()