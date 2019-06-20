# Create a NuGet Package based on .NET Standard 2.0

It is very easy to create nuget package based on .NET Standard project. Just edit  *.csproj file

```cs
<PropertyGroup>
    <AssemblyVersion>4.1.0.0</AssemblyVersion>
    <FileVersion>4.1.0.0</FileVersion>
    <InformationalVersion>4.1.0.0</InformationalVersion>
    <!--Package version-->
    <Version>1.0.1</Version>
    <GeneratePackageOnBuild>true</GeneratePackageOnBuild>
    <Description>This is a demo description</Description>
  </PropertyGroup>
```

After successful build, .nupkg file will occure under debug or release directory
