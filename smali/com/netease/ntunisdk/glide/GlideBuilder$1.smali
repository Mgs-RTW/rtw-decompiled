.class Lcom/netease/ntunisdk/glide/GlideBuilder$1;
.super Ljava/lang/Object;
.source "GlideBuilder.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/Glide$RequestOptionsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/GlideBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/glide/GlideBuilder;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/glide/GlideBuilder;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/GlideBuilder$1;->this$0:Lcom/netease/ntunisdk/glide/GlideBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/netease/ntunisdk/glide/request/RequestOptions;
    .locals 1

    .line 64
    new-instance v0, Lcom/netease/ntunisdk/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/request/RequestOptions;-><init>()V

    return-object v0
.end method
