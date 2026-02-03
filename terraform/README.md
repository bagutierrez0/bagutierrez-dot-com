# Terraform
This sets up the infrastructure within AWS for my personal website.

## VPC (virtual private cloud)
An isolated network space within AWS that is used for one's infrastructure needs. Defines a dedicated range of available IP addresses that can be used for different components in the infrastructure within the VPC. CIDR notation is used to denote these IP address ranges.


- VPC is like a little network/environment to deploy the services/infrastructure you need for the application.


- Internet Gateway is the exit point for the VPC which allows traffic from the VPC to go out to the internet and also to recieve traffic from the internet.

- Subnets are networks within the VPC, it used to organize the network.
- Route tables specify the routes for outbound traffic leaving the subnet. You need a route to communicate with the networks within the VPC and then another one  for communicating with the internet

- What makes a private subnet private, is that it does not have a route for outbound traffic. Instead it sometimes uses a NA to connect with the internet. Outbound traffic only.

- Security groups in AWS are essentially rules for traffic that can 

learn this shit
- route 53 (aws dns stuff)
- elastic ip