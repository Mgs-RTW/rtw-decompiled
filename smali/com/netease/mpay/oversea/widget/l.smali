.class public Lcom/netease/mpay/oversea/widget/l;
.super Ljava/lang/Object;
.source "NtSdkTagParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/widget/l$g;,
        Lcom/netease/mpay/oversea/widget/l$h;,
        Lcom/netease/mpay/oversea/widget/l$e;,
        Lcom/netease/mpay/oversea/widget/l$f;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<ntsdk (.*?)>(.*?)</ntsdk>"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/oversea/widget/l;->a:Ljava/util/regex/Pattern;

    const-string v0, "(\\w*)=\"(\\S*)\""

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/oversea/widget/l;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/widget/k;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/netease/mpay/oversea/widget/l;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 7
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 9
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 12
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 13
    new-instance v5, Lcom/netease/mpay/oversea/widget/k;

    invoke-direct {v5, v1}, Lcom/netease/mpay/oversea/widget/k;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_1
    new-instance v1, Lcom/netease/mpay/oversea/widget/k;

    invoke-direct {v1, v4, v3}, Lcom/netease/mpay/oversea/widget/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/l;->a(Lcom/netease/mpay/oversea/widget/k;)V

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 24
    new-instance v1, Lcom/netease/mpay/oversea/widget/k;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/widget/k;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method private static a(Lcom/netease/mpay/oversea/widget/k;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 26
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/widget/l;->b:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/netease/mpay/oversea/widget/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 29
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "scene"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x6

    goto :goto_2

    :sswitch_1
    const-string v1, "color"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x5

    goto :goto_2

    :sswitch_2
    const-string v1, "href"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x4

    goto :goto_2

    :sswitch_3
    const-string v1, "bold"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x3

    goto :goto_2

    :sswitch_4
    const-string v1, "underline"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x2

    goto :goto_2

    :sswitch_5
    const-string v3, "href_2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :sswitch_6
    const-string v1, "action"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    :goto_1
    const/4 v1, -0x1

    :cond_9
    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 41
    :pswitch_0
    iput-object v4, p0, Lcom/netease/mpay/oversea/widget/k;->j:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v1, "^0[xX]"

    const-string v2, "#"

    .line 44
    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/widget/k;->f:Ljava/lang/String;

    goto/16 :goto_0

    .line 45
    :pswitch_2
    iput-object v4, p0, Lcom/netease/mpay/oversea/widget/k;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 60
    :pswitch_3
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/mpay/oversea/widget/k;->h:Z

    goto/16 :goto_0

    .line 63
    :pswitch_4
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/mpay/oversea/widget/k;->i:Z

    goto/16 :goto_0

    .line 64
    :pswitch_5
    iput-object v4, p0, Lcom/netease/mpay/oversea/widget/k;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 73
    :pswitch_6
    iput-object v4, p0, Lcom/netease/mpay/oversea/widget/k;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_6
        -0x481213e2 -> :sswitch_5
        -0x3d363934 -> :sswitch_4
        0x2e3a85 -> :sswitch_3
        0x30ff2b -> :sswitch_2
        0x5a72f63 -> :sswitch_1
        0x683188c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/util/List;Lcom/netease/mpay/oversea/widget/l$f;Lcom/netease/mpay/oversea/widget/l$h;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/widget/k;",
            ">;",
            "Lcom/netease/mpay/oversea/widget/l$f;",
            "Lcom/netease/mpay/oversea/widget/l$h;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_11

    .line 74
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_4

    .line 75
    :cond_0
    iget-object v0, p2, Lcom/netease/mpay/oversea/widget/l$h;->a:Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    .line 77
    :cond_1
    iget-object p2, p2, Lcom/netease/mpay/oversea/widget/l$h;->b:Lcom/netease/mpay/oversea/widget/OnSpanClickListener;

    const-string v2, ""

    .line 78
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v2, Lcom/netease/mpay/oversea/widget/l$e;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/netease/mpay/oversea/widget/l$e;-><init>(Lcom/netease/mpay/oversea/widget/l$a;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 80
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/widget/k;

    .line 81
    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, v2, Lcom/netease/mpay/oversea/widget/k;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 82
    iget-boolean v5, v2, Lcom/netease/mpay/oversea/widget/k;->c:Z

    if-eqz v5, :cond_2

    .line 83
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_2
    iget-object v5, v2, Lcom/netease/mpay/oversea/widget/k;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 86
    iget-object v6, v2, Lcom/netease/mpay/oversea/widget/k;->f:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/16 v7, 0x21

    const/4 v8, 0x0

    if-nez v6, :cond_5

    if-eqz p1, :cond_3

    .line 89
    iget-object v6, v2, Lcom/netease/mpay/oversea/widget/k;->f:Ljava/lang/String;

    invoke-interface {p1, v6}, Lcom/netease/mpay/oversea/widget/l$f;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v3

    :goto_1
    if-nez v6, :cond_4

    .line 92
    iget-object v6, v2, Lcom/netease/mpay/oversea/widget/k;->f:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 94
    :cond_4
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v9, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4, v9, v8, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 96
    :cond_5
    iget-object v6, v2, Lcom/netease/mpay/oversea/widget/k;->g:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 97
    iget-object v6, v2, Lcom/netease/mpay/oversea/widget/k;->g:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const/4 v9, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x2

    sparse-switch v10, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v10, "urs_realname"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    const/4 v9, 0x3

    goto :goto_2

    :sswitch_1
    const-string v10, "ff_rules"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    const/4 v9, 0x2

    goto :goto_2

    :sswitch_2
    const-string v10, "realname"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    const/4 v9, 0x1

    goto :goto_2

    :sswitch_3
    const-string v10, "outlink"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_d

    if-eq v9, v1, :cond_c

    if-eq v9, v12, :cond_b

    if-eq v9, v11, :cond_a

    goto :goto_3

    .line 130
    :cond_a
    new-instance v6, Lcom/netease/mpay/oversea/widget/l$c;

    invoke-direct {v6, p2, v4}, Lcom/netease/mpay/oversea/widget/l$c;-><init>(Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Landroid/text/SpannableString;)V

    invoke-virtual {v4, v6, v8, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 131
    :cond_b
    new-instance v6, Lcom/netease/mpay/oversea/widget/l$b;

    invoke-direct {v6, p2, v4}, Lcom/netease/mpay/oversea/widget/l$b;-><init>(Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Landroid/text/SpannableString;)V

    invoke-virtual {v4, v6, v8, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 132
    :cond_c
    new-instance v6, Lcom/netease/mpay/oversea/widget/l$a;

    invoke-direct {v6, p2}, Lcom/netease/mpay/oversea/widget/l$a;-><init>(Lcom/netease/mpay/oversea/widget/OnSpanClickListener;)V

    invoke-virtual {v4, v6, v8, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 178
    :cond_d
    new-instance v6, Lcom/netease/mpay/oversea/widget/l$d;

    invoke-direct {v6, p2, v2, v4}, Lcom/netease/mpay/oversea/widget/l$d;-><init>(Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Lcom/netease/mpay/oversea/widget/k;Landroid/text/SpannableString;)V

    invoke-virtual {v4, v6, v8, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 197
    :cond_e
    :goto_3
    iget-boolean v6, v2, Lcom/netease/mpay/oversea/widget/k;->h:Z

    if-eqz v6, :cond_f

    .line 198
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4, v6, v8, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 200
    :cond_f
    iget-boolean v2, v2, Lcom/netease/mpay/oversea/widget/k;->i:Z

    if-eqz v2, :cond_10

    .line 201
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v4, v2, v8, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 203
    :cond_10
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_11
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x41eff7b8 -> :sswitch_3
        -0x33392ad7 -> :sswitch_2
        0x200d28b8 -> :sswitch_1
        0x613205d2 -> :sswitch_0
    .end sparse-switch
.end method
