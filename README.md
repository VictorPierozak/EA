# Reproducing Image – Evolutionary Algorithm
This project is a first stage in my attempt to use evolutionary algorithm in image processing. Inspired by my tutor from my university I created an evolutionary algorithm 
that reproduce given imagen in the grey scale, as a base for future modification.
# How my algorithm work
The simplest way to solve this problem may be like this: just make population in which individuals are chromosomes containing grey-scale value for every pixel. I tried it, 
but it turned out to work terrible.

Reproducing images with pixel-level accuracy is hard due to big number of pixels even in small images (128x128 image has 16 384 individual pixels). Chromosome containing thousands of pixels with random values on begin need a lot of time to start looking slightly similar to image to reproduce, still the main barrier for algorithm is to create a continuous area in one color. Possible solution could be to use more powerful computer - on my device result of 2 hour of work was just very noisy image, despite being just 50x50 pixels.
I had to find better approach and after whole day of wondering I figured it out – the key is to start with small resolution and increase it gradually.
Steps of my algorithm:

1)	Divide an image into 4n equal areas, where n is a natural number (I start from n = 1)
2)	Create a population of individuals, each made of 4n parameters corresponding to areas (we treat them as images)
3)	Use GA algorithm to find the fittest colours for each area, what means the most common colour in a original image
4)	Select the best individual in a population
5)	Treating it as image, divide it into 4n+1 areas
6)	Repeat steps 2-5, until size of area shrink to individual picture

The obvious requirement for pictures is the number of pixels has to be the power of 4, therefore images have to be squares of size 2n, what causes the need for a prior preparation of images.
# Observations
This approach has good results in reproducing continuous areas of one colour, especially on boundaries between two regions, I noticed that boundaries has less 
noise then interior, exception for this are highly irregular ones with a lot of small details. Few-pixel size object on images are not problem, until 
there are few of them, when they are numerous algorithm can entirely lost.




 

