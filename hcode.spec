{
  "name": "shell-vc707-xillybus-ap_fifo128-pr-4ch",
  "type": "shell",
  "version": "0.2.0",
  "summary": "A hCODE shell based on xillybus-eval-vertex7-1.2c PCIe module. This shell provides 4 partial reconfigurable regions.",
  "description": "Developed in Computer Arch. Lab@Kumamoto University, Japan.",
  "homepage": "https://github.com/jonsonxp/shell-vc707-xillybus-ap_fifo128-pr-4ch",
  "license": "MIT",
  "authors": {
    "Qian ZHAO": "cho@arch.cs.kumamoto-u.ac.jp"
  },
  "source": {
    "git": "https://github.com/jonsonxp/shell-vc707-xillybus-ap_fifo128-pr-4ch.git",
    "tag": "0.2.0"
  },
  "hardware": {
  	"board": "vc707",
    "device": "xc7vx485tffg1761-2"
  },
  "interface": {
    "host": {
       "bandwidth": 1800,
       "ports":{
         "ap_fifo_1": {
           "type": "ap_fifo",
           "data_width": 128,
           "device_file_read": "/dev/xillybus_read_128_1",
           "device_file_write": "/dev/xillybus_write_128_1"
         },
         "ap_fifo_2": {
           "type": "ap_fifo",
           "data_width": 128,
           "device_file_read": "/dev/xillybus_read_128_2",
           "device_file_write": "/dev/xillybus_write_128_2"
         },
         "ap_fifo_3": {
           "type": "ap_fifo",
           "data_width": 128,
           "device_file_read": "/dev/xillybus_read_128_3",
           "device_file_write": "/dev/xillybus_write_128_3"
         },
         "ap_fifo_4": {
           "type": "ap_fifo",
           "data_width": 128,
           "device_file_read": "/dev/xillybus_read_128_4",
           "device_file_write": "/dev/xillybus_write_128_4"
         },
         "mem": {
          "data_width": 256
         } 
       }
    }
  },
  "resource": {
    "1":{
      "LUT": 63000,
      "LUTRAM": 25600,
      "FF": 126000,
      "BRAM": 205,
      "DSP": 540
    },
    "2":{
      "LUT": 65400,
      "LUTRAM": 29200,
      "FF": 130800,
      "BRAM": 235,
      "DSP": 660
    },
    "3":{
      "LUT": 57400,
      "LUTRAM": 25200,
      "FF": 114800,
      "BRAM": 205,
      "DSP": 540
    },
    "4":{
      "LUT": 38400,
      "LUTRAM": 19200,
      "FF": 76800,
      "BRAM": 120,
      "DSP": 480
    }
  },
  "compatible_shell": {
    "shell-vc707-xillybus-ap_fifo128": "4ch pr version."
  }
}
