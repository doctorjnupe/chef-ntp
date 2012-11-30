name "ntp_server"
description "Role applied to the system that should be an NTP server."
run_list [
    "recipe[ntp]"
]
default_attributes(
  "ntp" => {
    "is_server" => "true",
    "servers" => ["0.ubuntu.pool.ntp.org", "1.ubuntu.pool.ntp.org", "2.ubuntu.pool.ntp.org", "3.ubuntu.pool.ntp.org"],
    "peers" => ["0.ubuntu.pool.ntp.org", "1.ubuntu.pool.ntp.org"],
    "restrictions" => ["10.100.2.0/8 mask 255.0.0.0 nomodify notrap"]
  }
)
