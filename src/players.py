import random
from .utils import print_divider

pitchers = ('Shota Imanaga', 'Paul Skenes', 'Miles Mikolas', 'Hunter Greene', 'Freddy Peralta')

batters_dict = {
    'a': 'Dansby Swanson',
    'b': 'Rhys Hoskins',
    'c': 'Lars Nootbar',
    'd': 'Elly De la Cruz',
    'e': 'Oneil Cruz'
}

def print_batter_options():
    for batter_letter in batters_dict:
        print(batter_letter + '). ' + batters_dict[batter_letter])

def select_batter():
    print('Enter a letter to choose your batter:\n')
    print_batter_options()
    batter = input('\nSelection: ')

    while batter not in batters_dict:
        print('\nPlease enter a valid batter.')
        batter = input('Selection: ')

    #print()
    return batters_dict[batter]


def get_random_pitcher():
    return random.choice(pitchers)