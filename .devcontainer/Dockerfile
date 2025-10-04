# Use a full Ubuntu image
FROM ubuntu:22.04

# Install essentials
RUN apt-get update && apt-get install -y \
    curl wget unzip libc6 libstdc++6 lsb-release bash \
    && rm -rf /var/lib/apt/lists/*

# Install Ollama
RUN curl -sSf https://ollama.com/install.sh | sh

# Ensure Ollama is in PATH
ENV PATH="/usr/local/bin:$PATH"

# Expose Ollama port
EXPOSE 11434

# Default command
CMD ["bash"]
