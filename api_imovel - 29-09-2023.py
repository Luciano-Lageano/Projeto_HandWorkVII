import mysql.connector
import array
from datetime import datetime, timedelta

# cria uma conexão com o banco de dados
conexao = mysql.connector.connect(
    host = 'localhost',
    user = 'root',
    password = '123456',
    database = 'loc_imovel',
)
# variável, que comtem a conexão
cursor = conexao.cursor()

# variavel que será usado para fazer a consulta no banco de dados
comando = f'SELECT * FROM aluguel INNER JOIN tipo_imovel ON cod_imovel=id_imovel'

# executa a consulta no banco de dados.
cursor.execute(comando)

# variavel que possui todos os dados peito pela consulta esta variavel é um tipo de array
resultado = cursor.fetchall()

# imprime o resultado da consulta em formato tipo json
#print (resultado)
#print ("Numero Total de registro retornados:",cursor.rowcount,"\n")


### Calcula o valor do aluguies por imovei

def vlr_aluguel (totmov):
      valort = 0
      totmov = []
      for linha in resultado:
            if linha[5] == 1:
                  valort = valort + linha[2]
      totmov.append(1)      
      totmov.append(valort)      

      for linha in resultado:
            if linha[5] == 2:
                  valort = valort + linha[2]      
      totmov.append(2) 
      totmov.append(valort)

      for linha in resultado:
            if linha[5] == 3:
                  valort = valort + linha[2]
      totmov.append(3) 
      totmov.append(valort)      

      for linha in resultado:
            if linha[5] == 4:
                  valort = valort + linha[2]
      totmov.append(4) 
      totmov.append(valort)
      
      return(totmov)
      
print ("resultado da funcao com MAP \n", list(map(vlr_aluguel,resultado)))

valor = 0
total_registro = cursor.rowcount / 100 + 1.0
perc_movel = []
for linha in resultado:
      if linha[5] == 1:
            valor = valor + 1
            movel = linha[5]
perc_movel.append(movel)
perc_movel.append(total_registro * valor)
valor = 0

for linha in resultado:
      if linha[5] == 2:
            valor = valor + 1
            movel = linha[5]
perc_movel.append(movel)
perc_movel.append(total_registro * valor)
valor = 0

for linha in resultado:
      if linha[5] == 3:
            valor = valor + 1
            movel = linha[5]
perc_movel.append(movel)
perc_movel.append(total_registro * valor)
valor = 0

for linha in resultado:
      if linha[5] == 4:
            valor = valor + 1
            movel = linha[5]
perc_movel.append(movel)
perc_movel.append(total_registro * valor)
valor = 0

# cria o arquivo html como os dados do banco de dados, todos os imoveis cadastrado.
with open("imoveis_todos_porcetagem.html","w") as arquivo:
      arquivo.write(str(perc_movel))

#print (perc_movel)

valortotal = 0
timoveis = []

for linha in resultado:        
        if linha[5] == 1:
           valortotal = valortotal + linha[2]
           casas = valortotal
           imovel = linha[5]
           
timoveis.append(imovel)
timoveis.append(valortotal)

for linha in resultado:        
        if linha[5] == 2:
           valortotal = valortotal + linha[2]
           apto = valortotal
           imovel = linha[5]

timoveis.append(imovel)
timoveis.append(valortotal)

#print (imovel," => ", valortotal)

for linha in resultado:        
        if linha[5] == 3:
           valortotal = valortotal + linha[2]
           slcom = valortotal
           imovel = linha[5]

timoveis.append(imovel)
timoveis.append(valortotal)
#print (imovel," => ", valortotal)

for linha in resultado:        
        if linha[5] == 4:
           valortotal = valortotal + linha[2]
           galpao = valortotal
           imovel = linha[5]

timoveis.append(imovel)
timoveis.append(valortotal)

#print (imovel," => ", valortotal)
#print (imovel," => ", valortotal)
#print ("variavel timoves",timoveis)

# cria um arquivo com todos os imoveis cadastrado, com valor total de aluguel:
with open("imoveis_aluguel_total.html","w") as arquivo:
      arquivo.write(str(timoveis))
    #for linha in resultado:   
     #    arquivo.write(str(linha))
         #print(x)

# cria o arquivo html como os dados do banco de dados, todos os imoveis cadastrado.
with open("imoveis_todos_cadastro.html","w") as arquivo:
    for linha in resultado:
        arquivo.write(str(linha))

### FIM do calculo

### verifca a data por imovel 

# variavel que será usado para fazer a consulta no banco de dados
comando = f'SELECT data_pagto, valor_pagto FROM aluguel'

# executa a consulta no banco de dados.
cursor.execute(comando)

# variavel que possui todos os dados peito pela consulta esta variavel é um tipo de array
resultado = cursor.fetchall()

# imprime o resultado da consulta em formato tipo json
#print ("Valores de data e pagto \n", resultado)

vlr=0
total_imovel = []
for linha in resultado:     
      if linha[0].month== 2:
            vlr = vlr + linha[1]

total_imovel.append("02/2023")
total_imovel.append(vlr)
#print ("Total mes 02/2023 => ",vlr)

for linha in resultado:     
      if linha[0].month== 3:
            vlr = vlr + linha[1]

total_imovel.append("03/2023")
total_imovel.append(vlr)
#print ("Total mes 03/2023 => ",vlr)

for linha in resultado:     
      if linha[0].month== 4:
            vlr = vlr + linha[1]

total_imovel.append("04/2023")
total_imovel.append(vlr)

with open("imoveis_pagto_mensal.html","w") as arquivo:
      arquivo.write(str(total_imovel))

# cria o arquivo html como os dados do banco de dados.
with open("imoveis.html","w") as arquivo:
    for linha in resultado:
        arquivo.write(str(linha))


# fecha as conexões abertas.
cursor.close()
conexao.close()