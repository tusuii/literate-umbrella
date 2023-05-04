import settings


def disp_gameOver_msg(retbutton_image,gameover_image):
    retbutton_rect = retbutton_image.get_rect()
    retbutton_rect.centerx = settings.width / 2
    retbutton_rect.top = settings.height*0.52

    gameover_rect = gameover_image.get_rect()
    gameover_rect.centerx = settings.width / 2
    gameover_rect.centery = settings.height*0.35

    settings.screen.blit(retbutton_image, retbutton_rect)
    settings.screen.blit(gameover_image, gameover_rect)