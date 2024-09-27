#!/bin/bash

# Diretórios
SRC_DIR="src"
BUILD_DIR="build"
INCLUDE_DIR="include"

# Criar diretório de build se não existir
mkdir -p $BUILD_DIR

# Compilar os arquivos de código-fonte
echo "Compilando main.c..."
x86_64-w64-mingw32-gcc -c -o $BUILD_DIR/main.o $SRC_DIR/main.c -I$INCLUDE_DIR

echo "Compilando hibernate.c..."
x86_64-w64-mingw32-gcc -c -o $BUILD_DIR/hibernate.o $SRC_DIR/hibernate.c -I$INCLUDE_DIR

echo "Compilando show_time.c..."
x86_64-w64-mingw32-gcc -c -o $BUILD_DIR/show_time.o $SRC_DIR/show_time.c -I$INCLUDE_DIR

# Compilar o arquivo de recursos
echo "Compilando resource.rc..."
x86_64-w64-mingw32-windres $SRC_DIR/resource.rc -o $BUILD_DIR/resource.o

# Linkar os objetos para criar o executável
echo "Linkando objetos para criar o executável..."
x86_64-w64-mingw32-gcc -o $BUILD_DIR/snooze_love.exe $BUILD_DIR/main.o $BUILD_DIR/hibernate.o $BUILD_DIR/show_time.o $BUILD_DIR/resource.o -lgdi32 -lpowrprof

# Verificar se o executável foi criado com sucesso
if [ -f "$BUILD_DIR/snooze_love.exe" ]; then
    echo "Executando o programa..."
    ./$BUILD_DIR/snooze_love.exe
else
    echo "Erro: O executável não foi criado."
fi
