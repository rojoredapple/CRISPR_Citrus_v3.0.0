FROM ruby:3.3.7

# Install dependencies
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  yarn

# Install bundler and bootsnap
RUN gem install bundler
RUN gem install bootsnap

# Set up the working directory
WORKDIR /app

# Add the Gemfile and Gemfile.lock first to leverage Docker cache
COPY Gemfile Gemfile.lock ./

# Install Ruby dependencies (gems)
RUN bundle install

# Precompile assets (optional, depending on your Rails app)
RUN bundle exec bootsnap precompile --gemfile

# Expose the port Rails runs on (default is 3000)
EXPOSE 3000

# Command to run the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
