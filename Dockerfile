FROM ruby:3.1

# intall
RUN apt-get update && apt-get install -y \
  build-essential \
  libffi-dev \
  nodejs \
  npm \
  git

# Install Jekyll and bundler
RUN gem install bundler jekyll

WORKDIR /srv/jekyll
COPY . .

# Install（using Gemfile）
RUN bundle install

EXPOSE 4000
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
