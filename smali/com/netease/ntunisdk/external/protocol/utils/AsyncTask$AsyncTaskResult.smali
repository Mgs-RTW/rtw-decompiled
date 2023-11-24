.class Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$AsyncTaskResult;->mTask:Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;

    .line 542
    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    return-void
.end method
