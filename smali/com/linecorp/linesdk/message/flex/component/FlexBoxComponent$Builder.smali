.class public final Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;
.super Ljava/lang/Object;
.source "FlexBoxComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private action:Lcom/linecorp/linesdk/message/flex/action/Action;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private contents:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;",
            ">;"
        }
    .end annotation
.end field

.field private flex:I

.field private layout:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Layout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private spacing:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Layout;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Layout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Layout;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;",
            ">;)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->flex:I

    .line 141
    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->layout:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Layout;

    .line 142
    iput-object p2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->contents:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Layout;Ljava/util/List;Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$1;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Layout;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Layout;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->layout:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Layout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;)Ljava/util/List;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->contents:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;)I
    .locals 0

    .line 121
    iget p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->flex:I

    return p0
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->spacing:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    return-object p0
.end method

.method static synthetic access$400(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    return-object p0
.end method

.method static synthetic access$500(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;)Lcom/linecorp/linesdk/message/flex/action/Action;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;
    .locals 2

    .line 195
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$1;)V

    return-object v0
.end method

.method public setAction(Lcom/linecorp/linesdk/message/flex/action/Action;)Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/flex/action/Action;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 185
    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    return-object p0
.end method

.method public setFlex(I)Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;
    .locals 0

    .line 152
    iput p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->flex:I

    return-object p0
.end method

.method public setMargin(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;)Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 174
    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    return-object p0
.end method

.method public setSpacing(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;)Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 163
    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->spacing:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    return-object p0
.end method
