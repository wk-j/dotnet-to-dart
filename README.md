## .NET to Dart

Reproduce swagger to dart bug ([src/W22/W22.csproj](https://github.com/wk-j/dotnet-to-dart/runs/199556091))

*Service*

```bash
dotnet run --project dotnet/MyWeb/MyWeb.csproj --urls "http://*:5000"
dotnet run --project dotnet/W22/W22.csproj  --urls "http://*:8000"
```

*Generate*

```bash
brew install openapi-generator

sh generate-22.sh
sh generate-30.sh
```