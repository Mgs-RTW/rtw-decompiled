.class public final Lcom/google/android/play/core/splitinstall/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/co;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/co<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/internal/co;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/co<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/co;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/co<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/aa;->a:Lcom/google/android/play/core/internal/co;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/aa;->a:Lcom/google/android/play/core/internal/co;

    check-cast v0, Lcom/google/android/play/core/splitinstall/z;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/z;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/y;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
