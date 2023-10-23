
# Busca todos os processos da maquina e filtra por 'firefox'
ps -ef | grep firefox

cat google.txt | grep "Larry Page and Sergey Brin"

# Comandos para interromper a execução de um processo 
# e retornar à execução do processo que foi interrompido anteriormente
$ kill -STOP 11163
$ kill -CONT 11163

# Encerrar a execução de um processo 
$ kill 11269
$ kill -TERM 11269

# Matar um processo
$ kill -9 11364