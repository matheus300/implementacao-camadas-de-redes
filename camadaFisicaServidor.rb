require 'socket'               # Get sockets from stdlib

server = TCPServer.open(2000)  # Socket to listen on port 2000
serverSize = 20
loop {                         # Servers run forever
  client = server.accept       # Wait for a client to connect
  clientSize = Integer(client.gets)
  puts(clientSize)

  # verifica qual tamanho de pacote usar
  
  file = open('/home/aluno/implementacao-camadas-de-redes/exemplo.pdf', "rb")
  
 
  puts("Lendo arquivo e transferindo dados: ")

  
  while(part = file.read(10))
  	client.print(part)
  end
  puts("Enviou:")
  
  file.close
  client.close
}