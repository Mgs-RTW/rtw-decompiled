.class public Lcom/netease/mpay/oversea/g/b;
.super Lcom/netease/mpay/oversea/h/d;
.source "BitmapSaveTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/g/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/h/d<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Lcom/netease/mpay/oversea/g/a;

.field private s:Lcom/netease/mpay/oversea/g/b$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/h/d;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/netease/mpay/oversea/g/b;->r:Lcom/netease/mpay/oversea/g/a;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/g/b;->q:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/netease/mpay/oversea/g/b;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/g/b;->r:Lcom/netease/mpay/oversea/g/a;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/g/a;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/g/b;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/g/b;->p:Ljava/lang/String;

    const-string v2, "image/png"

    invoke-static {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/t/f/g/h;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/g/b;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .line 4
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/h/d;->c(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/g/b;->s:Lcom/netease/mpay/oversea/g/b$a;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/g/b;->s:Lcom/netease/mpay/oversea/g/b$a;

    iget-object v0, p0, Lcom/netease/mpay/oversea/g/b;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/g/b;->p:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/g/b$a;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/g/b;->s:Lcom/netease/mpay/oversea/g/b$a;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/g/b$a;->onFailure()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/g/b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
