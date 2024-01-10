# Your main Terraform configuration to provision the ephemeral environment goes here
# Define resources such as VMs, networking, databases, etc.

# Example: Define the AWS instance
resource "aws_instance" "test_instance" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  # ...other configuration options

  # Provisioner block for running a local-exec provisioner after creating the instance
  provisioner "local-exec" {
    command = "python3 scripts/setup_script.py"
    # You can set other configuration options for the provisioner if needed
  }
}
