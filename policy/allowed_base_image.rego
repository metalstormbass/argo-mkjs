package main

allowed := {
    "ubuntu:14.04"
}
deny[msg] {
  base = input.docker.baseImage
  not valid(base)
  msg = sprintf("Not using a permitted base image: %v", [base])
}

valid(image) {
  allowed[image]  
}


