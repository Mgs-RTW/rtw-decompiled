.class Lcom/netease/neox/PluginApp$1;
.super Ljava/lang/Object;
.source "PluginApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/neox/PluginApp;->requestOrientation(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/neox/PluginApp;

.field final synthetic val$new_orientation:I


# direct methods
.method constructor <init>(Lcom/netease/neox/PluginApp;I)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/netease/neox/PluginApp$1;->this$0:Lcom/netease/neox/PluginApp;

    iput p2, p0, Lcom/netease/neox/PluginApp$1;->val$new_orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/netease/neox/PluginApp$1;->this$0:Lcom/netease/neox/PluginApp;

    invoke-static {v0}, Lcom/netease/neox/PluginApp;->access$000(Lcom/netease/neox/PluginApp;)Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/netease/neox/PluginApp$1;->val$new_orientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
