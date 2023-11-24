.class public Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SendMessageTargetPagerAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

.field private presenter:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

.field private viewHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;",
            "Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->viewHashMap:Ljava/util/HashMap;

    .line 23
    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->presenter:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

    .line 25
    iput-object p3, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->listener:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 30
    invoke-static {}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getTargetTypeCount()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 66
    sget-object v0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter$1;->$SwitchMap$com$linecorp$linesdk$dialog$internal$TargetUser$Type:[I

    invoke-static {}, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->values()[Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    return-object p1

    .line 70
    :pswitch_0
    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->context:Landroid/content/Context;

    sget v0, Lcom/linecorp/linesdk/R$string;->select_tab_groups:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :pswitch_1
    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->context:Landroid/content/Context;

    sget v0, Lcom/linecorp/linesdk/R$string;->select_tab_friends:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-static {}, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->values()[Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    move-result-object v0

    aget-object p2, v0, p2

    .line 43
    sget-object v0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter$1;->$SwitchMap$com$linecorp$linesdk$dialog$internal$TargetUser$Type:[I

    invoke-virtual {p2}, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 50
    :pswitch_0
    new-instance v0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/linecorp/linesdk/R$string;->search_no_group:I

    iget-object v3, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->listener:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;-><init>(Landroid/content/Context;ILcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;)V

    .line 51
    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->presenter:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/linecorp/linesdk/dialog/internal/-$$Lambda$TXfL9guFdnV6dbatQ8eyj75uAgI;

    invoke-direct {v2, v0}, Lcom/linecorp/linesdk/dialog/internal/-$$Lambda$TXfL9guFdnV6dbatQ8eyj75uAgI;-><init>(Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;)V

    invoke-virtual {v1, v2}, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->getGroups(Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;)V

    goto :goto_0

    .line 45
    :pswitch_1
    new-instance v0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/linecorp/linesdk/R$string;->search_no_fiend:I

    iget-object v3, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->listener:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;-><init>(Landroid/content/Context;ILcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;)V

    .line 46
    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->presenter:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/linecorp/linesdk/dialog/internal/-$$Lambda$TXfL9guFdnV6dbatQ8eyj75uAgI;

    invoke-direct {v2, v0}, Lcom/linecorp/linesdk/dialog/internal/-$$Lambda$TXfL9guFdnV6dbatQ8eyj75uAgI;-><init>(Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;)V

    invoke-virtual {v1, v2}, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->getFriends(Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;)V

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->viewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public unSelect(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V
    .locals 2

    .line 77
    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getType()Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->viewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->unSelect(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V

    return-void
.end method
