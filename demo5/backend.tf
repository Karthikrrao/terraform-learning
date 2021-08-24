terraform {
    backend s3 {
        bucket = "terraformbucket11"
        key = "terraform/statefile"
    }
}