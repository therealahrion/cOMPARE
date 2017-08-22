.class Lcom/dolby/dax/service/DsProperty$SystemProperties;
.super Ljava/lang/Object;
.source "DsProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/dax/service/DsProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemProperties"
.end annotation


# instance fields
.field private final clsSystemProperties:Ljava/lang/Class;

.field private final methodGetProperty:Ljava/lang/reflect/Method;

.field private final methodSetProperty:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string/jumbo v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/dax/service/DsProperty$SystemProperties;->clsSystemProperties:Ljava/lang/Class;

    iget-object v2, p0, Lcom/dolby/dax/service/DsProperty$SystemProperties;->clsSystemProperties:Ljava/lang/Class;

    const-string/jumbo v3, "set"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/dax/service/DsProperty$SystemProperties;->methodSetProperty:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/dolby/dax/service/DsProperty$SystemProperties;->clsSystemProperties:Ljava/lang/Class;

    const-string/jumbo v3, "get"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/dax/service/DsProperty$SystemProperties;->methodGetProperty:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Can not reflect android.os.SystemProperties class"

    const-string/jumbo v2, "DsProperty"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v2, p0, Lcom/dolby/dax/service/DsProperty$SystemProperties;->methodSetProperty:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/dolby/dax/service/DsProperty$SystemProperties;->clsSystemProperties:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Can not invoke android.os.SystemProperties.set method"

    const-string/jumbo v2, "DsProperty"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method set(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string/jumbo v0, "on"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/dolby/dax/service/DsProperty$SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "off"

    goto :goto_0
.end method

.method setBoolean(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/dolby/dax/service/DsProperty$SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method
