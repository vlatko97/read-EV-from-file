FROM mcr.microsoft.com/windows/nanoserver:ltsc2022

COPY ./addEVfromFile.ps1 /
COPY ./env.enc /