---


title: while 与 dowhile的区别
date: 2021-12-09 22:17:16
tags: javase
---

+ 1.while是先判断在执行，dowhile是先执行在判断

+ 2.while条件不成立时不执行，dowhile条件不成立是能执行一次。这是主要区别。

````java
do{
    ...
}while(条件)
````

```java
int a=0;
        while(a<0){
            i++;
            System.out.println(a);
        }
        System.out.println("============");
        do{
            i++;
            System.out.println(a);
        }while(a<0);
```

```java
============
1

Process finished with exit code 0
```

