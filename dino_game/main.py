import load
import game


if __name__ == "__main__":
    isGameQuit = load.introscreen()

    if not isGameQuit:
        game.gameplay()