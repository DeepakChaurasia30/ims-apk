.class public Lorg/codeaurora/ims/DriverCallIms;
.super Lcom/android/internal/telephony/DriverCall;
.source "DriverCallIms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/DriverCallIms$State;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "DRIVERCALL-IMS"


# instance fields
.field public callDetails:Lorg/codeaurora/ims/CallDetails;

.field public callFailCause:Lcom/android/ims/ImsReasonInfo;

.field public state:Lorg/codeaurora/ims/DriverCallIms$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 71
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 4
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 52
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 53
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget v1, v1, Lcom/android/ims/ImsReasonInfo;->mCode:I

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget v2, v2, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget-object v3, v3, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    .line 56
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 57
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 58
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 59
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 60
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    .line 61
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 62
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->als:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->als:I

    .line 63
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    .line 64
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 65
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 66
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 67
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 68
    return-void
.end method

.method public static stateFromCall(I)Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 3
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    .prologue
    .line 75
    packed-switch p0, :pswitch_data_0

    .line 91
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :pswitch_0
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 89
    :goto_0
    return-object v0

    .line 79
    :pswitch_1
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    goto :goto_0

    .line 81
    :pswitch_2
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    goto :goto_0

    .line 83
    :pswitch_3
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    goto :goto_0

    .line 85
    :pswitch_4
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    goto :goto_0

    .line 87
    :pswitch_5
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    goto :goto_0

    .line 89
    :pswitch_6
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "toa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v0, :cond_0

    const-string v0, "conf"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eqz v0, :cond_1

    const-string v0, "mt"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->als:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    if-eqz v0, :cond_2

    const-string v0, "voc"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    if-eqz v0, :cond_3

    const-string v0, "evp"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",cli="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Call Details ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CallFailCause Code= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget v1, v1, Lcom/android/ims/ImsReasonInfo;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CallFailCause String= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget-object v1, v1, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "norm"

    goto/16 :goto_0

    :cond_1
    const-string v0, "mo"

    goto/16 :goto_1

    :cond_2
    const-string v0, "nonvoc"

    goto :goto_2

    :cond_3
    const-string v0, "noevp"

    goto :goto_3
.end method

.method public update(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 5
    .param p1, "update"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    .line 97
    if-nez p1, :cond_1

    .line 98
    const/4 v0, 0x0

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    const/4 v0, 0x0

    .line 101
    .local v0, "hasChanged":Z
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v1, v2, :cond_2

    .line 102
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 103
    const/4 v0, 0x1

    .line 105
    :cond_2
    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iget v2, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    if-eq v1, v2, :cond_3

    .line 106
    iget v1, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v1, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 107
    const/4 v0, 0x1

    .line 109
    :cond_3
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    if-eq v1, v2, :cond_4

    .line 110
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 111
    const/4 v0, 0x1

    .line 113
    :cond_4
    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eq v1, v2, :cond_5

    .line 114
    iget-boolean v1, p1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    iput-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 115
    const/4 v0, 0x1

    .line 117
    :cond_5
    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eq v1, v2, :cond_6

    .line 118
    iget-boolean v1, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    iput-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 119
    const/4 v0, 0x1

    .line 121
    :cond_6
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    if-eqz v1, :cond_7

    .line 122
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    if-nez v1, :cond_8

    .line 123
    new-instance v1, Lcom/android/ims/ImsReasonInfo;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget v2, v2, Lcom/android/ims/ImsReasonInfo;->mCode:I

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget v3, v3, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget-object v4, v4, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    .line 138
    :cond_7
    :goto_1
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/CallDetails;->update(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x1

    goto :goto_0

    .line 127
    :cond_8
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget v1, v1, Lcom/android/ims/ImsReasonInfo;->mCode:I

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget v2, v2, Lcom/android/ims/ImsReasonInfo;->mCode:I

    if-eq v1, v2, :cond_9

    .line 128
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget v2, v2, Lcom/android/ims/ImsReasonInfo;->mCode:I

    iput v2, v1, Lcom/android/ims/ImsReasonInfo;->mCode:I

    .line 130
    :cond_9
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget v1, v1, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget v2, v2, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    if-eq v1, v2, :cond_a

    .line 131
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget v2, v2, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    iput v2, v1, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    .line 133
    :cond_a
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget-object v1, v1, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget-object v2, v2, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    if-eq v1, v2, :cond_7

    .line 134
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iget-object v2, v2, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    goto :goto_1
.end method
