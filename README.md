# Machine virtuelle générique

Ce repo git présente une manière de créer une machine virtuelle accessible via SSH

## Installation

### Création du disque virtuel

Placez vous dans le dossier et lancez la commande :

``` bash 
qemu-img create monimage.img <taille>
```

### Premier lancement

Lancez la commande :
```bash
qemu-system-<architecture> -enable-kvm -m 8G -smp 4 -hda monimage.img -cdrom <image_du_cdrom_de_boot>
```
et installez le systeme.

## Lancement

Une fois le systeme installé, il suffit de lancer le script start.sh pour démarrer le serveur et de se connecter en ssh avec connect.sh 

N.B. : Le serveur SSH est par défaut accessible sru le port 5555 