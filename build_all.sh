set -e
bundle install
cd char_counter
bundle exec rake
cd ../tennis
bundle exec rake
#bundle exec rake
#cd ../batalla_naval