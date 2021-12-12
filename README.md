# jetson-snmp-extend

## SNMP Extensions for Jetson Nano Devices

This repository contains scripts used in extending a Jetson Nano device's SNMP support to include the following:

- GPU Temperature
- CPU Temperature
- Weighted Average of onboard Temperature Sensors
- GPU Load

## Usage:

- Place the scripts on the Jetson Nano's storage device.
- Add entries to extend SNMP reporting in `/etc/snmp/snmpd.conf`:
```
extend jetson_cpu_temp "/path/to/get_jetson_cpuT.sh"
extend jetson_gpu_temp "/path/to/get_jetson_gpuT.sh"
extend jetson_wavg_temp "/path/to/get_jetson_avgT.sh"
extend jetson_gpu_load "/path/to/get_jetson_gpuL.sh"
```
- Restart SNMP daemon service:
`systemctl restart snmpd`
