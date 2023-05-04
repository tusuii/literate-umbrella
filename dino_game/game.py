import pygame
import dino
import score
import ground
import load
import settings
import random
import cactus
import cloud
import ptera
import game_over


def gameplay():
    global high_score
    gamespeed = 4
    startMenu = False
    gameOver = False
    gameQuit = False
    playerDino = dino.Dino(44,47)
    new_ground = ground.Ground(-1*gamespeed)
    scb = score.Scoreboard()
    highsc = score.Scoreboard(settings.width*0.78)
    counter = 0

    cacti = pygame.sprite.Group()
    pteras = pygame.sprite.Group()
    clouds = pygame.sprite.Group()
    last_obstacle = pygame.sprite.Group()

    cactus.Cactus.containers = cacti
    ptera.Ptera.containers = pteras
    cloud.Cloud.containers = clouds

    retbutton_image,game_over.retbutton_rect = load.load_image('replay_button.png',35,31,-1)
    gameover_image,game_over.gameover_rect = load.load_image('game_over.png',190,11,-1)

    temp_images,temp_rect = load.load_sprite_sheet('numbers.png',12,1,11,int(11*6/5),-1)
    HI_image = pygame.Surface((22,int(11*6/5)))
    HI_rect = HI_image.get_rect()
    HI_image.fill(settings.background_col)
    HI_image.blit(temp_images[10],temp_rect)
    temp_rect.left += temp_rect.width
    HI_image.blit(temp_images[11],temp_rect)
    HI_rect.top = settings.height*0.1
    HI_rect.left = settings.width*0.73

    while not gameQuit:
        while startMenu:
            pass
        while not gameOver:
            if pygame.display.get_surface() == None:
                gameQuit = True
                gameOver = True
            else:
                for event in pygame.event.get(): # quit game
                    if event.type == pygame.QUIT:
                        gameQuit = True
                        gameOver = True

                    if event.type == pygame.KEYDOWN: # buttons controls
                        if event.key == pygame.K_SPACE:
                            if playerDino.rect.bottom == int(0.98*settings.height):
                                playerDino.isJumping = True
                                if pygame.mixer.get_init() != None:
                                    settings.jump_sound.play()
                                playerDino.movement[1] = -1*playerDino.jumpSpeed

                        if event.key == pygame.K_DOWN:
                            if not (playerDino.isJumping and playerDino.isDead):
                                playerDino.isDucking = True

                    if event.type == pygame.KEYUP:
                        if event.key == pygame.K_DOWN:
                            playerDino.isDucking = False
                    # quit code
                    elif event.type == pygame.KEYDOWN:
                        if event.key == pygame.K_q:
                            gameQuit = True
                            gameOver = True

            for c in cacti:
                c.movement[0] = -1*gamespeed
                if pygame.sprite.collide_mask(playerDino,c):
                    playerDino.isDead = True
                    if pygame.mixer.get_init() != None:
                        settings.die_sound.play()

            for p in pteras:
                p.movement[0] = -1*gamespeed
                if pygame.sprite.collide_mask(playerDino,p):
                    playerDino.isDead = True
                    if pygame.mixer.get_init() != None:
                        settings.die_sound.play()

            if len(cacti) < 2:
                if len(cacti) == 0:
                    last_obstacle.empty()
                    last_obstacle.add(cactus.Cactus(gamespeed,40,40))
                else:
                    for l in last_obstacle:
                        if l.rect.right < settings.width*0.7 and random.randrange(0,50) == 10:
                            last_obstacle.empty()
                            last_obstacle.add(cactus.Cactus(gamespeed, 40, 40))

            if len(pteras) == 0 and random.randrange(0,200) == 10 and counter > 500:
                for l in last_obstacle:
                    if l.rect.right < settings.width*0.8:
                        last_obstacle.empty()
                        last_obstacle.add(ptera.Ptera(gamespeed, 46, 40))

            if len(clouds) < 5 and random.randrange(0,300) == 10:
                cloud.Cloud(settings.width,random.randrange(settings.height/5,settings.height/2))

            playerDino.update()
            cacti.update()
            pteras.update()
            clouds.update()
            new_ground.update()
            scb.update(playerDino.score)
            highsc.update(settings.high_score)

            if pygame.display.get_surface() != None:
                settings.screen.fill(settings.background_col)
                new_ground.draw()
                clouds.draw(settings.screen)
                scb.draw()
                if settings.high_score != 0:
                    highsc.draw()
                    settings.screen.blit(HI_image,HI_rect)
                cacti.draw(settings.screen)
                pteras.draw(settings.screen)
                playerDino.draw()

                pygame.display.update()
            settings.clock.tick(settings.FPS)

            if playerDino.isDead:
                gameOver = True
                if playerDino.score > settings.high_score:
                    settings.high_score = playerDino.score

            if counter%700 == 699:
                new_ground.speed -= 1
                gamespeed += 1

            counter = (counter + 1)

        if gameQuit:
            break

        while gameOver:
            if pygame.display.get_surface() == None:
                gameQuit = True
                gameOver = False
            else:
                for event in pygame.event.get():
                    if event.type == pygame.QUIT:
                        gameQuit = True
                        gameOver = False
                    if event.type == pygame.KEYDOWN:
                        if event.key == pygame.K_ESCAPE:
                            gameQuit = True
                            gameOver = False

                        if event.key == pygame.K_RETURN or event.key == pygame.K_SPACE:
                            gameOver = False
                            gameplay()
            highsc.update(settings.high_score)
            if pygame.display.get_surface() != None:
                game_over.disp_gameOver_msg(retbutton_image,gameover_image)
                if settings.high_score != 0:
                    highsc.draw()
                    settings.screen.blit(HI_image,HI_rect)
                pygame.display.update()
            settings.clock.tick(settings.FPS)

    pygame.quit()
    quit()