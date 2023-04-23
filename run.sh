docker run \
	--rm \
	-p 1948:1948 \
	-v $(pwd)/slides/:/slides:ro \
	-v $(pwd)/js/:/js:ro \
	webpronl/reveal-md:latest \
	--preprocessor src/preproc.js \
	presentation.md #\
	#--theme src/cs_black.css \
	#-w