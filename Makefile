# Compilador e flags
CC = x86_64-w64-mingw32-gcc
RC = x86_64-w64-mingw32-windres
CFLAGS = -Iinclude -lgdi32 -lpowrprof

# Diretórios
SRC_DIR = src
BUILD_DIR = build
INCLUDE_DIR = include
ICON_DIR = icons

# Arquivos fonte e objetos
SRCS = $(SRC_DIR)/main.c $(SRC_DIR)/hibernate.c $(SRC_DIR)/show_time.c
OBJS = $(SRCS:.c=.o)
RES = $(SRC_DIR)/resource.rc
RES_OBJ = $(BUILD_DIR)/resource.o

# Nome do executável
TARGET = $(BUILD_DIR)/snooze_love.exe

# Regra padrão
all: $(TARGET) check

# Regra para criar o executável
$(TARGET): $(OBJS) $(RES_OBJ)
	@echo "Linkando objetos para criar o executável..."
	$(CC) -o $(TARGET) $(OBJS) $(RES_OBJ) $(CFLAGS)
	@echo "O executável foi criado com sucesso."

# Regra para compilar arquivos .c em .o
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@echo "Compilando $<..."
	$(CC) $(CFLAGS) -c $< -o $@

# Regra para compilar o arquivo de recursos
$(RES_OBJ): $(RES)
	@echo "Compilando $<..."
	$(RC) $(RES) -o $(RES_OBJ)

# Limpeza dos arquivos compilados
clean:
	@echo "Limpando arquivos compilados..."
	rm -f $(BUILD_DIR)/*.exe $(BUILD_DIR)/*.o
	@echo "Arquivos compilados foram limpos."

# Regra para verificar se o processo está em execução
check:
	@echo "Verificando se o processo está em execução..."
	@pgrep -f snooze_love.exe > /dev/null && echo "snooze_love.exe está em execução." || echo "snooze_love.exe não está em execução."

# Regra para reiniciar o processo
restart: clean all

.PHONY: all clean restart check
