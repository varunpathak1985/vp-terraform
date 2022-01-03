# deployment in dev environment

provider aws {
    region = "us-east-2"
}

module my_vpc {
    source = "../modules/vpc"
    vpc_cidr = "192.168.0.0/16"
    vpc_tenancy = "default"
    vpc_id = "${module.my_vpc.vpc_id}"
    subnet_cidr = "192.168.1.0/24"
}

module my_ec2 {
    source = "../modules/ec2"
    ec2_count = 1
    ec2_ami = "ami-002068ed284fb165b"
    ec2_type = "t2.micro"
    subnet_id = "${module.my_vpc.subnet_id}"
}