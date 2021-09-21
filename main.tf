provider "google" {
   
    credentials = file("/home/deq/Downloads/demo-tf.json")
    project = "absolute-alloy-325310"
    region = "us-central1"
    zone = "us-central1-c"
}

resource "google_compute_instance" "demoserver" {
    name = "primary-demo-server"
    machine_type = "f1-micro"

    boot_disk {
      initialize_params{
            image = "debian-cloud/debian-9"
      }
    }
    network_interface {
      network = "default"
    }
}