module "dev" {
  source = "./dev"
}

provider "aws" {
  region  = "ap-northeast-2"
  profile = "jjada"
}
