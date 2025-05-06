FROM ubuntu:22.04

# Install required tools: Terraform, Git, Vim, and dependencies
RUN apt-get update && apt-get install -y \
    curl unzip gnupg software-properties-common git vim \
 && curl -fsSL https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg \
 && echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" > /etc/apt/sources.list.d/hashicorp.list \
 && apt-get update && apt-get install -y terraform \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

# ✅ Install AWS CLI v2 for ARM64 (native for Apple Silicon)
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip" \
 && unzip awscliv2.zip \
 && ./aws/install \
 && rm -rf awscliv2.zip aws/

# Set working directory and path
ENV PATH="/usr/local/bin:${PATH}"
WORKDIR /git

CMD ["bash"]

