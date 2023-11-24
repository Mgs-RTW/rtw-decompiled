.class Lcom/netease/mpay/oversea/ui/m$i$j;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/o$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/m$i;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/t/c/f;

.field final synthetic b:Lcom/netease/mpay/oversea/n/i/b/d;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/mpay/oversea/ui/m$i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/m$i;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/n/i/b/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m$i$j;->d:Lcom/netease/mpay/oversea/ui/m$i;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/m$i$j;->a:Lcom/netease/mpay/oversea/t/c/f;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/m$i$j;->b:Lcom/netease/mpay/oversea/n/i/b/d;

    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/m$i$j;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .line 1
    new-instance p1, Lcom/netease/mpay/oversea/t/b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i$j;->d:Lcom/netease/mpay/oversea/ui/m$i;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->o:Ljava/lang/String;

    invoke-direct {p1, v1, v0}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i$j;->a:Lcom/netease/mpay/oversea/t/c/f;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/t/f/d;->b(Lcom/netease/mpay/oversea/t/c/f;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$i$j;->b:Lcom/netease/mpay/oversea/n/i/b/d;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i$j;->a:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    iput-object v0, p1, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i$j;->d:Lcom/netease/mpay/oversea/ui/m$i;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance v2, Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m$i$j;->c:Ljava/lang/String;

    invoke-direct {v2, v0, v3, p1}, Lcom/netease/mpay/oversea/ui/h$k;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$i$j;->d:Lcom/netease/mpay/oversea/ui/m$i;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 5
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 6
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method
