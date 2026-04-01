package main

deny[msg] {
  input.spec.template.spec.containers[_].securityContext.runAsUser == 0
  msg := "Container must not run as root"
}
