rm -rf dart

rm swagger.json
wget http://localhost:5000/swagger/v1/swagger.json

openapi-generator generate \
    -i swagger.json \
    -g dart \
    -c config.json \
    -o dart

cd dart
pub get
pub run test
cd -