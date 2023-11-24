.class Lcom/netease/mpay/oversea/n/l/j$d;
.super Ljava/lang/Object;
.source "QuickLogin.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/l/j;->a(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/h/c;

.field final synthetic b:Lcom/netease/mpay/oversea/n/l/j;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/l/j;Lcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$d;->b:Lcom/netease/mpay/oversea/n/l/j;

    iput-object p2, p0, Lcom/netease/mpay/oversea/n/l/j$d;->a:Lcom/netease/mpay/oversea/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/j$d;->a:Lcom/netease/mpay/oversea/h/c;

    iget v0, v0, Lcom/netease/mpay/oversea/h/c;->a:I

    const/16 v1, 0x271c

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/j$d;->b:Lcom/netease/mpay/oversea/n/l/j;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/l/j;->e(Lcom/netease/mpay/oversea/n/l/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/n/l/j;->a(Lcom/netease/mpay/oversea/n/l/j;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
