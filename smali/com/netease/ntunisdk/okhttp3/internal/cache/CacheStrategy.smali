.class public final Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheStrategy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final cacheResponse:Lcom/netease/ntunisdk/okhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final networkRequest:Lcom/netease/ntunisdk/okhttp3/Request;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/Request;Lcom/netease/ntunisdk/okhttp3/Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheStrategy;->networkRequest:Lcom/netease/ntunisdk/okhttp3/Request;

    iput-object p2, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheStrategy;->cacheResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    return-void
.end method

.method public static isCacheable(Lcom/netease/ntunisdk/okhttp3/Response;Lcom/netease/ntunisdk/okhttp3/Request;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/Response;->code()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/Response;->cacheControl()Lcom/netease/ntunisdk/okhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/Response;->cacheControl()Lcom/netease/ntunisdk/okhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/CacheControl;->isPublic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/Response;->cacheControl()Lcom/netease/ntunisdk/okhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/CacheControl;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :sswitch_1
    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/Response;->cacheControl()Lcom/netease/ntunisdk/okhttp3/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/CacheControl;->noStore()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Request;->cacheControl()Lcom/netease/ntunisdk/okhttp3/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/CacheControl;->noStore()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
