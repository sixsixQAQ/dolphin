## dolphin
第一代点绘机，以点的方式在绘图板上进行绘制。

## 依赖
### Windows
1. Qt6.3.2

### Linux

1. Qt6.3.2
2. libX11
3. libXtst

## 构建
### Windows

需要在环境变量中添加MinGW的bin目录。

```shell
git clone https://github.com/sixsixQAQ/dolphin
cd dolphin
mkdir build && cd build
cmake ../ -G "MinGW Makefiles" -DCMAKE_CXX_COMPILER=g++ -DCMAKE_C_COMPILER=gcc
cmake --build .
```

下来需要用Qt的MinGW命令行操作，
```shell
cd dolphin/bin
windeployqt *.exe
cp ../style.qss .
```

### Linux

```shell
git clone https://github.com/sixsixQAQ/dolphin
cd dolphin
mkdir build && cd build
cmake ..
cmake --build .
```
