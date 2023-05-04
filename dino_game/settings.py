import pygame

pygame.init()
pygame.mixer.init()



scr_size = (width,height) = (600,150)
FPS = 60
gravity = 0.6

black = (0,0,0)
white = (255,255,255)
background_col = (235,235,235)
game_name = "speed Dino"
high_score = 0

jump_sound = pygame.mixer.Sound('./assets/jump.wav')
die_sound = pygame.mixer.Sound('./assets/die.wav')
checkPoint_sound = pygame.mixer.Sound('./assets/checkPoint.wav')

screen = pygame.display.set_mode(scr_size)
clock = pygame.time.Clock()
pygame.display.set_caption(game_name)