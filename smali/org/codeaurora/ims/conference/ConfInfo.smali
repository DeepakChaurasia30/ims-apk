.class public Lorg/codeaurora/ims/conference/ConfInfo;
.super Ljava/lang/Object;
.source "ConfInfo.java"


# static fields
.field public static final INDEX_DISPLAY_TEXT:I = 0x1

.field public static final INDEX_ENDPOINT:I = 0x2

.field public static final INDEX_STATUS:I = 0x3

.field public static final INDEX_USER:I = 0x0

.field public static final MAX_CONF_PARTICIPANT_INFO:I = 0x4

.field private static sHandler:Lorg/codeaurora/ims/conference/SAXXMLHandler;


# instance fields
.field public LOGTAG:Ljava/lang/String;

.field private final STATE_DELETE:I

.field private final STATE_FULL:I

.field private final STATE_PARTIAL:I

.field private final VERSION_EQUAL:I

.field private final VERSION_GREATER:I

.field private final VERSION_INVALID:I

.field private final VERSION_lESSER:I

.field public allowedPartial:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private debug:Z

.field public mCachedElement:Lorg/codeaurora/ims/conference/Element;

.field public mNewElement:Lorg/codeaurora/ims/conference/Element;

.field mSelfUserEntity:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lorg/codeaurora/ims/conference/ConfInfo;->VERSION_INVALID:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->VERSION_EQUAL:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->VERSION_GREATER:I

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->VERSION_lESSER:I

    .line 36
    const/4 v0, 0x4

    iput v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->STATE_FULL:I

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->STATE_PARTIAL:I

    .line 38
    const/4 v0, 0x6

    iput v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->STATE_DELETE:I

    .line 39
    const-string v0, "ConfInfo"

    iput-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->LOGTAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    .line 41
    iput-boolean v1, p0, Lorg/codeaurora/ims/conference/ConfInfo;->debug:Z

    .line 61
    new-instance v0, Lorg/codeaurora/ims/conference/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/conference/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    .line 62
    invoke-direct {p0}, Lorg/codeaurora/ims/conference/ConfInfo;->setMapAttributeWithDefaultValue()V

    .line 63
    new-instance v0, Lorg/codeaurora/ims/conference/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/conference/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mNewElement:Lorg/codeaurora/ims/conference/Element;

    .line 64
    invoke-direct {p0}, Lorg/codeaurora/ims/conference/ConfInfo;->preparePartialList()V

    .line 65
    return-void
.end method

.method private UpdateConfDesElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 568
    sget-object v0, Lorg/codeaurora/ims/conference/ConfInfo;->sHandler:Lorg/codeaurora/ims/conference/SAXXMLHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/conference/SAXXMLHandler;->getConferenceDescElement()Lorg/codeaurora/ims/conference/Element;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/conference/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method private UpdateConfInfoElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 564
    sget-object v0, Lorg/codeaurora/ims/conference/ConfInfo;->sHandler:Lorg/codeaurora/ims/conference/SAXXMLHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/conference/SAXXMLHandler;->getConferenceInfoLatestMessage()Lorg/codeaurora/ims/conference/Element;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/conference/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method private checkElementState(Lorg/codeaurora/ims/conference/Element;)Ljava/lang/String;
    .locals 4
    .param p1, "element"    # Lorg/codeaurora/ims/conference/Element;

    .prologue
    .line 506
    const-string v1, "full"

    .line 508
    .local v1, "resultantState":Ljava/lang/String;
    const-string v2, "state"

    invoke-virtual {p1, v2}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "elementState":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 510
    move-object v1, v0

    .line 512
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification state is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " element state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 513
    return-object v1
.end method

.method private compareElements(Lorg/codeaurora/ims/conference/Element;)Z
    .locals 4
    .param p1, "lhs"    # Lorg/codeaurora/ims/conference/Element;

    .prologue
    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "index":I
    const/4 v1, 0x0

    .line 574
    .local v1, "lindex":I
    invoke-virtual {p1}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/conference/Element;->getParentTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/conference/Element;->getParentTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    invoke-virtual {p1}, Lorg/codeaurora/ims/conference/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/conference/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 586
    invoke-virtual {p1}, Lorg/codeaurora/ims/conference/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/conference/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 588
    const/4 v2, 0x1

    .line 591
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->debug:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->LOGTAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    return-void
.end method

.method private dumpstate()V
    .locals 7

    .prologue
    .line 97
    iget-object v5, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v5}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object v4

    .line 98
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    if-eqz v4, :cond_2

    .line 99
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 100
    .local v2, "length":I
    iget-object v5, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v5}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sublist length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SubElement list Element at Index"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v5}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 105
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v5}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 106
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v5}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 107
    .local v3, "length2":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SubElement List Length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 108
    const/4 v1, 0x0

    .local v1, "index2":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SubElement List Length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v5}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v5}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    .end local v1    # "index2":I
    .end local v3    # "length2":I
    :cond_0
    const-string v5, "List two is null"

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 102
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 118
    .end local v0    # "index":I
    .end local v2    # "length":I
    :cond_2
    const-string v5, "List one is null"

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 120
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/conference/ConfInfo;->getUserUriList()[Ljava/lang/String;

    .line 121
    return-void
.end method

.method private getConfStateValue()I
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x1

    return v0
.end method

.method private getElementIndexOnKeyMatch(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;Ljava/lang/String;)I
    .locals 5
    .param p2, "source"    # Lorg/codeaurora/ims/conference/Element;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/conference/Element;",
            ">;",
            "Lorg/codeaurora/ims/conference/Element;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 237
    .local v1, "length":I
    const/4 v2, -0x1

    .line 238
    .local v2, "ret":I
    invoke-virtual {p2, p3}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 241
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v4, p3}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    move v2, v0

    .line 247
    .end local v0    # "i":I
    :cond_0
    return v2

    .line 240
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getElementIndexOnTagMatch(Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/conference/Element;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 487
    .local p1, "aList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    const/4 v1, -0x1

    .line 488
    .local v1, "iIndex":I
    if-eqz p1, :cond_0

    .line 489
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 490
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 491
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 492
    move v1, v0

    .line 497
    .end local v0    # "i":I
    .end local v2    # "length":I
    :cond_0
    return v1

    .line 490
    .restart local v0    # "i":I
    .restart local v2    # "length":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getKey(Lorg/codeaurora/ims/conference/Element;)Ljava/lang/String;
    .locals 3
    .param p1, "element"    # Lorg/codeaurora/ims/conference/Element;

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "ret":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "tag":Ljava/lang/String;
    const-string v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "endpoint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "entry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    :cond_0
    const-string v0, "entity"

    .line 284
    :goto_0
    return-object v0

    .line 277
    :cond_1
    const-string v2, "media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    const-string v0, "id"

    goto :goto_0

    .line 279
    :cond_2
    const-string v2, "sidebars-by-ref"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    const-string v0, "uri"

    goto :goto_0

    .line 282
    :cond_3
    const-string v2, " :Is not supported"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getParticipantInfoFromElement(Lorg/codeaurora/ims/conference/Element;)[Ljava/lang/String;
    .locals 6
    .param p1, "e"    # Lorg/codeaurora/ims/conference/Element;

    .prologue
    .line 206
    const/4 v3, 0x4

    new-array v1, v3, [Ljava/lang/String;

    .line 209
    .local v1, "participantInfo":[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "entity"

    invoke-virtual {p1, v4}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 212
    const/4 v3, 0x1

    const-string v4, "display-text"

    invoke-virtual {p1, v4}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 214
    invoke-virtual {p1}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object v2

    .line 215
    .local v2, "userSubElements":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subElement["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 217
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "endpoint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    const/4 v4, 0x2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/conference/Element;

    const-string v5, "entity"

    invoke-virtual {v3, v5}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 222
    const/4 v4, 0x3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/conference/Element;

    const-string v5, "status"

    invoke-virtual {v3, v5}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_1
    return-object v1
.end method

.method private handleNotificationOnSubElements(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/conference/Element;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/conference/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "mNewSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    .local p2, "mOldSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    const/4 v6, 0x0

    .line 406
    .local v6, "newSubElement":Lorg/codeaurora/ims/conference/Element;
    const/4 v1, -0x1

    .line 408
    .local v1, "iIndex":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 409
    .local v5, "newListLength":I
    const-string v8, "updateNotification : HandlePartialNotification"

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 410
    const/4 v0, 0x0

    .local v0, "elementIndex":I
    :goto_0
    if-ge v0, v5, :cond_5

    .line 411
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "newSubElement":Lorg/codeaurora/ims/conference/Element;
    check-cast v6, Lorg/codeaurora/ims/conference/Element;

    .line 412
    .restart local v6    # "newSubElement":Lorg/codeaurora/ims/conference/Element;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New List :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "at index : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "tag name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 415
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Old Element List :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v6}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->isPartialAllowed(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 417
    invoke-direct {p0, v6}, Lorg/codeaurora/ims/conference/ConfInfo;->getKey(Lorg/codeaurora/ims/conference/Element;)Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 419
    const-string v8, "Key is not null"

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 420
    invoke-direct {p0, p2, v6, v2}, Lorg/codeaurora/ims/conference/ConfInfo;->getElementIndexOnKeyMatch(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;Ljava/lang/String;)I

    move-result v1

    .line 422
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateNotification : HandlePartialNotification elementIndex : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 425
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Old element index Index value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 426
    const/4 v8, 0x0

    invoke-direct {p0, p2, v8, v6, v1}, Lorg/codeaurora/ims/conference/ConfInfo;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;Lorg/codeaurora/ims/conference/Element;I)V

    .line 410
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 429
    .restart local v2    # "key":Ljava/lang/String;
    :cond_1
    const-string v8, "key is null"

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v6}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p2, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->getElementIndexOnTagMatch(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 432
    if-gez v1, :cond_2

    .line 433
    const-string v8, "element is not found after doing Index on key match"

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 435
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codeaurora/ims/conference/Element;

    .line 436
    .local v7, "tempelement":Lorg/codeaurora/ims/conference/Element;
    invoke-virtual {v7}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object v4

    .line 437
    .local v4, "mOldList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    invoke-virtual {v6}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object v3

    .line 438
    .local v3, "mNewList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 439
    invoke-direct {p0, v3, v4}, Lorg/codeaurora/ims/conference/ConfInfo;->handleNotificationOnSubElements(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 443
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "mNewList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    .end local v4    # "mOldList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    .end local v7    # "tempelement":Lorg/codeaurora/ims/conference/Element;
    :cond_3
    const-string v8, "Tag not valid for Partial Notification"

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v6}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p2, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->getElementIndexOnTagMatch(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 446
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newSubElement Tag Name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 447
    if-ltz v1, :cond_4

    .line 448
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codeaurora/ims/conference/Element;

    .line 449
    .restart local v7    # "tempelement":Lorg/codeaurora/ims/conference/Element;
    invoke-direct {p0, p2, v7, v6, v1}, Lorg/codeaurora/ims/conference/ConfInfo;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;Lorg/codeaurora/ims/conference/Element;I)V

    goto :goto_1

    .line 452
    .end local v7    # "tempelement":Lorg/codeaurora/ims/conference/Element;
    :cond_4
    const-string v8, "May be tags are not at same level checking it by reindexing one level up"

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 453
    if-eqz p2, :cond_0

    .line 454
    invoke-direct {p0, p2, v6}, Lorg/codeaurora/ims/conference/ConfInfo;->reIndexOldElementList(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;)Ljava/util/List;

    .line 455
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codeaurora/ims/conference/Element;

    .line 456
    .restart local v7    # "tempelement":Lorg/codeaurora/ims/conference/Element;
    invoke-direct {p0, p2, v7, v6, v1}, Lorg/codeaurora/ims/conference/ConfInfo;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;Lorg/codeaurora/ims/conference/Element;I)V

    goto/16 :goto_1

    .line 462
    .end local v7    # "tempelement":Lorg/codeaurora/ims/conference/Element;
    :cond_5
    return-void
.end method

.method private isPartialAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tagname"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->LOGTAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method private preparePartialList()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "conference-info"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "users"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "endpoint"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "sidebars-by-val"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "sidebars-by-ref"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method private reIndexOldElementList(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;)Ljava/util/List;
    .locals 4
    .param p2, "newSubElement"    # Lorg/codeaurora/ims/conference/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/conference/Element;",
            ">;",
            "Lorg/codeaurora/ims/conference/Element;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/conference/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    .local p1, "mOldSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    if-eqz p1, :cond_1

    .line 471
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 472
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/conference/Element;

    .line 473
    .local v1, "temp":Lorg/codeaurora/ims/conference/Element;
    invoke-virtual {v1}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Old Element List item at Index["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v1}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object p1

    .line 471
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    .end local v0    # "index":I
    .end local v1    # "temp":Lorg/codeaurora/ims/conference/Element;
    :cond_1
    const-string v2, "old element list is null"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 483
    :cond_2
    return-object p1
.end method

.method private setMapAttributeWithDefaultValue()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/conference/Element;->setMapAttribute()V

    .line 69
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/conference/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v0

    const-string v1, "version"

    const-string v2, "NotApplicable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public static setSAXHandler(Lorg/codeaurora/ims/conference/SAXXMLHandler;)V
    .locals 0
    .param p0, "handler"    # Lorg/codeaurora/ims/conference/SAXXMLHandler;

    .prologue
    .line 73
    sput-object p0, Lorg/codeaurora/ims/conference/ConfInfo;->sHandler:Lorg/codeaurora/ims/conference/SAXXMLHandler;

    .line 74
    return-void
.end method

.method private updateAttributeList(Lorg/codeaurora/ims/conference/Element;Lorg/codeaurora/ims/conference/Element;)V
    .locals 5
    .param p1, "cachedElement"    # Lorg/codeaurora/ims/conference/Element;
    .param p2, "newElement"    # Lorg/codeaurora/ims/conference/Element;

    .prologue
    .line 256
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {p2}, Lorg/codeaurora/ims/conference/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 258
    .local v3, "newElementTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 259
    .local v2, "mappedKeys":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 260
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lorg/codeaurora/ims/conference/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateNotification(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;Lorg/codeaurora/ims/conference/Element;I)V
    .locals 9
    .param p2, "oldElement"    # Lorg/codeaurora/ims/conference/Element;
    .param p3, "newElement"    # Lorg/codeaurora/ims/conference/Element;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/conference/Element;",
            ">;",
            "Lorg/codeaurora/ims/conference/Element;",
            "Lorg/codeaurora/ims/conference/Element;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "oldList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UpdateNotification args OldList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", OldElement: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", NewElement: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 319
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCachedElement element: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 321
    :try_start_0
    invoke-direct {p0, p3}, Lorg/codeaurora/ims/conference/ConfInfo;->checkElementState(Lorg/codeaurora/ims/conference/Element;)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "latestState":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "newTagName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 324
    .local v6, "oldTagName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 325
    invoke-virtual {p2}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    .line 326
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Old Element Tag name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 327
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New Element Tag name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 331
    const-string v7, "full"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 332
    if-nez p1, :cond_2

    .line 333
    const-string v7, "Root Element is replced with Full state"

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 334
    iput-object p3, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 395
    .end local v2    # "latestState":Ljava/lang/String;
    .end local v4    # "newTagName":Ljava/lang/String;
    .end local v6    # "oldTagName":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v7, "updateNotification : comming out"

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 396
    return-void

    .line 336
    .restart local v2    # "latestState":Ljava/lang/String;
    .restart local v4    # "newTagName":Ljava/lang/String;
    .restart local v6    # "oldTagName":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_1

    .line 338
    if-gez p4, :cond_3

    .line 339
    :try_start_1
    const-string v7, "adding new Element with Full state"

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 340
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 388
    .end local v2    # "latestState":Ljava/lang/String;
    .end local v4    # "newTagName":Ljava/lang/String;
    .end local v6    # "oldTagName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 389
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v7, "Null Pointer Exception in UpdateNotification"

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 342
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    .restart local v2    # "latestState":Ljava/lang/String;
    .restart local v4    # "newTagName":Ljava/lang/String;
    .restart local v6    # "oldTagName":Ljava/lang/String;
    :cond_3
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "replacing Element with Full state with parentTag"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Lorg/codeaurora/ims/conference/Element;->getParentTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Index :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 344
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 391
    .end local v2    # "latestState":Ljava/lang/String;
    .end local v4    # "newTagName":Ljava/lang/String;
    .end local v6    # "oldTagName":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 392
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "Indexout of bound exception in UpdateNotification"

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 349
    .end local v1    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "latestState":Ljava/lang/String;
    .restart local v4    # "newTagName":Ljava/lang/String;
    .restart local v6    # "oldTagName":Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v7, "partial"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 350
    const-string v7, "updateNotification: partial state"

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 353
    :try_start_4
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/conference/ConfInfo;->isPartialAllowed(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 354
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Partial Notification state is supported to this element"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p3}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object v3

    .line 357
    .local v3, "mNewSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    if-eqz p1, :cond_5

    .line 363
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lorg/codeaurora/ims/conference/Element;

    move-object p2, v0

    .line 365
    :cond_5
    invoke-virtual {p2}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object v5

    .line 367
    .local v5, "oldSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Old Element Tag name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 368
    invoke-direct {p0, p2, p3}, Lorg/codeaurora/ims/conference/ConfInfo;->updateAttributeList(Lorg/codeaurora/ims/conference/Element;Lorg/codeaurora/ims/conference/Element;)V

    .line 369
    if-nez v5, :cond_6

    .line 370
    invoke-direct {p0, v5, p3}, Lorg/codeaurora/ims/conference/ConfInfo;->reIndexOldElementList(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;)Ljava/util/List;

    move-result-object v5

    .line 373
    :cond_6
    invoke-direct {p0, v3, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->handleNotificationOnSubElements(Ljava/util/List;Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 376
    .end local v3    # "mNewSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    .end local v5    # "oldSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    :catch_2
    move-exception v1

    .line 377
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_5
    const-string v7, "Exception in handlePatialNotification "

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 380
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_7
    const-string v7, "deleted"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 381
    const-string v7, "updateNotification Deleting Element"

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 382
    const-string v7, "conference-info"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 383
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 385
    :cond_8
    iget-object v7, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v7}, Lorg/codeaurora/ims/conference/Element;->ClearAll()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0
.end method


# virtual methods
.method public UpdateConfInfoAllElement(Lorg/codeaurora/ims/conference/Element;)V
    .locals 0
    .param p1, "element"    # Lorg/codeaurora/ims/conference/Element;

    .prologue
    .line 560
    iput-object p1, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    .line 561
    return-void
.end method

.method public UpdateConfState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 556
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/conference/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public UpdateConfState(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, "parent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "state"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    return-void
.end method

.method public UpdateLocalVersionNumber(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 535
    .local p1, "parent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "version"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    const-string v0, "version"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    const-string v0, "version"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_0
    const-string v0, "version"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    return-void
.end method

.method public clearAndSetDefault()V
    .locals 0

    .prologue
    .line 603
    invoke-virtual {p0}, Lorg/codeaurora/ims/conference/ConfInfo;->dispose()V

    .line 604
    invoke-direct {p0}, Lorg/codeaurora/ims/conference/ConfInfo;->setMapAttributeWithDefaultValue()V

    .line 605
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/conference/Element;->ClearAll()V

    .line 597
    :cond_0
    invoke-static {}, Lorg/codeaurora/ims/conference/Element;->clearMatchedElementsList()V

    .line 598
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mNewElement:Lorg/codeaurora/ims/conference/Element;

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mNewElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/conference/Element;->ClearAll()V

    .line 600
    :cond_1
    return-void
.end method

.method public getConfUriList()Landroid/telephony/ims/ImsConferenceState;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 157
    iget-object v7, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    if-eqz v7, :cond_2

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCachedElement reference "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 159
    iget-object v7, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    const-string v8, "version"

    invoke-virtual {v7, v8}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "version":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "version string is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 161
    if-eqz v6, :cond_3

    const-string v7, "NotApplicable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 163
    invoke-static {}, Lorg/codeaurora/ims/conference/Element;->clearMatchedElementsList()V

    .line 164
    const-string v7, "user"

    const-string v8, "users"

    iget-object v9, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-static {v7, v8, v9}, Lorg/codeaurora/ims/conference/Element;->getMatchedElements(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/ims/conference/Element;)Ljava/util/ArrayList;

    move-result-object v5

    .line 166
    .local v5, "usersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/conference/Element;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 167
    .local v2, "length":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "userlist length in getuserUri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 169
    .local v3, "p":Landroid/os/Parcel;
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 171
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codeaurora/ims/conference/Element;

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->getParticipantInfoFromElement(Lorg/codeaurora/ims/conference/Element;)[Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "participantInfo":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getConfUriList["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] -> userEntity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Display Text="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", endPoint="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 182
    if-nez v1, :cond_0

    .line 183
    aget-object v7, v4, v10

    iput-object v7, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mSelfUserEntity:Ljava/lang/String;

    .line 187
    :cond_0
    aget-object v7, v4, v10

    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 190
    .local v0, "b":Landroid/os/Bundle;
    const-string v7, "user"

    aget-object v8, v4, v10

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v7, "endpoint"

    aget-object v8, v4, v11

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v7, "status"

    aget-object v8, v4, v12

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v3, v0, v10}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v4    # "participantInfo":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 197
    sget-object v7, Landroid/telephony/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/ims/ImsConferenceState;

    .line 202
    .end local v1    # "index":I
    .end local v2    # "length":I
    .end local v3    # "p":Landroid/os/Parcel;
    .end local v5    # "usersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/conference/Element;>;"
    .end local v6    # "version":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 200
    :cond_2
    const-string v7, "conf_version not valid"

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 202
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public getSelfUserEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mSelfUserEntity:Ljava/lang/String;

    return-object v0
.end method

.method public getState(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 544
    .local p1, "parent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "state"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    const-string v0, "state"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 547
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserUriList()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "userUri":[Ljava/lang/String;
    iget-object v5, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    if-eqz v5, :cond_0

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCachedElement reference "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 130
    iget-object v5, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    const-string v6, "version"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "version":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "version string is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 132
    if-eqz v4, :cond_1

    const-string v5, "NotApplicable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 135
    invoke-static {}, Lorg/codeaurora/ims/conference/Element;->clearMatchedElementsList()V

    .line 136
    const-string v5, "user"

    const-string v6, "users"

    iget-object v7, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-static {v5, v6, v7}, Lorg/codeaurora/ims/conference/Element;->getMatchedElements(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/ims/conference/Element;)Ljava/util/ArrayList;

    move-result-object v3

    .line 138
    .local v3, "usersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/conference/Element;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 139
    .local v1, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "userlist length in getuserUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 140
    new-array v2, v1, [Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 142
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/conference/Element;

    const-string v6, "entity"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inside getUser URI list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "index":I
    .end local v1    # "length":I
    .end local v3    # "usersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/conference/Element;>;"
    .end local v4    # "version":Ljava/lang/String;
    :cond_0
    const-string v5, "conf_version not valid"

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 150
    :cond_1
    return-object v2
.end method

.method public updateConfXmlBytes([B)V
    .locals 6
    .param p1, "confxml"    # [B

    .prologue
    .line 77
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 78
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {}, Lorg/codeaurora/ims/conference/SAXXMLParser;->getSAXXMLParser()Lorg/codeaurora/ims/conference/SAXXMLParser;

    move-result-object v0

    .line 79
    .local v0, "confparser":Lorg/codeaurora/ims/conference/SAXXMLParser;
    invoke-static {v1}, Lorg/codeaurora/ims/conference/SAXXMLParser;->parse(Ljava/io/InputStream;)Lorg/codeaurora/ims/conference/Element;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mNewElement:Lorg/codeaurora/ims/conference/Element;

    .line 80
    const-string v2, "*************New Notification*****************"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 81
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    iget-object v4, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mNewElement:Lorg/codeaurora/ims/conference/Element;

    const/4 v5, -0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;Lorg/codeaurora/ims/conference/Element;I)V

    .line 82
    return-void
.end method

.method public validateConfInfoVersion(Lorg/codeaurora/ims/conference/Element;)I
    .locals 4
    .param p1, "newmessage"    # Lorg/codeaurora/ims/conference/Element;

    .prologue
    .line 517
    iget-object v2, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    const-string v3, "version"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 519
    .local v1, "oldversion":I
    invoke-virtual {p1}, Lorg/codeaurora/ims/conference/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v2

    const-string v3, "version"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 520
    const-string v2, "version"

    invoke-virtual {p1, v2}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 522
    .local v0, "newversion":I
    if-ne v1, v0, :cond_0

    .line 523
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    .line 530
    .end local v0    # "newversion":I
    :goto_0
    return v2

    .line 524
    .restart local v0    # "newversion":I
    :cond_0
    if-le v1, v0, :cond_1

    .line 525
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    goto :goto_0

    .line 526
    :cond_1
    if-ge v1, v0, :cond_2

    .line 527
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    goto :goto_0

    .line 530
    .end local v0    # "newversion":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    goto :goto_0
.end method
