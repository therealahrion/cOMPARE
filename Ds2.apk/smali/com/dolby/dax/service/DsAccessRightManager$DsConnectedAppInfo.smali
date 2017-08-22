.class Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;
.super Ljava/lang/Object;
.source "DsAccessRightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/dax/service/DsAccessRightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DsConnectedAppInfo"
.end annotation


# instance fields
.field appCurrentAccessRight:I

.field appPackageName:Ljava/lang/String;

.field connectionBridge:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/dolby/dax/service/DsAccessRightManager$DsConnectedAppInfo;-><init>()V

    return-void
.end method
