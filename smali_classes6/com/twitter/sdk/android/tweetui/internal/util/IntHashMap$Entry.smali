.class Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
.super Ljava/lang/Object;
.source "IntHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field public final hash:I

.field public key:I

.field public next:Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

.field public value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(IILjava/lang/Object;Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->hash:I

    .line 90
    iput p2, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->key:I

    .line 91
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 92
    iput-object p4, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->next:Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    return-void
.end method
