@ECHO off
@ECHO ##########################################################
@ECHO ***** Compilador de Firware do Betaflight            *****
@ECHO ***** by Ramon Martins - www.github.com/RamonMartins *****
@ECHO ***** Pressione qualquer tecla para iniciar          *****
@ECHO ***** Pressione CTRL-C para abortar                  *****
@ECHO ##########################################################
Break ON
@pause

docker run -e "TARGET=CRAZYBEEF3FR" --rm -it -v c:/Users/Ramon/Documents/GitHub/Betaflight-3.5.7-Editado:/opt/betaflight betaflight/betaflight-build

@ECHO ##########################################################
@ECHO *****                 Concluido                      *****
@ECHO ##########################################################

docker run -e "TARGET=CRAZYBEEF3FS" --rm -it -v c:/Users/Ramon/Documents/GitHub/Betaflight-3.5.7-Editado:/opt/betaflight betaflight/betaflight-build

@ECHO ##########################################################
@ECHO *****                 Concluido                      *****
@ECHO ##########################################################

docker run -e "TARGET=CRAZYBEEF3DX" --rm -it -v c:/Users/Ramon/Documents/GitHub/Betaflight-3.5.7-Editado:/opt/betaflight betaflight/betaflight-build

@ECHO ##########################################################
@ECHO *****                 Concluido                      *****
@ECHO ##########################################################

PAUSE