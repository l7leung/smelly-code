#!/bin/sh

cd "`dirname '$0'`"
dir="`pwd`"

echo ""
echo "Functional test #1"
echo "==================="
ruby "$dir/smelly_code.rb"
echo "-------------------"
ruby "$dir/clean_code.rb"
echo ""
echo ""
echo "Functional test #2"
echo "==================="
ruby "$dir/smelly_code.rb" Brett Louis Stephen
echo "-------------------"
ruby "$dir/clean_code.rb" Brett Louis Stephen
echo ""
echo ""
echo "Functional test #3"
echo "==================="
ruby "$dir/smelly_code.rb" "Brett Louis Stephen"
echo "-------------------"
ruby "$dir/clean_code.rb" "Brett Louis Stephen"
echo ""
