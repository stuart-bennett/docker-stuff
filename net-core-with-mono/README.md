# Dotnet Core + Omnisharp (Rosyln) server

Provides an environment for developing dotnet core apps, designing for working locally.

Based on the offical dotnet core image.

## Also includes

    - mono-devel
    - git-core
    - msbuild

## Other notes

I create a user that maps onto my local user so I can create files (think "dotnet new" etc) whilst editing with host tools.

If you want to use this Dockerfile for yourself, you should alter the useradd accordingly.
