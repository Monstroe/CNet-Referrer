# Use the official .NET 8 SDK as a build stage
FROM mcr.microsoft.com/dotnet/sdk:8.0-alpine AS build

WORKDIR /app

COPY *.csproj ./
RUN dotnet restore

COPY . ./
RUN dotnet publish -c Release -o out


# Use the official .NET 8 runtime as a base for the final image
FROM mcr.microsoft.com/dotnet/runtime:8.0 AS runtime

WORKDIR /app

COPY --from=build /app/out .

EXPOSE 7777

ENTRYPOINT ["dotnet", "CNet-Referrer.dll"]