.class public Lcom/qualcomm/ims/csvt/CsvtUtils;
.super Ljava/lang/Object;
.source "CsvtUtils.java"


# static fields
.field private static final CSVT_PROP:Ljava/lang/String; = "persist.radio.csvt.enabled"

.field private static final TAG:Ljava/lang/String; = "CsvtUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCfInfoFromUtResult(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/ims/csvt/CallForwardInfoP;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v2, "cfInfoPArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/csvt/CallForwardInfoP;>;"
    if-eqz p0, :cond_0

    instance-of v5, p0, [Lcom/android/ims/ImsCallForwardInfo;

    if-eqz v5, :cond_0

    .line 118
    check-cast p0, [Lcom/android/ims/ImsCallForwardInfo;

    .end local p0    # "result":Ljava/lang/Object;
    move-object v1, p0

    check-cast v1, [Lcom/android/ims/ImsCallForwardInfo;

    .line 119
    .local v1, "cfInfoArray":[Lcom/android/ims/ImsCallForwardInfo;
    const-string v5, "CsvtUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleGetCFResponse: cfInfoArray.length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    .local v4, "length":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 121
    const-string v5, "CsvtUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleGetCFResponse, cfInfoArray["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;

    invoke-direct {v0}, Lorg/codeaurora/ims/csvt/CallForwardInfoP;-><init>()V

    .line 124
    .local v0, "cf":Lorg/codeaurora/ims/csvt/CallForwardInfoP;
    aget-object v5, v1, v3

    iget v5, v5, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    iput v5, v0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->status:I

    .line 125
    aget-object v5, v1, v3

    iget v5, v5, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    invoke-static {v5}, Lcom/qualcomm/ims/csvt/CsvtUtils;->getCfReasonFromUtCondition(I)I

    move-result v5

    iput v5, v0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->reason:I

    .line 126
    aget-object v5, v1, v3

    iget v5, v5, Lcom/android/ims/ImsCallForwardInfo;->mToA:I

    iput v5, v0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->toa:I

    .line 127
    aget-object v5, v1, v3

    iget-object v5, v5, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    iput-object v5, v0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->number:Ljava/lang/String;

    .line 128
    aget-object v5, v1, v3

    iget v5, v5, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    iput v5, v0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->timeSeconds:I

    .line 129
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "cf":Lorg/codeaurora/ims/csvt/CallForwardInfoP;
    .end local v1    # "cfInfoArray":[Lcom/android/ims/ImsCallForwardInfo;
    .end local v3    # "i":I
    .end local v4    # "length":I
    :cond_0
    return-object v2
.end method

.method public static getCfReasonFromUtCondition(I)I
    .locals 1
    .param p0, "condition"    # I

    .prologue
    .line 56
    const/4 v0, 0x3

    .line 57
    .local v0, "reason":I
    packed-switch p0, :pswitch_data_0

    .line 79
    :goto_0
    return v0

    .line 59
    :pswitch_0
    const/4 v0, 0x0

    .line 60
    goto :goto_0

    .line 62
    :pswitch_1
    const/4 v0, 0x1

    .line 63
    goto :goto_0

    .line 65
    :pswitch_2
    const/4 v0, 0x2

    .line 66
    goto :goto_0

    .line 68
    :pswitch_3
    const/4 v0, 0x3

    .line 69
    goto :goto_0

    .line 71
    :pswitch_4
    const/4 v0, 0x4

    .line 72
    goto :goto_0

    .line 74
    :pswitch_5
    const/4 v0, 0x5

    .line 75
    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getCwEnabledFromUtResult(Ljava/lang/Object;)Z
    .locals 5
    .param p0, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, "enabled":Z
    if-eqz p0, :cond_0

    instance-of v4, p0, [Lcom/android/ims/ImsSsInfo;

    if-eqz v4, :cond_0

    .line 106
    check-cast p0, [Lcom/android/ims/ImsSsInfo;

    .end local p0    # "result":Ljava/lang/Object;
    move-object v0, p0

    check-cast v0, [Lcom/android/ims/ImsSsInfo;

    .line 107
    .local v0, "cwInfo":[Lcom/android/ims/ImsSsInfo;
    array-length v4, v0

    if-lez v4, :cond_0

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 108
    aget-object v4, v0, v3

    iget v4, v4, Lcom/android/ims/ImsSsInfo;->mStatus:I

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 109
    :goto_0
    const-string v2, "CsvtUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCwEnabledFromUtResult: enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0    # "cwInfo":[Lcom/android/ims/ImsSsInfo;
    :cond_0
    return v1

    .restart local v0    # "cwInfo":[Lcom/android/ims/ImsSsInfo;
    :cond_1
    move v1, v3

    .line 108
    goto :goto_0
.end method

.method public static getUtActionFromCFAction(I)I
    .locals 1
    .param p0, "action"    # I

    .prologue
    .line 83
    const/4 v0, -0x1

    .line 84
    .local v0, "utAction":I
    packed-switch p0, :pswitch_data_0

    .line 100
    :goto_0
    :pswitch_0
    return v0

    .line 86
    :pswitch_1
    const/4 v0, 0x0

    .line 87
    goto :goto_0

    .line 89
    :pswitch_2
    const/4 v0, 0x1

    .line 90
    goto :goto_0

    .line 92
    :pswitch_3
    const/4 v0, 0x4

    .line 93
    goto :goto_0

    .line 95
    :pswitch_4
    const/4 v0, 0x3

    .line 96
    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static getUtConditionFromCFReason(I)I
    .locals 1
    .param p0, "reason"    # I

    .prologue
    .line 29
    const/4 v0, -0x1

    .line 30
    .local v0, "condition":I
    packed-switch p0, :pswitch_data_0

    .line 52
    :goto_0
    return v0

    .line 32
    :pswitch_0
    const/4 v0, 0x0

    .line 33
    goto :goto_0

    .line 35
    :pswitch_1
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 38
    :pswitch_2
    const/4 v0, 0x2

    .line 39
    goto :goto_0

    .line 41
    :pswitch_3
    const/4 v0, 0x3

    .line 42
    goto :goto_0

    .line 44
    :pswitch_4
    const/4 v0, 0x4

    .line 45
    goto :goto_0

    .line 47
    :pswitch_5
    const/4 v0, 0x5

    .line 48
    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static isCsvtEnabled()Z
    .locals 2

    .prologue
    .line 25
    const-string v0, "persist.radio.csvt.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
