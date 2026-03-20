package main

deny[msg] {
  instance := input.resource_changes[_].change.after.instance_type
  instance == "t2.micro"
  msg = "t2.micro not allowed"
}
