Monkey-patches the aws provider so that AMI is a computed resource

Install the binary by saying docker build . ; docker run -v "$HOME/bin:/target" xxxx

Install by including the following in your ~/.terraformrc

    providers {
        aws = "terraform-provider-myaws"
    }
