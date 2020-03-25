FROM ruby:2.7.0-alpine AS baseapp
RUN gem install sinatra --no-document

# set the working directory (Heroku crashes without it)
WORKDIR /

# copy Sinatra app and worker into container
ADD web.rb web.rb
ADD worker.rb worker.rb

FROM baseapp AS web
CMD ruby web.rb -p $PORT

FROM baseapp AS worker
CMD ruby worker.rb
