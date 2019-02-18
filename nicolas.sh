#!/bin/bash	

if [ "$(date +%k)" -ge 6 -a "$(date +%k)" -le 11 ]
then
echo "Bom Dia $USER, O Horario é $(date +"%H:%M:%S")"

elif [ "$(date +%k)" -ge 12 -a "$(date +%k)" -le 17 ]
then
echo "Bom Tarde $USER, O Horario é $(date +"%H:%M:%S")"

else echo "Bom Noite $USER, O Horario é $(date +"%H:%M:%S")"
fi

echo "Dia de Hoje é: $(date +"%d/%m/%Y") "

if [ -e /tmp/Nicolas ]
then {
echo "Arquivo /tmp/Nicolas existe."
}
else {
echo "Arquivo /tmp/Nicolas não existe."
}
fi

if [ -e /tmp/Nicolas/nicolas.txt ]
then {
echo "Arquivo /tmp/Nicolas/nicolas.txt existe."
}
else {
echo "Arquivo /tmp/Nicolas/nicolas.txt não existe."
}
fi

echo "/tmp"
read arquivo

test -d $arquivo && echo "$arquivo é um diretorio." && exit 0

test -f $arquivo && echo "$arquivo é um arquivo." && exit 0

echo "$arquivo não existe."
