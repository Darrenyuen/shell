## 仓库脚步配置使用说明
### 一、gitmodechange.sh
> 一键切换git工作模式
> 适用场景：在同一个机器往不同的git平台推送代码

**原理：** 不同的git平台会有不同的rsa密钥，往指定平台提交代码时需切换对应的密钥到工作环境，也即将密钥文件重命名为id_rsa、id_rsa.pub

**配置使用（以mac为例）：**
1. vim ~/.zprofile
2. alias gm="sh ~/Documents/shell/gitworkmode.sh"
3. source .zprofile
4. 执行`gm 0` `gm 1`命令即可切换指定的git模式