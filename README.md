# GTFO

Basicamente es un test para probar algunas cosas con bash y git

## Que hace?

Escanea el equipo (linux like) en archivos SUID y luego ve si existen coincidencias con la base de datos de GTFObins

De existir los lista y te da la url para mas informacion.

## Como se ve?
```sh

$./GTFO.sh 


    ______________________________________ ._.
   /  _____/\__    ___/\_   _____/\_____  \| |
  /   \  ___  |    |    |    __)   /   |   \ |
  \    \_\  \ |    |    |     \   /    |    \|
   \______  / |____|    \___  /   \_______  /_
          \/                \/            \/\/
        SUID priv escalation easy test
               [[gto]] script
         gracias a GTFObins.github.io

[*] Escaneando binarios SUID para usuario [[gto]]


[*] Buscando binario posiblemente explotable

[*] dbus-daemon-launch-helper no parece explotable
[*] ssh-keysign no parece explotable
[*] polkit-agent-helper-1 no parece explotable
[*] Xorg.wrap no parece explotable
[*] exim4 no parece explotable
[*] mount.nfs no parece explotable
[*] pppd no parece explotable
[*] chrome-sandbox no parece explotable
[*] kismet_cap_nrf_51822 no parece explotable
[*] ntfs-3g no parece explotable
[*] bwrap no parece explotable
[*] kismet_cap_linux_bluetooth no parece explotable
[*] kismet_cap_ti_cc_2531 no parece explotable
[*] fusermount no parece explotable
[*] mount parace explotable [!!]
[*] kismet_cap_ti_cc_2540 no parece explotable
[*] sudo no parece explotable
[*] kismet_cap_nrf_mousejack no parece explotable
[*] chsh no parece explotable
[*] pkexec parace explotable [!!]
[*] kismet_cap_nxp_kw41z no parece explotable
[*] umount no parece explotable
[*] newgrp no parece explotable
[*] chfn no parece explotable
[*] su parace explotable [!!]
[*] passwd no parece explotable
[*] kismet_cap_linux_wifi no parece explotable
[*] gpasswd no parece explotable


[*] Posibles binarios explotables:
    ------------------------------

[!] [[mount]] - vuln: [ sudo  ]
    URL: https://gtfobins.github.io/gtfobins/mount/

[!] [[pkexec]] - vuln: [ sudo  ]
    URL: https://gtfobins.github.io/gtfobins/pkexec/

[!] [[su]] - vuln: [ sudo  ]
    URL: https://gtfobins.github.io/gtfobins/su/
```

Si me conocieran sabrian que es demasiado para mi



