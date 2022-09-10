# AWS Network lab

## Objective:
- Be able to provide a basic AWS network with SSM endpoint
- Be able to connect EC2 instances in a private subnet with AWS SSM

**Notes:**
**READ IT BEFORE APPLY**
- This lab **incur in costs** with NAT gateway and VPC endpoints, so mind your provisioned time and destroy everything with terraform, avoid at all costs do manual interventions with this lab up and running.
- If you noticed a single AZ definition at variables.tf and thought: "that is wrong", you right! but since this was a Lab one single az was enough, in prod envs use a minimum of 2 azs, check the _Extra Docs and ref_ session.
- To test this lab completly, enable the SSM service at your lab account and deploy a EC2 with amazon-linux2 in the private subnet.
- To destroy this lab remeber first: to destroy any resource placed at any subnet of this lab.
- And of course, change the terraform backend to your own config
## The brief how:
- Basically with two terraform resources:
  - aws_vpc_endpoint
  - aws_vpc_endpoint_subnet_association

## How?
- The Internal DNS should be Amazon provided [Here to be specific](terraform/vpc.tf#L7)
- Creating each of the needed endpoints
- Attraching them to the private subnet
- Creating a default security group to attach in the instances

## Why?
- Personal curiosity/challenge.
- Learn more about the used tools.
- Share knowledge (that's why is public).

### Extra Docs and ref:
- [Blog about how to manually configure SSM vpc endpoints](https://aws.amazon.com/pt/premiumsupport/knowledge-center/ec2-systems-manager-vpc-endpoints/)
- [Building a Modular and Scalable Virtual Network Architecture with Amazon VPC](https://docs.aws.amazon.com/quickstart/latest/vpc/architecture.html)