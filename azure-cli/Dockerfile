FROM debian:jessie

# Install system components
RUN apt-get install -y apt-transport-https

# Register the trusted Microsoft Product Key
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ jessie main" | tee /etc/apt/sources.list.d/azure-cli.list
RUN apt-key adv --keyserver packages.microsoft.com --recv-keys 52E16F86FEE04B979B07E28DB02C46DF417A0893

# Update packages, then install the azure-cli package.
RUN apt-get update
RUN apt-get install -y azure-cli

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