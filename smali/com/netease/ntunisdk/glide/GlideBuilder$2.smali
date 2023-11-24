.class Lcom/netease/ntunisdk/glide/GlideBuilder$2;
.super Ljava/lang/Object;
.source "GlideBuilder.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/Glide$RequestOptionsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/glide/GlideBuilder;->setDefaultRequestOptions(Lcom/netease/ntunisdk/glide/request/RequestOptions;)Lcom/netease/ntunisdk/glide/GlideBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/glide/GlideBuilder;

.field final synthetic val$requestOptions:Lcom/netease/ntunisdk/glide/request/RequestOptions;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/glide/GlideBuilder;Lcom/netease/ntunisdk/glide/request/RequestOptions;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder$2;->this$0:Lcom/netease/ntunisdk/glide/GlideBuilder;

    iput-object p2, p0, Lcom/netease/ntunisdk/glide/GlideBuilder$2;->val$requestOptions:Lcom/netease/ntunisdk/glide/request/RequestOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/netease/ntunisdk/glide/request/RequestOptions;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideBuilder$2;->val$requestOptions:Lcom/netease/ntunisdk/glide/request/RequestOptions;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/request/RequestOptions;-><init>()V

    :goto_0
    return-object v0
.end method
