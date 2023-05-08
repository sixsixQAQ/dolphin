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
cmake -G "MinGW Makefiles" -DCMAKE_CXX_COMPILER=g++ -DCMAKE_C_COMPILER=gcc
cmake --build .
```

用Qt的MinGW命令行进入可执行文件所在的bin目录，windeployqt找出所有.dll，最后拷贝样式表文件到exe所在目录。
```shell
windeployqt main.exe
cp ../style.qss .
```

### Linux

```shell
cmake ..
cmake --build .
cp ../style.qss ../bin
```
