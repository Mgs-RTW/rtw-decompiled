.class final Lcom/google/android/gms/internal/games/zzga;
.super Lcom/google/android/gms/internal/games/zzgg;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/games/zzgg<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private zzmx:Z

.field private final synthetic zzmy:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzga;->zzmy:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/games/zzgg;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/games/zzga;->zzmx:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/games/zzga;->zzmx:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/games/zzga;->zzmx:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzga;->zzmy:Ljava/lang/Object;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
