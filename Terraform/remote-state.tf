terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "pedropadilhaportella"
    workspaces {
      name = "aws-pedropadilhaportella"
    }
  }
}