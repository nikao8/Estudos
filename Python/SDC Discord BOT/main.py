import os
import discord
import datetime
from datetime import date
import time

client = discord.Client()
my_secret = os.environ['TOKEN']

day = date.today()
d1 = day.strftime('%Y/%m/%d')

ano = d1[0:4]
mes = d1[5:7]
dia = d1[8:10]

if(mes.startswith('0')):
  mes = d1[6:7]

if(dia.startswith('0')):
  dia = d1[9:10]

diaStr = datetime.date(int(ano),int(mes),int(dia)).strftime('%A')

horario1 = time.localtime()
horario_agora1 = time.strftime("%H:%M:%S", horario1)
# ------------------------
print('Dia: ',diaStr)
print('Horario: ', horario_agora1)

@client.event
async def on_ready():
  game = discord.Game("github.com/nikao8")
  await client.change_presence(status=None, activity=game)
  print('Logado como {0.user}'.format(client))
  await send_video()

@client.event
async def send_video():
  
  #FUNCIONANDO !!!
  text_channel_list = []
  channel_id = []
  for guild in client.guilds:
    for channel in guild.text_channels:
        text_channel_list.append(channel)
        channel_id = channel.id
        print(channel_id)
  
  infinity_loop = 1

  while (infinity_loop == 1):
    day = date.today()
    d1 = day.strftime('%Y/%m/%d')

    ano = d1[0:4]
    mes = d1[5:7]
    dia = d1[8:10]

    if(mes.startswith('0')):
      mes = d1[6:7]

    if(dia.startswith('0')):
      dia = d1[9:10]
    
    diaStr = datetime.date(int(ano),int(mes),int(dia)).strftime('%A')
    horario = time.localtime()
    horario_agora = time.strftime("%H:%M:%S", horario) 

    if(horario_agora >= '17:00:00' and horario_agora <= '17:00:05' and diaStr == 'Friday'):
      for guild in client.guilds:
        for channel in guild.text_channels:
          await client.get_channel(channel_id).send('https://cdn.discordapp.com/attachments/767871106035875880/865399647682166864/sexta_dos_crias_nessa_porra_caralho_tavam_com_saudades_-_-.mp4')
      time.sleep(15)
          
# INVITE LINK: https://discord.com/api/oauth2/authorize?client_id=865350229318828113&permissions=8&scope=bot
client.run(os.getenv('TOKEN'))