#!/bin/bash
rbenv shell 2.0.0-p353
rbenv rehash
bundle install --path .bundle --without development production
