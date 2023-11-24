.class Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$2;
.super Ljava/lang/Object;
.source "TextCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->register(ZLjava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

.field final synthetic val$callback:Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;

.field final synthetic val$region:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$2;->this$0:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$2;->val$region:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$2;->val$callback:Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextCache The downloaded url is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "The current language type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$2;->val$region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$2;->this$0:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$2;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$2;->val$callback:Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->access$100(Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V

    return-void
.end method
