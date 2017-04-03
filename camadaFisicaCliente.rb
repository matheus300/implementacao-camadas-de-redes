require 'socket'

host = '127.0.0.1'
port = 2000
server = TCPSocket.open(host, port)
size = 10
# Envia o tamanho de pacote para o servidor
server.puts(size)

buffer = ""
destFile = File.open('/home/aluno/chegou.pdf', 'wb')
puts("Tenta ler do servidor: ")
while(data = server.gets)
	buffer += data
end
destFile.print buffer
destFile.close
server.close
