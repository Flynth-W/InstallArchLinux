#!/bin/sh 
case "$1" in 
    start) 
        $0 stop 
        pactl load-module module-simple-protocol-tcp rate=48000 format=s16le channels=2 source=alsa_output.pci-0000_00_1b.0.analog-stereo.monitor record=true port=6000
        ;; 
    stop) 
        pactl unload-module `pactl list | grep tcp -B1 | grep M | sed 's/[^0-9]//g'` 
        ;; 
    *) echo "Usage: $0 start|stop" >&2 ;; esac

#Fuente: https://www.enmimaquinafunciona.com/pregunta/34467/como-puedo-transmitir-mi-salida-de-audio-de-gnulinux-a-los-dispositivos-android-a-traves-de-wi-fi

