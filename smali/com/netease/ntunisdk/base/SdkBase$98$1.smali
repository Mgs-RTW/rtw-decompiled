.class final Lcom/netease/ntunisdk/base/SdkBase$98$1;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase$98;->extendFuncCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase$98;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase$98;Ljava/lang/String;)V
    .locals 0

    .line 4171
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$98$1;->b:Lcom/netease/ntunisdk/base/SdkBase$98;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$98$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 4174
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$98$1;->b:Lcom/netease/ntunisdk/base/SdkBase$98;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase$98;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$98$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V

    return-void
.end method
