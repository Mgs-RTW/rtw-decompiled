.class synthetic Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$4;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$netease$ntunisdk$external$protocol$utils$AsyncTask$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 415
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$Status;->values()[Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$4;->$SwitchMap$com$netease$ntunisdk$external$protocol$utils$AsyncTask$Status:[I

    :try_start_0
    sget-object v0, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$4;->$SwitchMap$com$netease$ntunisdk$external$protocol$utils$AsyncTask$Status:[I

    sget-object v1, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$Status;->RUNNING:Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$4;->$SwitchMap$com$netease$ntunisdk$external$protocol$utils$AsyncTask$Status:[I

    sget-object v1, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$Status;->FINISHED:Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
