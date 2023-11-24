.class public Lcom/netease/ntunisdk/glide/GlideExperiments;
.super Ljava/lang/Object;
.source "GlideExperiments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/GlideExperiments$Builder;,
        Lcom/netease/ntunisdk/glide/GlideExperiments$Experiment;
    }
.end annotation


# instance fields
.field private final experiments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/netease/ntunisdk/glide/GlideExperiments$Experiment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/glide/GlideExperiments$Builder;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    .line 24
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/GlideExperiments$Builder;->access$000(Lcom/netease/ntunisdk/glide/GlideExperiments$Builder;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/GlideExperiments;->experiments:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method get(Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/GlideExperiments$Experiment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/netease/ntunisdk/glide/GlideExperiments$Experiment;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideExperiments;->experiments:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/GlideExperiments$Experiment;

    return-object p1
.end method

.method public isEnabled(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/netease/ntunisdk/glide/GlideExperiments$Experiment;",
            ">;)Z"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/GlideExperiments;->experiments:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
