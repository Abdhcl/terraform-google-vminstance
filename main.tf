provider "google" {
    project = ""
}

resource "google_compute_instance" "myinstance" {
    name = var.myvm
    zone = var.myzone
    machine_type = var.machine
    boot_disk {
      initialize_params {
        image = var.myimage
      }
    }
    network_interface {
      network = "default"
      access_config {
        //for external ip
      }
    }
}