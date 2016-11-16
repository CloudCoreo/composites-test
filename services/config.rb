coreo_aws_vpc_vpc "${VPC_NAME}" do
  action :find
  cidr "${VPC_OCTETS}"
  region "${REGION}"
  tags ${VPC_TAGS}
end
