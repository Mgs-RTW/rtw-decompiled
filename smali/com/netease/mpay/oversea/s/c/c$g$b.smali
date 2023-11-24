.class Lcom/netease/mpay/oversea/s/c/c$g$b;
.super Ljava/lang/Object;
.source "SecurityInputCodeView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/s/c/c$g;->a(Lcom/netease/mpay/oversea/s/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/s/a/b;

.field final synthetic b:Lcom/netease/mpay/oversea/s/c/c$g;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/s/c/c$g;Lcom/netease/mpay/oversea/s/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$g$b;->b:Lcom/netease/mpay/oversea/s/c/c$g;

    iput-object p2, p0, Lcom/netease/mpay/oversea/s/c/c$g$b;->a:Lcom/netease/mpay/oversea/s/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$g$b;->b:Lcom/netease/mpay/oversea/s/c/c$g;

    iget-object p1, p1, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    iget-object p2, p0, Lcom/netease/mpay/oversea/s/c/c$g$b;->a:Lcom/netease/mpay/oversea/s/a/b;

    iget-object v0, p2, Lcom/netease/mpay/oversea/s/a/b;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/netease/mpay/oversea/s/a/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/netease/mpay/oversea/s/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
