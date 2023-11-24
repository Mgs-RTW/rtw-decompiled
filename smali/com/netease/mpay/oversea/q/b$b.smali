.class Lcom/netease/mpay/oversea/q/b$b;
.super Ljava/lang/Object;
.source "PayWebViewHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/v$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/q/b;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/q/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/q/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/q/b$b;->a:Lcom/netease/mpay/oversea/q/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/q/b$b;->a:Lcom/netease/mpay/oversea/q/b;

    iget-object p1, p1, Lcom/netease/mpay/oversea/q/b;->i:Lcom/netease/mpay/oversea/web/WebViewEx;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/web/WebViewEx;->requestFocus()Z

    :cond_0
    return-void
.end method
