.class public Lcom/qualcomm/ims/csvt/CsvtConnection;
.super Ljava/lang/Object;
.source "CsvtConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/csvt/CsvtConnection$State;
    }
.end annotation


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private mCall:Lcom/android/ims/ImsCall;

.field private mCallFailCause:I

.field private mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

.field mIsAlerting:Z

.field public mState:Lcom/qualcomm/ims/csvt/CsvtConnection$State;


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/csvt/CsvtCallTracker;Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "ct"    # Lcom/qualcomm/ims/csvt/CsvtCallTracker;
    .param p2, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "CsvtConnection"

    iput-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->LOG_TAG:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->IDLE:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    iput-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mState:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    .line 35
    const/16 v0, 0x16

    iput v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mCallFailCause:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mIsAlerting:Z

    .line 44
    iput-object p1, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    .line 45
    iput-object p2, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mCall:Lcom/android/ims/ImsCall;

    .line 46
    return-void
.end method

.method constructor <init>(Lcom/qualcomm/ims/csvt/CsvtCallTracker;Lcom/android/ims/ImsCall;Lcom/qualcomm/ims/csvt/CsvtConnection$State;)V
    .locals 0
    .param p1, "ct"    # Lcom/qualcomm/ims/csvt/CsvtCallTracker;
    .param p2, "call"    # Lcom/android/ims/ImsCall;
    .param p3, "state"    # Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/csvt/CsvtConnection;-><init>(Lcom/qualcomm/ims/csvt/CsvtCallTracker;Lcom/android/ims/ImsCall;)V

    .line 40
    invoke-virtual {p0, p3}, Lcom/qualcomm/ims/csvt/CsvtConnection;->setState(Lcom/qualcomm/ims/csvt/CsvtConnection$State;)V

    .line 41
    return-void
.end method

.method private convertImsErrorInfoToCsvtDisconnectStatus(Ljava/lang/String;)I
    .locals 5
    .param p1, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v1, -0x1

    .line 122
    .local v1, "extraCode":I
    if-eqz p1, :cond_0

    .line 124
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 129
    :cond_0
    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 167
    const v2, 0xffff

    :goto_1
    return v2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CsvtConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while parsing error info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    .end local v0    # "ex":Ljava/lang/Exception;
    :sswitch_0
    const/16 v2, 0x20

    goto :goto_1

    .line 133
    :sswitch_1
    const/16 v2, 0xa

    goto :goto_1

    .line 135
    :sswitch_2
    const/16 v2, 0x11

    goto :goto_1

    .line 137
    :sswitch_3
    const/16 v2, 0x12

    goto :goto_1

    .line 139
    :sswitch_4
    const/16 v2, 0x13

    goto :goto_1

    .line 141
    :sswitch_5
    const/16 v2, 0x14

    goto :goto_1

    .line 143
    :sswitch_6
    const/16 v2, 0x15

    goto :goto_1

    .line 145
    :sswitch_7
    const/16 v2, 0x19

    goto :goto_1

    .line 147
    :sswitch_8
    const/16 v2, 0x1a

    goto :goto_1

    .line 149
    :sswitch_9
    const/16 v2, 0x1b

    goto :goto_1

    .line 151
    :sswitch_a
    const/16 v2, 0x1c

    goto :goto_1

    .line 153
    :sswitch_b
    const/16 v2, 0x1d

    goto :goto_1

    .line 155
    :sswitch_c
    const/16 v2, 0x21

    goto :goto_1

    .line 158
    :sswitch_d
    const/16 v2, 0xb

    goto :goto_1

    .line 160
    :sswitch_e
    const/16 v2, 0xc

    goto :goto_1

    .line 162
    :sswitch_f
    const/16 v2, 0x1e

    goto :goto_1

    .line 164
    :sswitch_10
    const/16 v2, 0x10

    goto :goto_1

    .line 129
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_10
        0x10 -> :sswitch_c
        0x11 -> :sswitch_d
        0x12 -> :sswitch_b
        0x13 -> :sswitch_1
        0x15 -> :sswitch_d
        0x16 -> :sswitch_6
        0x1c -> :sswitch_e
        0x1f -> :sswitch_7
        0x22 -> :sswitch_f
        0x2f -> :sswitch_3
        0x34 -> :sswitch_0
        0x39 -> :sswitch_4
        0x3a -> :sswitch_5
        0x41 -> :sswitch_9
        0x4f -> :sswitch_a
        0x58 -> :sswitch_2
        0x6f -> :sswitch_8
    .end sparse-switch
.end method

.method private convertImsReasonToDisconnectStatus(Landroid/telephony/ims/ImsReasonInfo;)I
    .locals 1
    .param p1, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget v0, p1, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    packed-switch v0, :pswitch_data_0

    .line 114
    iget-object v0, p1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtConnection;->convertImsErrorInfoToCsvtDisconnectStatus(Ljava/lang/String;)I

    move-result v0

    .line 117
    :goto_0
    return v0

    .line 111
    :pswitch_0
    const/16 v0, 0x21

    goto :goto_0

    .line 117
    :cond_0
    const v0, 0xffff

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCall()Lcom/android/ims/ImsCall;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mCall:Lcom/android/ims/ImsCall;

    return-object v0
.end method

.method public getDisconnectStatus()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mCallFailCause:I

    return v0
.end method

.method public getState()Lcom/qualcomm/ims/csvt/CsvtConnection$State;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mState:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mState:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    invoke-virtual {v0}, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mState:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    invoke-virtual {v0}, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public onDisconnect(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mState:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    sget-object v1, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->DISCONNECTED:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    if-eq v0, v1, :cond_2

    .line 96
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/csvt/CsvtConnection;->convertImsReasonToDisconnectStatus(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mCallFailCause:I

    .line 97
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mState:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    invoke-virtual {v0}, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mCallFailCause:I

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mCallFailCause:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    .line 100
    :cond_0
    const/16 v0, 0x1f

    iput v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mCallFailCause:I

    .line 102
    :cond_1
    sget-object v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->DISCONNECTED:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtConnection;->setState(Lcom/qualcomm/ims/csvt/CsvtConnection$State;)V

    .line 103
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->notifyDisconnected(Lcom/qualcomm/ims/csvt/CsvtConnection;)V

    .line 105
    :cond_2
    return-void
.end method

.method public setCall(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mCall:Lcom/android/ims/ImsCall;

    .line 88
    return-void
.end method

.method public setState(Lcom/qualcomm/ims/csvt/CsvtConnection$State;)V
    .locals 2
    .param p1, "state"    # Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mState:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    if-eq v0, p1, :cond_2

    .line 62
    iput-object p1, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mState:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    .line 63
    invoke-virtual {p0}, Lcom/qualcomm/ims/csvt/CsvtConnection;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->notifyNewRingingConnection(Lcom/qualcomm/ims/csvt/CsvtConnection;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mState:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    sget-object v1, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->ALERTING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    if-ne v0, v1, :cond_3

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mIsAlerting:Z

    .line 70
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    iget-boolean v1, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mIsAlerting:Z

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->notifyAlertingState(Z)V

    .line 76
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mState:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    sget-object v1, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->DISCONNECTED:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    if-eq v0, v1, :cond_2

    .line 77
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->onConnectionStateChanged(Lcom/qualcomm/ims/csvt/CsvtConnection;)V

    .line 80
    :cond_2
    return-void

    .line 71
    :cond_3
    iget-boolean v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mIsAlerting:Z

    if-eqz v0, :cond_1

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mIsAlerting:Z

    .line 73
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    iget-boolean v1, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mIsAlerting:Z

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->notifyAlertingState(Z)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    const-string v1, "CsvtConnection: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mState:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, " Call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, " fail cause code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget v1, p0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mCallFailCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
