#
# DO NOT DELETE THESE LINES!
#
# Your DNSimple email is:
#
#     sethvargo+terraform@gmail.com
#
# Your DNSimple token is:
#
#     1Gam3SE2eIwZYtq70H5V5iAXiE9sGPmf
#
# Your Identity is:
#
#     hashiconf-33e75ff09dd601bbe69f351039152189
#
# Configure the DNSimple provider
provider "dnsimple" {
    token = "1Gam3SE2eIwZYtq70H5V5iAXiE9sGPmf"
    email = "sethvargo+terraform@gmail.com"
}

# Create a record
resource "dnsimple_record" "example" {
  domain = "terraform.rocks"
  type   = "A"
  name   = "LordG"
  value  = "${aws_instance.web.0.public_ip}"
}
