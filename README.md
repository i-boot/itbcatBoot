# itbcatBoot

spring boot 练习框架。

![](https://github.com/ITBCat/itbcatBoot/blob/master/src/main/resources/static/i_b%20.png?raw=true)

## plan
1. 文章列表（前、后）
2. 各个列表的分页
3. 跟人信息详情页

## nginx 代理
```
    server {
        listen       9008;
        server_name  localhost;

		location ~* \.(html|css|js|png|jpg|gif|ico)$ {
         	root /Users/BrickCat/IdeaProjects/itbcatBoot/upload/;
     	}

        location = /50x.html {
            root   html;
        }

    }

```

