# Local development

A custom MSBuild target has been added to the `.csproj` to enable hot reload.

Combine this with `dotnet watch` to enable hot reload:

```
dotnet watch msbuild -t:RunFunctions
```