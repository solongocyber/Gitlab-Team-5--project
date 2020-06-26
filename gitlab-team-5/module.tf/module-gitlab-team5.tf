module "gitlab-team5" {
    source = "/home/ec2-user/Gitlab-Team-5--project/gitlab-team-5/module.tf"
    region = "us-east-1"   
    vpc_cidr    = "10.0.0.0/16"
    private1_cidr   =  "10.0.1.0/24"
    private2_cidr   =  "10.0.2.0/24"
    private3_cidr   =  "10.0.3.0/24"
    public1_cidr   =   "10.0.101.0/24"
    public2_cidr   =   "10.0.102.0/24"
    public3_cidr   =   "10.0.103.0/24"
    public_key     = "~ /.ssh/id_rsa.pub"
    instance_type  = "t2.medium"
    key_name       = "gitlab-team5"
    availability_zone1 = "us-east-1a"
    availability_zone2  = "us-east-1b"
    availability_zone3  = "us-east-1c"
    tags = {
    Name        =       "GITLAB-PROJECT"
    Environment =       "Devops"
    Department  =       "IT"
    Team        =       "5"
    Created_by  =       "Nagima, Solongo Ganbold,Nargiza Osmonalieva, Okan Damar, Utku Dincsoy, Zhanara Kuras "
    
    }
}
