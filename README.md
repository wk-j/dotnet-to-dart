## .NET to Dart

*.NET*
```bash
dotnet run --project dotnet/MyWeb/MyWeb.csproj
open http://localhost:5000/swagger
wget http://localhost:5000/swagger/v1/swagger.json
```

*Generate*

```bash
echo README.md  >> .openapi-generator-ignore
echo .gitignore >> .openapi-generator-ignore

brew install openapi-generator

openapi-generator generate \
    -i swagger.json \
    -g dart \
    -c config.json \
    -o dart

sh generate.sh
```