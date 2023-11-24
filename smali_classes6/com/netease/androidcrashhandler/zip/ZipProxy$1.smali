.class Lcom/netease/androidcrashhandler/zip/ZipProxy$1;
.super Ljava/lang/Object;
.source "ZipProxy.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/net/NetCallbackImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/zip/ZipProxy;->dispatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/zip/ZipProxy;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/zip/ZipProxy;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy$1;->this$0:Lcom/netease/androidcrashhandler/zip/ZipProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetCallback(ILjava/lang/String;)V
    .locals 0

    const-string p1, "trace"

    const-string p2, "333"

    .line 108
    invoke-static {p1, p2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
