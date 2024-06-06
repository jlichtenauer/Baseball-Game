import random
#Obv still suck at coding so every input is case sensitive and has to be typed exactly how it tells you to
#Let me know how I can make this cleaner im sure my code is very sloppy
#May be one issue with the first "Play" input, occasionally will have output "Please type Play" even if you correctly type "Play" at the beginning

#Variables
pitcher_list = ("Shota Imanaga", "Paul Skenes", "Miles Mikolas", "Hunter Greene", "Freddy Peralta")
pitcher_randomizer = random.choice(pitcher_list)
pitch_list = ("Fastball", "Curveball", "Changeup", "Slider")
pitch_randomizer = random.choice(pitch_list)

#Functions
def play_game():
    choice = input('''Welcome to NL Central Faceoff

Here are the rules:

1). You will select one batter from the choices given
2). The game will auto-generate a pitcher for you to play against
3). There are 4 pitches that can be thrown: Fastball, Curveball, Slider, Changeup
4). You get 3 tries to guess which pitch is going to be thrown
5). If you guess the correct pitch, you hit a homerun 
6). If you guess wrong after three tries, you strikeout and lose

Type "Play" to start: ''')
    if choice == 'Play':
        batter_choice()
    else:
        print('Please type "Play"')


def batter_choice():
    batter = input('''Choose your batter by typing a letter:
    a). Dansby Swanson
    b). Rhys Hoskins
    c). Lars Nootbar
    d). Elly De la Cruz
    e). Oneil Cruz
    Selection: ''')
    if batter == "a":
        print('You have selected: Dansby Swanson')
        print(f'You will face: {pitcher_randomizer}')
        dansby = input('To begin, type "Play Ball": ')
        if dansby == "Play Ball":
            print(first_attempt())
    if batter == "b":
        print('You have selected: Rhys Hoskins')
        print(f'You will face: {pitcher_randomizer}')
        rhys = input('To begin, type "Play Ball": ')
        if rhys == "Play Ball":
            print(first_attempt())
    if batter == "c":
        print('You have selected: Lars Nootbar')
        print(f'You will face: {pitcher_randomizer}')
        lars = input('To begin, type "Play Ball": ')
        if lars == "Play Ball":
            print(first_attempt())
    if batter == "d":
        print('You have selected: Elly De la Cruz')
        print(f'You will face: {pitcher_randomizer}')
        elly = input('To begin, type "Play Ball": ')
        if elly == "Play Ball":
            print(first_attempt())
    if batter == "e":
        print('You have selected: Oneil Cruz')
        print(f'You will face: {pitcher_randomizer}')
        oneil = input('To begin, type "Play Ball": ')
        if oneil == "Play Ball":
            print(first_attempt())


def first_attempt():
    attempt_1 = input('Pitch 1 (Type "fb" for Fastball , "cu" for Curveball, "sl" for Slider , "ch" for Changeup: ')
    if attempt_1 == "fb" and pitch_randomizer != "Fastball":
        print("Strike 1")
        second_attempt()
    elif attempt_1 == "cu" and pitch_randomizer != "Curveball":
        print("Strike 1")
        second_attempt()
    elif attempt_1 == "sl" and pitch_randomizer != "Slider":
        print("Strike 1")
        second_attempt()
    elif attempt_1 == "ch" and pitch_randomizer != "Changeup":
        print("Strike 1")
        second_attempt()
    elif attempt_1 == "fb" and pitch_randomizer == "Fastball" or attempt_1== "cu" and pitch_randomizer=="Curveball" or attempt_1=="sl" and pitch_randomizer=="Slider" or attempt_1=="ch" and pitch_randomizer=="Changeup":
        print("Homerun!")
        print("You win!")
        play_again = input('Play again? (Type Yes): ')
        if play_again == "Yes":
            batter_choice()


def second_attempt():
    attempt_2 = input('Pitch 2 (Type "fb" for Fastball , "cu" for Curveball, "sl" for Slider , "ch" for Changeup: ')
    if attempt_2 == "fb" and pitch_randomizer != "Fastball":
        print("Strike 2")
        third_attempt()
    elif attempt_2 == "cu" and pitch_randomizer != "Curveball":
        print("Strike 2")
        third_attempt()
    elif attempt_2 == "sl" and pitch_randomizer != "Slider":
        print("Strike 2")
        third_attempt()
    elif attempt_2 == "ch" and pitch_randomizer != "Changeup":
        print("Strike 2")
        third_attempt()
    elif attempt_2 == "fb" and pitch_randomizer == "Fastball" or attempt_2 == "cu" and pitch_randomizer == "Curveball" or attempt_2 == "sl" and pitch_randomizer == "Slider" or attempt_2 == "ch" and pitch_randomizer == "Changeup":
        print("Homerun!")
        print("You win!")
        play_again = input('Play again? (Type Yes): ')
        if play_again == "Yes":
            batter_choice()


def third_attempt():
    attempt_3 = input('Pitch 3 (Type "fb" for Fastball , "cu" for Curveball, "sl" for Slider , "ch" for Changeup: ')
    if attempt_3 == "fb" and pitch_randomizer != "Fastball":
        print("Strike 3")
        print("You're Out")
        play_again = input('Play again? (Type Yes): ')
        if play_again == "Yes":
            batter_choice()
    elif attempt_3 == "cu" and pitch_randomizer != "Curveball":
        print("Strike 3")
        print("You're Out")
        play_again = input('Play again? (Type Yes): ')
        if play_again == "Yes":
            batter_choice()
    elif attempt_3 == "sl" and pitch_randomizer != "Slider":
        print("Strike 3")
        print("You're Out")
        play_again = input('Play again? (Type Yes): ')
        if play_again == "Yes":
            batter_choice()
    elif attempt_3 == "ch" and pitch_randomizer != "Changeup":
        print("Strike 3")
        print("You're Out")
        play_again = input('Play again? (Type Yes): ')
        if play_again == "Yes":
            batter_choice()
    elif attempt_3 == "fb" and pitch_randomizer == "Fastball" or attempt_3 == "cu" and pitch_randomizer == "Curveball" or attempt_3 == "sl" and pitch_randomizer == "Slider" or attempt_3 == "ch" and pitch_randomizer == "Changeup":
        print("Homerun!")
        print("You win!")
        play_again = input('Play again? (Type Yes): ')
        if play_again == "Yes":
            batter_choice()


play_game()
