.class public final Lcom/netease/ntunisdk/glide/load/engine/GlideException;
.super Ljava/lang/Exception;
.source "GlideException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/load/engine/GlideException$IndentedAppendable;
    }
.end annotation


# static fields
.field private static final EMPTY_ELEMENTS:[Ljava/lang/StackTraceElement;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final causes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private dataSource:Lcom/netease/ntunisdk/glide/load/DataSource;

.field private detailMessage:Ljava/lang/String;

.field private exception:Ljava/lang/Exception;

.field private key:Lcom/netease/ntunisdk/glide/load/Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 22
    sput-object v0, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->EMPTY_ELEMENTS:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 36
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->detailMessage:Ljava/lang/String;

    .line 41
    sget-object p1, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->EMPTY_ELEMENTS:[Ljava/lang/StackTraceElement;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 42
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->causes:Ljava/util/List;

    return-void
.end method

.method private addRootCauses(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 125
    instance-of v0, p1, Lcom/netease/ntunisdk/glide/load/engine/GlideException;

    if-eqz v0, :cond_0

    .line 126
    check-cast p1, Lcom/netease/ntunisdk/glide/load/engine/GlideException;

    .line 127
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->getCauses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 128
    invoke-direct {p0, v0, p2}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->addRootCauses(Ljava/lang/Throwable;Ljava/util/List;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private static appendCauses(Ljava/util/List;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Appendable;",
            ")V"
        }
    .end annotation

    .line 202
    :try_start_0
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->appendCausesWrapped(Ljava/util/List;Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 204
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static appendCausesWrapped(Ljava/util/List;Ljava/lang/Appendable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Appendable;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const-string v2, "Cause ("

    .line 214
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    .line 215
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v2

    const-string v4, " of "

    .line 216
    invoke-interface {v2, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v2

    .line 217
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v2

    const-string v4, "): "

    .line 218
    invoke-interface {v2, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 220
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 221
    instance-of v2, v1, Lcom/netease/ntunisdk/glide/load/engine/GlideException;

    if-eqz v2, :cond_0

    .line 222
    check-cast v1, Lcom/netease/ntunisdk/glide/load/engine/GlideException;

    .line 223
    invoke-direct {v1, p1}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->printStackTrace(Ljava/lang/Appendable;)V

    goto :goto_1

    .line 225
    :cond_0
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->appendExceptionMessage(Ljava/lang/Throwable;Ljava/lang/Appendable;)V

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static appendExceptionMessage(Ljava/lang/Throwable;Ljava/lang/Appendable;)V
    .locals 1

    .line 191
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string v0, ": "

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 193
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private printStackTrace(Ljava/lang/Appendable;)V
    .locals 2

    .line 151
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->appendExceptionMessage(Ljava/lang/Throwable;Ljava/lang/Appendable;)V

    .line 152
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->getCauses()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/glide/load/engine/GlideException$IndentedAppendable;

    invoke-direct {v1, p1}, Lcom/netease/ntunisdk/glide/load/engine/GlideException$IndentedAppendable;-><init>(Ljava/lang/Appendable;)V

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->appendCauses(Ljava/util/List;Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method

.method public getCauses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->causes:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 5

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x47

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->detailMessage:Ljava/lang/String;

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->dataClass:Ljava/lang/Class;

    const-string v2, ", "

    const-string v3, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->dataClass:Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->dataSource:Lcom/netease/ntunisdk/glide/load/DataSource;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->dataSource:Lcom/netease/ntunisdk/glide/load/DataSource;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->key:Lcom/netease/ntunisdk/glide/load/Key;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->key:Lcom/netease/ntunisdk/glide/load/Key;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->getRootCauses()Ljava/util/List;

    move-result-object v1

    .line 167
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const-string v2, "\nThere was 1 root cause:"

    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v2, "\nThere were "

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " root causes:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    const/16 v3, 0xa

    .line 176
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    .line 178
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const-string v1, "\n call GlideException#logRootCauses(String) for more detail"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Ljava/lang/Exception;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getRootCauses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-direct {p0, p0, v0}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->addRootCauses(Ljava/lang/Throwable;Ljava/util/List;)V

    return-object v0
.end method

.method public logRootCauses(Ljava/lang/String;)V
    .locals 6

    .line 118
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->getRootCauses()Ljava/util/List;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Root cause ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {p1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public printStackTrace()V
    .locals 1

    .line 137
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->printStackTrace(Ljava/lang/Appendable;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->printStackTrace(Ljava/lang/Appendable;)V

    return-void
.end method

.method setLoggingDetails(Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/DataSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->setLoggingDetails(Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/DataSource;Ljava/lang/Class;)V

    return-void
.end method

.method setLoggingDetails(Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/DataSource;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/Key;",
            "Lcom/netease/ntunisdk/glide/load/DataSource;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->key:Lcom/netease/ntunisdk/glide/load/Key;

    .line 51
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->dataSource:Lcom/netease/ntunisdk/glide/load/DataSource;

    .line 52
    iput-object p3, p0, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->dataClass:Ljava/lang/Class;

    return-void
.end method

.method public setOrigin(Ljava/lang/Exception;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->exception:Ljava/lang/Exception;

    return-void
.end method
