.class Lcom/netease/neox/NeoXClient$1;
.super Ljava/lang/Object;
.source "NeoXClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/neox/NeoXClient;->terminate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/neox/NeoXClient;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/netease/neox/NeoXClient;Landroid/app/Activity;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/netease/neox/NeoXClient$1;->this$0:Lcom/netease/neox/NeoXClient;

    iput-object p2, p0, Lcom/netease/neox/NeoXClient$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/netease/neox/NeoXClient$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
