## .NET to Dart

*.NET*
```bash
dotnet run --project dotnet/MyWeb/MyWeb.csproj
open http://localhost:5000/swagger
wget http://localhost:5000/swagger/v1/swagger.json
```

*Generate*

```bash
echo README.md  > .openapi-generator-ignore

openapi-generator generate \
    -i https://petstore.swagger.io/v2/swagger.json \
    -g dart \
    -c config.json \
    --additional-properties hideGenerationTimestamp=true,browserClient=false \
    -o .

pub get
pub run test
```