.class Lcom/netease/ntunisdk/SdkCutout$1;
.super Ljava/lang/Object;
.source "SdkCutout.java"

# interfaces
.implements Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$OnInitFinishLister;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkCutout;->initCutoutUtil()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkCutout;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkCutout;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkCutout$1;->this$0:Lcom/netease/ntunisdk/SdkCutout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Z)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCutout$1;->this$0:Lcom/netease/ntunisdk/SdkCutout;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/SdkCutout;->setGlobalResult(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCutout$1;->this$0:Lcom/netease/ntunisdk/SdkCutout;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/SdkCutout;->extendFunc(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
