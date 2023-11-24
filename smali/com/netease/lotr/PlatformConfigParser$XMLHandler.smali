.class Lcom/netease/lotr/PlatformConfigParser$XMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PlatformConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lotr/PlatformConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XMLHandler"
.end annotation


# static fields
.field public static final AND:I = 0x1

.field public static final OR:I = 0x2

.field public static final UNKNOWN:I


# instance fields
.field private m_condition:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_condition_group:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_config:Ljava/lang/String;

.field private m_option:Z

.field private m_options:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_variables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/lotr/PlatformConfigParser$Variable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netease/lotr/PlatformConfigParser;


# direct methods
.method public constructor <init>(Lcom/netease/lotr/PlatformConfigParser;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/lotr/PlatformConfigParser$Variable;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->this$0:Lcom/netease/lotr/PlatformConfigParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 198
    iput-object p2, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_variables:Ljava/util/HashMap;

    .line 199
    iput-object p3, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_options:Ljava/util/HashMap;

    .line 200
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    .line 201
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    const/4 p1, 0x0

    .line 202
    iput-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    const/4 p1, 0x0

    .line 203
    iput-boolean p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_option:Z

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "Config"

    .line 267
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_options:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    iget-boolean p3, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_option:Z

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 270
    iput-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "ConditionGroup"

    .line 272
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 274
    iget-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 275
    iget-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 276
    iget-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 278
    iget-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    .line 281
    iget-boolean p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_option:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    iput-boolean p2, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_option:Z

    goto :goto_0

    .line 285
    :cond_2
    iget-boolean p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_option:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p2, 0x1

    :cond_4
    iput-boolean p2, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_option:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "Config"

    .line 210
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 213
    iget-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    const-string p1, "name"

    .line 214
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    const-string p1, "ConditionGroup"

    .line 216
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const-string p1, "type"

    .line 218
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "and"

    .line 220
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 223
    iput-boolean v0, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_option:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 228
    iput-boolean p2, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_option:Z

    .line 230
    :goto_0
    iget-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    iget-boolean p2, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_option:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string p1, "Condition"

    .line 233
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 235
    iget-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 238
    iget-boolean p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_option:Z

    if-eqz p1, :cond_7

    const-string p1, "subject"

    .line 240
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "predicate"

    .line 241
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "object"

    .line 242
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 244
    iget-object v1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_variables:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/lotr/PlatformConfigParser$Variable;

    .line 245
    iget-boolean v1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_option:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1, p3, p4}, Lcom/netease/lotr/PlatformConfigParser$Variable;->evaluate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    iput-boolean p2, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_option:Z

    goto :goto_1

    .line 250
    :cond_4
    iget-boolean p1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_option:Z

    if-nez p1, :cond_7

    const-string p1, "subject"

    .line 252
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "predicate"

    .line 253
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "object"

    .line 254
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 256
    iget-object v1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_variables:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/lotr/PlatformConfigParser$Variable;

    .line 257
    iget-boolean v1, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_option:Z

    if-nez v1, :cond_5

    invoke-virtual {p1, p3, p4}, Lcom/netease/lotr/PlatformConfigParser$Variable;->evaluate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 p2, 0x1

    :cond_6
    iput-boolean p2, p0, Lcom/netease/lotr/PlatformConfigParser$XMLHandler;->m_option:Z

    :cond_7
    :goto_1
    return-void
.end method
