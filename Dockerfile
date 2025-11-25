FROM python:3.12-slim

# Define a pasta de trabalho dentro do container
WORKDIR /app

# Copia o arquivo de requisitos
COPY requirements.txt .

# Instala dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copia todos os arquivos do diretório atual (Projeto.py incluso)
COPY . .

# Expõe a porta onde seu app vai rodar
EXPOSE 8000

# Executa sua aplicação
CMD ["uvicorn", "Projeto:app", "--host", "0.0.0.0", "--port", "8000"]

