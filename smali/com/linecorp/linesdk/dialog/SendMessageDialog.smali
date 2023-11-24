.class public Lcom/linecorp/linesdk/dialog/SendMessageDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "SendMessageDialog.java"

# interfaces
.implements Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/dialog/SendMessageDialog$OnSendListener;
    }
.end annotation


# instance fields
.field private buttonConfirm:Landroid/widget/Button;

.field private confirmClickListener:Landroid/view/View$OnClickListener;

.field private horizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private layoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private linearLayoutTargetUser:Landroid/widget/LinearLayout;

.field private messageData:Lcom/linecorp/linesdk/message/MessageData;

.field private onSendListener:Lcom/linecorp/linesdk/dialog/SendMessageDialog$OnSendListener;

.field private presenter:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

.field private sendMessageTargetAdapter:Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;

.field private tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private targetUserViewCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/linecorp/linesdk/api/LineApiClient;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/linecorp/linesdk/api/LineApiClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    sget v0, Lcom/linecorp/linesdk/R$style;->DialogTheme:I

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->targetUserViewCacheMap:Ljava/util/Map;

    .line 60
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 105
    new-instance v0, Lcom/linecorp/linesdk/dialog/-$$Lambda$SendMessageDialog$zyalWVmbOLUONdawwmtlhP_znS0;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/dialog/-$$Lambda$SendMessageDialog$zyalWVmbOLUONdawwmtlhP_znS0;-><init>(Lcom/linecorp/linesdk/dialog/SendMessageDialog;)V

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->confirmClickListener:Landroid/view/View$OnClickListener;

    .line 72
    new-instance v0, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

    invoke-direct {v0, p2, p0}, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;-><init>(Lcom/linecorp/linesdk/api/LineApiClient;Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;)V

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->presenter:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

    .line 73
    new-instance p2, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->presenter:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->presenter:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

    invoke-direct {p2, p1, v0, v1}, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;-><init>(Landroid/content/Context;Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;)V

    iput-object p2, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->sendMessageTargetAdapter:Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;

    return-void
.end method

.method private createUserThumbnailView(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 138
    new-instance v0, Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;

    invoke-virtual {p0}, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;-><init>(Landroid/content/Context;)V

    .line 139
    new-instance v1, Lcom/linecorp/linesdk/dialog/-$$Lambda$SendMessageDialog$lToui6wLBdshncF9W-8p0yZVPes;

    invoke-direct {v1, p0, p1}, Lcom/linecorp/linesdk/dialog/-$$Lambda$SendMessageDialog$lToui6wLBdshncF9W-8p0yZVPes;-><init>(Lcom/linecorp/linesdk/dialog/SendMessageDialog;Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V

    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;->setTargetUser(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V

    return-object v0
.end method

.method public static synthetic lambda$createUserThumbnailView$3(Lcom/linecorp/linesdk/dialog/SendMessageDialog;Lcom/linecorp/linesdk/dialog/internal/TargetUser;Landroid/view/View;)V
    .locals 0

    .line 139
    iget-object p2, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->presenter:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

    invoke-virtual {p2, p1}, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->removeTargetUser(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/linecorp/linesdk/dialog/SendMessageDialog;Landroid/view/View;)V
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->presenter:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->messageData:Lcom/linecorp/linesdk/message/MessageData;

    invoke-virtual {p1, v0}, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->sendMessage(Lcom/linecorp/linesdk/message/MessageData;)V

    return-void
.end method

.method public static synthetic lambda$onTargetUserAdded$2(Lcom/linecorp/linesdk/dialog/SendMessageDialog;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    return-void
.end method

.method public static synthetic lambda$setupUi$0(Lcom/linecorp/linesdk/dialog/SendMessageDialog;)V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private setupUi()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->sendMessageTargetAdapter:Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 94
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 96
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->buttonConfirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->confirmClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/linecorp/linesdk/dialog/-$$Lambda$SendMessageDialog$r34h8Cge1h-W0OqNFe6xr-8hSUU;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/dialog/-$$Lambda$SendMessageDialog$r34h8Cge1h-W0OqNFe6xr-8hSUU;-><init>(Lcom/linecorp/linesdk/dialog/SendMessageDialog;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateConfirmButtonLabel()V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->presenter:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->getTargetUserListSize()I

    move-result v0

    const v1, 0x104000a

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->buttonConfirm:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 203
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->buttonConfirm:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 205
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->buttonConfirm:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->buttonConfirm:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->presenter:Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/dialog/internal/SendMessagePresenter;->release()V

    .line 112
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/linecorp/linesdk/R$layout;->dialog_send_message:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->setContentView(Landroid/view/View;)V

    .line 83
    sget v0, Lcom/linecorp/linesdk/R$id;->viewPager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 84
    sget v0, Lcom/linecorp/linesdk/R$id;->tabLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 85
    sget v0, Lcom/linecorp/linesdk/R$id;->buttonConfirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->buttonConfirm:Landroid/widget/Button;

    .line 86
    sget v0, Lcom/linecorp/linesdk/R$id;->linearLayoutTargetUserList:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->linearLayoutTargetUser:Landroid/widget/LinearLayout;

    .line 87
    sget v0, Lcom/linecorp/linesdk/R$id;->horizontalScrollView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 89
    invoke-direct {p0}, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->setupUi()V

    return-void
.end method

.method public onExceedMaxTargetUserCount(I)V
    .locals 0

    return-void
.end method

.method public onSendMessageFailure()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->onSendListener:Lcom/linecorp/linesdk/dialog/SendMessageDialog$OnSendListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->onSendListener:Lcom/linecorp/linesdk/dialog/SendMessageDialog$OnSendListener;

    invoke-interface {v0, p0}, Lcom/linecorp/linesdk/dialog/SendMessageDialog$OnSendListener;->onSendFailure(Landroid/content/DialogInterface;)V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->dismiss()V

    return-void
.end method

.method public onSendMessageSuccess()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->onSendListener:Lcom/linecorp/linesdk/dialog/SendMessageDialog$OnSendListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->onSendListener:Lcom/linecorp/linesdk/dialog/SendMessageDialog$OnSendListener;

    invoke-interface {v0, p0}, Lcom/linecorp/linesdk/dialog/SendMessageDialog$OnSendListener;->onSendSuccess(Landroid/content/DialogInterface;)V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->dismiss()V

    return-void
.end method

.method public onTargetUserAdded(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->targetUserViewCacheMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->targetUserViewCacheMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->createUserThumbnailView(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)Lcom/linecorp/linesdk/dialog/internal/UserThumbnailView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->targetUserViewCacheMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->linearLayoutTargetUser:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v0, Lcom/linecorp/linesdk/dialog/-$$Lambda$SendMessageDialog$N4TFEczizVl-d6-md45t6YjmEpg;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/dialog/-$$Lambda$SendMessageDialog$N4TFEczizVl-d6-md45t6YjmEpg;-><init>(Lcom/linecorp/linesdk/dialog/SendMessageDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 133
    invoke-direct {p0}, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->updateConfirmButtonLabel()V

    return-void
.end method

.method public onTargetUserRemoved(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->targetUserViewCacheMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 118
    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->linearLayoutTargetUser:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->sendMessageTargetAdapter:Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;->unSelect(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V

    .line 120
    invoke-direct {p0}, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->updateConfirmButtonLabel()V

    return-void
.end method

.method public setMessageData(Lcom/linecorp/linesdk/message/MessageData;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->messageData:Lcom/linecorp/linesdk/message/MessageData;

    return-void
.end method

.method public setOnSendListener(Lcom/linecorp/linesdk/dialog/SendMessageDialog$OnSendListener;)V
    .locals 1
    .param p1    # Lcom/linecorp/linesdk/dialog/SendMessageDialog$OnSendListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 170
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->onSendListener:Lcom/linecorp/linesdk/dialog/SendMessageDialog$OnSendListener;

    if-nez v0, :cond_0

    .line 174
    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->onSendListener:Lcom/linecorp/linesdk/dialog/SendMessageDialog$OnSendListener;

    return-void

    .line 171
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OnSendListener is already taken and can not be replaced."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
