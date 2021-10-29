from ruby:2.5.1
RUN apt update && apt install -y nodejs
WORKDIR /app
COPY ./Gemfile* /app/
RUN bundle install
RUN rails db:migrate
COPY ./ /app/
CMD ["rails", "s", "-b", "0.0.0.0"] 