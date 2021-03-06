build:
	hugo

serve:
	hugo -D serve

fetch/css:
	wget -O static/stylesheets/dl-frontend.css https://raw.githubusercontent.com/digital-land/frontend/master/digital_land_frontend/static/stylesheets/dl-frontend.css

fetch/js:
	wget -O static/javascripts/dl-frontend.js https://raw.githubusercontent.com/digital-land/frontend/master/digital_land_frontend/static/javascripts/dl-frontend.js
	wget -O static/javascripts/dl-cookies.js https://raw.githubusercontent.com/digital-land/frontend/master/digital_land_frontend/static/javascripts/dl-cookies.js
	wget -O static/javascripts/govuk/govuk-frontend.min.js https://raw.githubusercontent.com/digital-land/frontend/master/digital_land_frontend/static/javascripts/govuk/govuk-frontend.min.js

fetch/all: fetch/css fetch/js
