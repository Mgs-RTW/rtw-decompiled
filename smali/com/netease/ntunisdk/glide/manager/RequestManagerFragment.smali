.class public Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;
.super Landroid/app/Fragment;
.source "RequestManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RMFragment"


# instance fields
.field private final childRequestManagerFragments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycle:Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;

.field private parentFragmentHint:Landroid/app/Fragment;

.field private requestManager:Lcom/netease/ntunisdk/glide/RequestManager;

.field private final requestManagerTreeNode:Lcom/netease/ntunisdk/glide/manager/RequestManagerTreeNode;

.field private rootRequestManagerFragment:Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;-><init>()V

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;-><init>(Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;)V

    return-void
.end method

.method constructor <init>(Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 34
    new-instance v0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;-><init>(Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->requestManagerTreeNode:Lcom/netease/ntunisdk/glide/manager/RequestManagerTreeNode;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/Set;

    .line 55
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->lifecycle:Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;

    return-void
.end method

.method private addChildRequestManagerFragment(Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getParentFragmentUsingHint()Landroid/app/Fragment;
    .locals 2

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->parentFragmentHint:Landroid/app/Fragment;

    :goto_1
    return-object v0
.end method

.method private isDescendant(Landroid/app/Fragment;)Z
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 150
    :goto_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private registerFragmentWithRoot(Landroid/app/Activity;)V
    .locals 1

    .line 161
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->unregisterFragmentWithRoot()V

    .line 163
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/Glide;->get(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/Glide;->getRequestManagerRetriever()Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;->getRequestManagerFragment(Landroid/app/Activity;)Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;

    .line 164
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->addChildRequestManagerFragment(Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;)V

    :cond_0
    return-void
.end method

.method private removeChildRequestManagerFragment(Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private unregisterFragmentWithRoot()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->removeChildRequestManagerFragment(Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;)V

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;

    :cond_0
    return-void
.end method


# virtual methods
.method getDescendantRequestManagerFragments()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->getDescendantRequestManagerFragments()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;

    .line 114
    invoke-virtual {v2}, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->isDescendant(Landroid/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 109
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getGlideLifecycle()Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->lifecycle:Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;

    return-object v0
.end method

.method public getRequestManager()Lcom/netease/ntunisdk/glide/RequestManager;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->requestManager:Lcom/netease/ntunisdk/glide/RequestManager;

    return-object v0
.end method

.method public getRequestManagerTreeNode()Lcom/netease/ntunisdk/glide/manager/RequestManagerTreeNode;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->requestManagerTreeNode:Lcom/netease/ntunisdk/glide/manager/RequestManagerTreeNode;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 179
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 181
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->registerFragmentWithRoot(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x5

    const-string v1, "RMFragment"

    .line 184
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to register fragment with root"

    .line 185
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 210
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 211
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->lifecycle:Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;->onDestroy()V

    .line 212
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->unregisterFragmentWithRoot()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 192
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 193
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->unregisterFragmentWithRoot()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 198
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 199
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->lifecycle:Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 204
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 205
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->lifecycle:Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;->onStop()V

    return-void
.end method

.method setParentFragmentHint(Landroid/app/Fragment;)V
    .locals 1

    .line 127
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->parentFragmentHint:Landroid/app/Fragment;

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->registerFragmentWithRoot(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public setRequestManager(Lcom/netease/ntunisdk/glide/RequestManager;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->requestManager:Lcom/netease/ntunisdk/glide/RequestManager;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerFragment;->getParentFragmentUsingHint()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
