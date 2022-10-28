sudo cp miservicio.service /etc/systemd/system/
sudo cp miservicio.timer /etc/systemd/system/
sudo systemctl daemon-reload

sudo systemctl start miservicio.timer

function estado_miservicio {
	echo "Mi Servicio Status:"
	sudo systemctl status miservicio.service
	echo "=============================="
	echo "Mi Timer Status:"
	sudo systemctl status miservicio.timer
}

estado_miservicio

# OTROS COMANDOS UTILES
systemctl stop miservicio.service #PARA SERVICIO
systemctl enable miservicio.service #HABILITA SERVICIO
#OnCalendar format
#DayOfWeek Year-Month-Day Hour:Minute:Second
#OnCalendar=Mon,Tue *-*-01..04 12:00:00 (Cualquier día del 1 al 4, siempre que sea Lunes o Martes a las 12hs)
#OnCalendar=*-*-* *:*:00 (Todos los minutos)
