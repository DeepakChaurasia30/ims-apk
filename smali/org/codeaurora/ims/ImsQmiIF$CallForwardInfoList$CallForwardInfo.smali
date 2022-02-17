.class public final Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallForwardInfo"
.end annotation


# static fields
.field public static final CALLFWDTIMEREND_FIELD_NUMBER:I = 0x8

.field public static final CALLFWDTIMERSTART_FIELD_NUMBER:I = 0x7

.field public static final NUMBER_FIELD_NUMBER:I = 0x5

.field public static final REASON_FIELD_NUMBER:I = 0x2

.field public static final SERVICE_CLASS_FIELD_NUMBER:I = 0x3

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field public static final TIME_SECONDS_FIELD_NUMBER:I = 0x6

.field public static final TOA_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private callFwdTimerEnd_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

.field private callFwdTimerStart_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

.field private hasCallFwdTimerEnd:Z

.field private hasCallFwdTimerStart:Z

.field private hasNumber:Z

.field private hasReason:Z

.field private hasServiceClass:Z

.field private hasStatus:Z

.field private hasTimeSeconds:Z

.field private hasToa:Z

.field private number_:Ljava/lang/String;

.field private reason_:I

.field private serviceClass_:I

.field private status_:I

.field private timeSeconds_:I

.field private toa_:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5050
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5055
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->status_:I

    .line 5072
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->reason_:I

    .line 5089
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->serviceClass_:I

    .line 5106
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->toa_:I

    .line 5123
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->number_:Ljava/lang/String;

    .line 5140
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->timeSeconds_:I

    .line 5157
    iput-object v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerStart_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5177
    iput-object v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerEnd_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5240
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->cachedSize:I

    .line 5050
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5352
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5346
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .prologue
    .line 5195
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5196
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearReason()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5197
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5198
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearToa()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5199
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearNumber()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5200
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearTimeSeconds()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5201
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5202
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearCallFwdTimerEnd()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5203
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->cachedSize:I

    .line 5204
    return-object p0
.end method

.method public clearCallFwdTimerEnd()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .prologue
    .line 5189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd:Z

    .line 5190
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerEnd_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5191
    return-object p0
.end method

.method public clearCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .prologue
    .line 5169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart:Z

    .line 5170
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerStart_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5171
    return-object p0
.end method

.method public clearNumber()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .prologue
    .line 5132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasNumber:Z

    .line 5133
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->number_:Ljava/lang/String;

    .line 5134
    return-object p0
.end method

.method public clearReason()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5081
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasReason:Z

    .line 5082
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->reason_:I

    .line 5083
    return-object p0
.end method

.method public clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5098
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasServiceClass:Z

    .line 5099
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->serviceClass_:I

    .line 5100
    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5064
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasStatus:Z

    .line 5065
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->status_:I

    .line 5066
    return-object p0
.end method

.method public clearTimeSeconds()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5149
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasTimeSeconds:Z

    .line 5150
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->timeSeconds_:I

    .line 5151
    return-object p0
.end method

.method public clearToa()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5115
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasToa:Z

    .line 5116
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->toa_:I

    .line 5117
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5243
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 5245
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getSerializedSize()I

    .line 5247
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->cachedSize:I

    return v0
.end method

.method public getCallFwdTimerEnd()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    .line 5179
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerEnd_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    return-object v0
.end method

.method public getCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    .line 5159
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerStart_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5124
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()I
    .locals 1

    .prologue
    .line 5073
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->reason_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5252
    const/4 v0, 0x0

    .line 5253
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5254
    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5257
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasReason()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5258
    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getReason()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5261
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasServiceClass()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5262
    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getServiceClass()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5265
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasToa()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5266
    const/4 v1, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getToa()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5269
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5270
    const/4 v1, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5273
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasTimeSeconds()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5274
    const/4 v1, 0x6

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getTimeSeconds()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5277
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5278
    const/4 v1, 0x7

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5281
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5282
    const/16 v1, 0x8

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerEnd()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5285
    :cond_7
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->cachedSize:I

    .line 5286
    return v0
.end method

.method public getServiceClass()I
    .locals 1

    .prologue
    .line 5090
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->serviceClass_:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 5056
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->status_:I

    return v0
.end method

.method public getTimeSeconds()I
    .locals 1

    .prologue
    .line 5141
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->timeSeconds_:I

    return v0
.end method

.method public getToa()I
    .locals 1

    .prologue
    .line 5107
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->toa_:I

    return v0
.end method

.method public hasCallFwdTimerEnd()Z
    .locals 1

    .prologue
    .line 5178
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd:Z

    return v0
.end method

.method public hasCallFwdTimerStart()Z
    .locals 1

    .prologue
    .line 5158
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart:Z

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 5125
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasNumber:Z

    return v0
.end method

.method public hasReason()Z
    .locals 1

    .prologue
    .line 5074
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasReason:Z

    return v0
.end method

.method public hasServiceClass()Z
    .locals 1

    .prologue
    .line 5091
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasServiceClass:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 5057
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasStatus:Z

    return v0
.end method

.method public hasTimeSeconds()Z
    .locals 1

    .prologue
    .line 5142
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasTimeSeconds:Z

    return v0
.end method

.method public hasToa()Z
    .locals 1

    .prologue
    .line 5108
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasToa:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5208
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5047
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5294
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5295
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5299
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5300
    :sswitch_0
    return-object p0

    .line 5305
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    goto :goto_0

    .line 5309
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    goto :goto_0

    .line 5313
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    goto :goto_0

    .line 5317
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    goto :goto_0

    .line 5321
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    goto :goto_0

    .line 5325
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    goto :goto_0

    .line 5329
    :sswitch_7
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;-><init>()V

    .line 5330
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5331
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setCallFwdTimerStart(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    goto :goto_0

    .line 5335
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    :sswitch_8
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;-><init>()V

    .line 5336
    .restart local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5337
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setCallFwdTimerEnd(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    goto :goto_0

    .line 5295
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_5
        0x35 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public setCallFwdTimerEnd(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .prologue
    .line 5181
    if-nez p1, :cond_0

    .line 5182
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5184
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd:Z

    .line 5185
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerEnd_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5186
    return-object p0
.end method

.method public setCallFwdTimerStart(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .prologue
    .line 5161
    if-nez p1, :cond_0

    .line 5162
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5164
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart:Z

    .line 5165
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerStart_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5166
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasNumber:Z

    .line 5128
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->number_:Ljava/lang/String;

    .line 5129
    return-object p0
.end method

.method public setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5076
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasReason:Z

    .line 5077
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->reason_:I

    .line 5078
    return-object p0
.end method

.method public setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5093
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasServiceClass:Z

    .line 5094
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->serviceClass_:I

    .line 5095
    return-object p0
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5059
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasStatus:Z

    .line 5060
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->status_:I

    .line 5061
    return-object p0
.end method

.method public setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasTimeSeconds:Z

    .line 5145
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->timeSeconds_:I

    .line 5146
    return-object p0
.end method

.method public setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasToa:Z

    .line 5111
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->toa_:I

    .line 5112
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5214
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5215
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5217
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5218
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getReason()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5220
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasServiceClass()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5221
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getServiceClass()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5223
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasToa()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5224
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getToa()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5226
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5227
    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5229
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasTimeSeconds()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5230
    const/4 v0, 0x6

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getTimeSeconds()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5232
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5233
    const/4 v0, 0x7

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5235
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5236
    const/16 v0, 0x8

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerEnd()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5238
    :cond_7
    return-void
.end method
