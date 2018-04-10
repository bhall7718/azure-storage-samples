FROM ubuntu:16.04

# Setting an environment variable that disallows .NET Core to send usage Telemetry.
ENV DOTNET_CLI_TELEMETRY_OPTOUT 1

# Install system components
RUN apt-get update
RUN apt-get install -y curl apt-transport-https rsync wget

# Register the trusted Microsoft Product Key
RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
RUN mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg

# Register the Microsoft Product feed
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list

# Install .NET SDK
RUN apt-get update
RUN apt-get install -y dotnet-sdk-2.1.104

# Download AzCopy, unpack, and Install
RUN wget -O azcopy.tar.gz https://aka.ms/downloadazcopyprlinux
RUN tar -xf azcopy.tar.gz
RUN bash ./install.sh

# Clean Up
RUN rm azcopy.tar.gz install.sh

# Only needed if you are Building the Docker Image from a Windows Machine
# This library converts the dos line endings to unix line endings inside a file.
#RUN apt-get install -y dos2unix

# Copy the local shell script down to the machine.
#COPY ./run.sh ./home/src/run.sh

# Only needed if you are Building the Docker Image from a Windos Machine
# Use the dos2unix library to convert the line endings.
#RUN dos2unix /home/src/run.sh

# Only needed if you are Building the Docker Image from a Windows Machine
# Removing the dos2unix library now that the line ending conversion has been completed.
#RUN apt-get --purge remove -y dos2unix