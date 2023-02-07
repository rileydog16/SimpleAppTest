SCRIPT_DIR=$(dirname $0)
PROJECT_DIR=$1
OUTPUT_DIR=$2
TOOLS_URL=http://localhost:1234
echo $SCRIPT_DIR
echo $PROJECT_DIR
echo $OUTPUT_DIR

curl --silent $TOOLS_URL/tools/tools.js > $SCRIPT_DIR/tools.mjs
curl --silent $TOOLS_URL/tools/tools.js.map > $SCRIPT_DIR/tools.js.map
rm -rf $OUTPUT_DIR
node $SCRIPT_DIR/build.mjs $PROJECT_DIR $OUTPUT_DIR $TOOLS_URL
