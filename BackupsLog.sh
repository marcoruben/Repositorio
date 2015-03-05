tamanioDoc=0
tamanioForm=0
tamanioHaH=0
tamanioIepsAct=0
tamanioBiblIeps=0
tamanioIntranet=0
tamanioNomina=0
tamanioProCDH=0
tamanioRegCap=0
tamanioSlogan=0
tamanioViaticos=0
tamanioGlpiSpark=0
tamanioPescaArr=0
tamanioPreReqAct=0
tamanioPreReqAct1=0
tamanioVademecum=0

if [ -f /var/www/html/bks/bd/documentos_$(date +%Y%m%d_%H).sql ]
then
tamanioDoc=$(stat -c%s /var/www/html/bks/bd/documentos_$(date +%Y%m%d_%H).sql)
fi
if [ -f /var/www/html/bks/bd/formularios_$(date +%Y%m%d_%H).sql ]
then
tamanioForm=$(stat -c%s /var/www/html/bks/bd/formularios_$(date +%Y%m%d_%H).sql)
fi
if [ -f /var/www/html/bks/bd/nomina_$(date +%Y%m%d_%H).sql ]
then
tamanioNomina=$(stat -c%s /var/www/html/bks/bd/nomina_$(date +%Y%m%d_%H).sql)
fi
if [ -f /var/www/html/bks/bd/hombro_a_hombro_$(date +%Y%m%d_%H).sql ]
then
tamanioHaH=$(stat -c%s /var/www/html/bks/bd/hombro_a_hombro_$(date +%Y%m%d_%H).sql)
fi
if [ -f /var/www/html/bks/bd/ieps_actores_$(date +%Y%m%d_%H).sql ]
then
tamanioIepsAct=$(stat -c%s /var/www/html/bks/bd/ieps_actores_$(date +%Y%m%d_%H).sql)
fi
if [ -f /var/www/html/bks/bd/biblioteca_$(date +%Y%m%d_%H).sql ]
then
tamanioBiblIeps=$(stat -c%s /var/www/html/bks/bd/biblioteca_$(date +%Y%m%d_%H).sql)
fi
if [ -f /var/www/html/bks/bd/intranet_$(date +%Y%m%d_%H).sql ]
then
tamanioIntranet=$(stat -c%s /var/www/html/bks/bd/intranet_$(date +%Y%m%d_%H).sql)
fi
if [ -f /var/www/html/bks/bd/openfire_$(date +%Y%m%d_%H).sql ]
then
tamanioGlpiSpark=$(stat -c%s /var/www/html/bks/bd/openfire_$(date +%Y%m%d_%H).sql)
fi
if [ -f /var/www/html/bks/bd/pesca_arrastre_$(date +%Y%m%d_%H).sql ]
then
tamanioPescaArr=$(stat -c%s /var/www/html/bks/bd/pesca_arrastre_$(date +%Y%m%d_%H).sql)
fi
if [ -f /var/www/html/bks/bd/pre_registro_uep_$(date +%Y%m%d_%H).sql ]
then
tamanioPreReqAct=$(stat -c%s /var/www/html/bks/bd/pre_registro_uep_$(date +%Y%m%d_%H).sql)
fi
if [ -f /var/www/html/bks/bd/preinscripcion_actores_$(date +%Y%m%d_%H).sql ]
then
tamanioPreReqAct1=$(stat -c%s /var/www/html/bks/bd/preinscripcion_actores_$(date +%Y%m%d_%H).sql)
fi
if [ -f /var/www/html/bks/bd/proyectos_cdh_$(date +%Y%m%d_%H).sql ]
then
tamanioProCDH=$(stat -c%s /var/www/html/bks/bd/proyectos_cdh_$(date +%Y%m%d_%H).sql)
fi
if [ -f /var/www/html/bks/bd/registro_capacitaciones_$(date +%Y%m%d_%H).sql ]
then
tamanioRegCap=$(stat -c%s /var/www/html/bks/bd/registro_capacitaciones_$(date +%Y%m%d_%H).sql)
fi
if [ -f /var/www/html/bks/bd/slogans_$(date +%Y%m%d_%H).sql ]
then
tamanioSlogan=$(stat -c%s /var/www/html/bks/bd/slogans_$(date +%Y%m%d_%H).sql)
fi
if [ -f /var/www/html/bks/bd/vademecum_$(date +%Y%m%d_%H).sql ]
then
tamanioVademecum=$(stat -c%s /var/www/html/bks/bd/vademecum_$(date +%Y%m%d_%H).sql)
fi
if [ -f /var/www/html/bks/bd/viaticos_$(date +%Y%m%d_%H).sql ]
then
tamanioViaticos=$(stat -c%s /var/www/html/bks/bd/viaticos_$(date +%Y%m%d_%H).sql)
fi

$(touch /var/www/html/bks/Backups.log)
if [ $tamanioDoc -gt 1266 ]
then
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Documentos---Status:ok>>/var/www/html/bks/log/Backups.log
else
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Documentos---Status:failed>>/var/www/html/bks/log/Backups.log
fi
if [ $tamanioForm -gt 1266 ]
then
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Formularios---Status:ok>>/var/www/html/bks/log/Backups.log
else
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Formularios---Status:failed>>/var/www/html/bks/log/Backups.log
fi
if [ $tamanioNomina -gt 1266 ]
then
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Nomina---Status:ok>>/var/www/html/bks/log/Backups.log
else
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Nomina---Status:failed>>/var/www/html/bks/log/Backups.log
fi
if [ $tamanioHaH -gt 1266 ]
then
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Hombro a Hombro---Status:ok>>/var/www/html/bks/log/Backups.log
else
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Hombro a Hombro---Status:failed>>/var/www/html/bks/log/Backups.log
fi
if [ $tamanioIepsAct -gt 1266 ]
then
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Tienda Virtual---Status:ok>>/var/www/html/bks/log/Backups.log
else
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Tienda Virtual---Status:failed>>/var/www/html/bks/log/Backups.log
fi
if [ $tamanioBiblIeps -gt 1266 ]
then
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Biblioteca---Status:ok>>/var/www/html/bks/log/Backups.log
else
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Biblioteca---Status:failed>>/var/www/html/bks/log/Backups.log
fi
if [ $tamanioIntranet -gt 1266 ]
then
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Intranet---Status:ok>>/var/www/html/bks/log/Backups.log
else
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Intranet---Status:failed>>/var/www/html/bks/log/Backups.log
fi
if [ $tamanioGlpiSpark -gt 1266 ]
then
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:GLPI y Spark---Status:ok>>/var/www/html/bks/log/Backups.log
else
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:GLPI y Spark---Status:failed>>/var/www/html/bks/log/Backups.log
fi
if [ $tamanioPescaArr -gt 1266 ]
then
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Pesca y Arrastre---Status:ok>>/var/www/html/bks/log/Backups.log
else
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Pesca y Arrastre---Status:failed>>/var/www/html/bks/log/Backups.log
fi
if [ $tamanioPreReqAct -gt 1266 ]
then
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Preregistro de Actores-EdgarMerino---Status:ok>>/var/www/html/bks/log/Backups.log
else
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Preregistro de Actores-EdgarMerino---Status:failed>>/var/www/html/bks/log/Backups.log
fi
if [ $tamanioPreReqAct1 -gt 1266 ]
then
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Preregistro de Actores-CarlosArteta---Status:ok>>/var/www/html/bks/log/Backups.log
else
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Preregistro de Actores-CarlosArteta---Status:failed>>/var/www/html/bks/log/Backups.log
fi
if [ $tamanioProCDH -gt 1266 ]
then
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Proyectos_CDH---Status:ok>>/var/www/html/bks/log/Backups.log
else
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Proyectos_CDH---Status:failed>>/var/www/html/bks/log/Backups.log
fi
if [ $tamanioRegCap -gt 1266 ]
then
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Registro_Capacitaciones---Status:ok>>/var/www/html/bks/log/Backups.log
else
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Registro_Capacitaciones---Status:failed>>/var/www/html/bks/log/Backups.log
fi
if [ $tamanioSlogan -gt 1266 ]
then
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Slogans---Status:ok>>/var/www/html/bks/log/Backups.log
else
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Slogans---Status:failed>>/var/www/html/bks/log/Backups.log
fi
if [ $tamanioVademecum -gt 1266 ]
then
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Vademecum---Status:ok>>/var/www/html/bks/log/Backups.log
else
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Vademecum---Status:failed>>/var/www/html/bks/log/Backups.log
fi
if [ $tamanioViaticos -gt 1266 ]
then
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Viaticos---Status:ok>>/var/www/html/bks/log/Backups.log
else
echo User:root-----Date:$(date +%Y-%m-%d)--Time:$(date +%H:%M)----Backup:Viaticos---Status:failed>>/var/www/html/bks/log/Backups.log
fi