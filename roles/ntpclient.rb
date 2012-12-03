name "base"
description "Role applied to ntp clients"
run_list [
    "recipe[ntp]"
]
default_attributes(
  "ntp" => {
    "servers" => ["ntp1.tfoundry.com iburst", "time.nist.gov"]
  }
)
