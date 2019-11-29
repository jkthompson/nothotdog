# Not Hotdog ... In Production with Tensorflow and Tensorflow Extended (TFX)

Explore machine learning deployment with [tensorflow] and the ['not hotdog'] use case from HBO's Sillicon Valley].

['not hotdog']: https://www.youtube.com/watch?v=ACmydtFDTGs
[tensorflow]: https://www.tensorflow.org/

![not hotdog](./NotHotdog.jpg)

## [View of NBViewer](http://nbviewer.ipython.org/github/jkthompson/nothotdog/blob/master/nothotdog.ipynb)

## Run Locally Using Docker
1. Install [Docker](https://hub.docker.com/search/?offering=community&type=edition)
2. Log into [dockerHub](https://hub.docker.com/)
  	```bash
	docker login --username=<docker hub username>
	```
2. Clone this git repo
	```bash
	git clone git@github.com:jkthompson/nothotdog.git
	cd nothotdog
	``` 
3. build the docker image using the tag 'tfx'
  	```bash
	docker build -t tfx .
	```
	alternatively, download the image from docker hub
	```bash
	# optional - if build dosn't work
	docker pull jkt2/tfx
	```
4. run the image
  	```bash
	docker run -it -p 8888:8888 -v "$PWD":/tf tfx
	```
	
	or image was downloaded from docker hub

	```bash
	docker run -it -p 8888:8888 -v "$PWD":/tf jkt2/tfx
	```