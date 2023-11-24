.class public Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;
.super Ljava/lang/Object;
.source "SendMessagePresenter.java"

# interfaces
.implements Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$Presenter;
.implements Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;


# static fields
.field private static final MAX_TARGET_SIZE:I = 0xa


# instance fields
.field private apiStatusListener:Lcom/linecorp/linesdk/dialog/internal/ApiStatusListener;

.field private asyncTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

.field private targetUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/dialog/internal/TargetUser;",
            ">;"
        }
    .end annotation
.end field

.field private view:Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/api/LineApiClient;Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->targetUserList:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->asyncTaskList:Ljava/util/List;

    .line 21
    new-instance v0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter$1;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter$1;-><init>(Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;)V

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->apiStatusListener:Lcom/linecorp/linesdk/dialog/internal/ApiStatusListener;

    .line 34
    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    .line 35
    iput-object p2, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->view:Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;

    return-void
.end method

.method static synthetic access$000(Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;)Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->view:Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;

    return-object p0
.end method

.method private getTargets(Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;)V
    .locals 2

    .line 97
    new-instance v0, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    invoke-direct {v0, p1, v1, p2}, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;-><init>(Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;Lcom/linecorp/linesdk/api/LineApiClient;Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;)V

    const/4 p1, 0x0

    .line 98
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->asyncTaskList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addTargetUser(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->targetUserList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->view:Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;

    invoke-interface {v0, p1}, Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;->onTargetUserAdded(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V

    return-void
.end method

.method public getFriends(Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;)V
    .locals 1

    .line 88
    sget-object v0, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->FRIEND:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    invoke-direct {p0, v0, p1}, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->getTargets(Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;)V

    return-void
.end method

.method public getGroups(Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;)V
    .locals 1

    .line 93
    sget-object v0, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->GROUP:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    invoke-direct {p0, v0, p1}, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->getTargets(Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;)V

    return-void
.end method

.method public getTargetUserListSize()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->targetUserList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onSelected(Lcom/linecorp/linesdk/dialog/internal/TargetUser;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 63
    iget-object p2, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->targetUserList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->addTargetUser(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p2, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->view:Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;

    invoke-interface {p2, p1}, Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;->onTargetUserRemoved(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V

    .line 67
    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->view:Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;

    invoke-interface {p1, v0}, Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;->onExceedMaxTargetUserCount(I)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->removeTargetUser(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->asyncTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    const/4 v2, 0x1

    .line 82
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeTargetUser(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->targetUserList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->view:Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;

    invoke-interface {v0, p1}, Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;->onTargetUserRemoved(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V

    return-void
.end method

.method public sendMessage(Lcom/linecorp/linesdk/message/MessageData;)V
    .locals 3

    .line 52
    new-instance v0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter$2;

    invoke-direct {v0, p0, p1}, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter$2;-><init>(Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;Lcom/linecorp/linesdk/message/MessageData;)V

    .line 55
    new-instance p1, Lcom/linecorp/linesdk/dialog/internal/SendMessageTask;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    iget-object v2, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->apiStatusListener:Lcom/linecorp/linesdk/dialog/internal/ApiStatusListener;

    invoke-direct {p1, v1, v0, v2}, Lcom/linecorp/linesdk/dialog/internal/SendMessageTask;-><init>(Lcom/linecorp/linesdk/api/LineApiClient;Ljava/util/List;Lcom/linecorp/linesdk/dialog/internal/ApiStatusListener;)V

    .line 56
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->asyncTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 57
    new-array v0, v0, [Ljava/util/List;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->targetUserList:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/linecorp/linesdk/dialog/internal/SendMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
