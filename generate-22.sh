OUTDIR=dart-d22
INFILE=swagger-22.json

rm -rf $OUTDIR
rm $INFILE

wget http://localhost:8000/swagger/v1/swagger.json --output-document $INFILE

openapi-generator generate \
    -i $INFILE \
    -g dart \
    -c config.json \
    -o $OUTDIR

cd $OUTDIR
pub get
pub run test
cd -