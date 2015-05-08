set -e
bundle install
cd char_counter
bundle exec rake
cd ../tennis
#bundle exec rake
#cd ../batalla_naval
bundle exec rake