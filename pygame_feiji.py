import pygame
def start():
	screen=pygame.display.set_mode((480,890),0,32)
	image_file_path='./feiji/background.jpg'
	background=pygame.image.load(image_file_path).convert()
	while True:
		screen.blit(background,(0,0))
		pygame.display.update()
if __name__=='__main__':
	start()
