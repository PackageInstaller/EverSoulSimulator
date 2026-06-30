# Pine Helper DEX 编译指南

这个 DEX 包含 Pine 框架 + Java 层 URL 重定向逻辑。
在开发机上用 Android Studio 编译，然后放入游戏 APK 的 assets/ 目录。

## 方法一：Android Studio (推荐)

1. 用 Android Studio 打开 pine_helper/ 目录
2. Sync Gradle，等待 Pine 依赖下载完成
3. Build → Build APK
4. 解压生成的 APK，提取 classes.dex 重命名为 pine_helper.dex
5. 将其放入游戏 APK 的 assets/pine_helper.dex

## 方法二：手动编译 (需要 JDK + Android SDK + d8)

```bash
# 1. 下载 Pine JAR
PINE_VERSION=0.2.8
wget https://repo1.maven.org/maven2/top/canyie/pine/core/${PINE_VERSION}/core-${PINE_VERSION}.aar
unzip core-${PINE_VERSION}.aar -d pine-core

# 2. 编译 Java
javac -cp "pine-core/classes.jar:$ANDROID_HOME/platforms/android-34/android.jar" \
  -d classes \
  src/main/java/com/rikka/helper/PineHelper.java

# 3. 转 DEX
d8 --lib "$ANDROID_HOME/platforms/android-34/android.jar" \
  --classpath pine-core/classes.jar \
  --output . \
  classes/com/rikka/helper/PineHelper.class \
  # + 所有 Pine 的 .class 文件

# 4. 输出 classes.dex → 重命名为 pine_helper.dex
```

## 部署

将 pine_helper.dex 放入游戏 APK 的 assets/ 目录：
```bash
# 已拆包的游戏 APK 中:
cp pine_helper.dex <游戏目录>/assets/pine_helper.dex
# 重新打包 APK 并签名
```
