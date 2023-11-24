.class public abstract Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "OpenChatInfoFragmentBinding.java"


# instance fields
.field public final categoryDivider:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final categoryGuide:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final categoryLabelTextView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final categoryTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final descriptionDetail:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final descriptionDivider:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final descriptionEditText:Landroid/widget/EditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final descriptionMaxTextView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mViewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final nameDivider:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nameEditText:Landroid/widget/EditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nameMaxTextView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchDescription:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchIncludedCheckBox:Landroid/widget/CheckBox;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchIncludedContainer:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/CheckBox;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 78
    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->categoryDivider:Landroid/view/View;

    move-object v1, p5

    .line 79
    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->categoryGuide:Landroid/widget/TextView;

    move-object v1, p6

    .line 80
    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->categoryLabelTextView:Landroid/widget/TextView;

    move-object v1, p7

    .line 81
    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->categoryTitle:Landroid/widget/TextView;

    move-object v1, p8

    .line 82
    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->descriptionDetail:Landroid/widget/TextView;

    move-object v1, p9

    .line 83
    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->descriptionDivider:Landroid/view/View;

    move-object v1, p10

    .line 84
    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->descriptionEditText:Landroid/widget/EditText;

    move-object v1, p11

    .line 85
    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->descriptionMaxTextView:Landroid/widget/TextView;

    move-object v1, p12

    .line 86
    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->nameDivider:Landroid/view/View;

    move-object v1, p13

    .line 87
    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->nameEditText:Landroid/widget/EditText;

    move-object/from16 v1, p14

    .line 88
    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->nameMaxTextView:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 89
    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->searchDescription:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 90
    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->searchIncludedCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v1, p17

    .line 91
    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->searchIncludedContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p18

    .line 92
    iput-object v1, v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->searchTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 142
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    sget v0, Lcom/linecorp/linesdk/R$layout;->open_chat_info_fragment:I

    invoke-static {p1, p0, v0}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 124
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 105
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    sget v0, Lcom/linecorp/linesdk/R$layout;->open_chat_info_fragment:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    sget v0, Lcom/linecorp/linesdk/R$layout;->open_chat_info_fragment:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    return-object p0
.end method


# virtual methods
.method public getViewModel()Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->mViewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    return-object v0
.end method

.method public abstract setViewModel(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)V
    .param p1    # Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
