.class Lcom/netease/mpay/oversea/ui/i$c;
.super Ljava/lang/Object;
.source "GoogleLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/i;->b(Lcom/netease/mpay/oversea/h/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/h/c;

.field final synthetic b:Lcom/netease/mpay/oversea/ui/i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/i;Lcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/i$c;->b:Lcom/netease/mpay/oversea/ui/i;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/i$c;->a:Lcom/netease/mpay/oversea/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p2, 0x0

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "android.intent.action.VIEW"

    :try_start_1
    const-string v2, "market://details?id=com.google.android.gms"

    .line 2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/i$c;->b:Lcom/netease/mpay/oversea/ui/i;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    const/16 v2, 0x22

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/i$c;->a:Lcom/netease/mpay/oversea/h/c;

    iput-object p2, p1, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    .line 9
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/i$c;->b:Lcom/netease/mpay/oversea/ui/i;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    iget v0, p1, Lcom/netease/mpay/oversea/h/c;->a:I

    invoke-interface {p2, v0, p1}, Lcom/netease/mpay/oversea/ui/a0/a;->a(ILcom/netease/mpay/oversea/h/c;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    :try_start_2
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/i$c;->a:Lcom/netease/mpay/oversea/h/c;

    iput-object p2, p1, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    .line 13
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/i$c;->b:Lcom/netease/mpay/oversea/ui/i;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    iget v0, p1, Lcom/netease/mpay/oversea/h/c;->a:I

    invoke-interface {p2, v0, p1}, Lcom/netease/mpay/oversea/ui/a0/a;->a(ILcom/netease/mpay/oversea/h/c;)V

    :goto_0
    return-void

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/i$c;->a:Lcom/netease/mpay/oversea/h/c;

    iput-object p2, v0, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    .line 15
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/i$c;->b:Lcom/netease/mpay/oversea/ui/i;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    iget v1, v0, Lcom/netease/mpay/oversea/h/c;->a:I

    invoke-interface {p2, v1, v0}, Lcom/netease/mpay/oversea/ui/a0/a;->a(ILcom/netease/mpay/oversea/h/c;)V

    .line 16
    throw p1
.end method
