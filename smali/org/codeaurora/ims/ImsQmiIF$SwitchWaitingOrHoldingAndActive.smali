.class public final Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwitchWaitingOrHoldingAndActive"
.end annotation


# static fields
.field public static final CALL_TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private callType_:I

.field private hasCallType:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3217
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3222
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->callType_:I

    .line 3254
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->cachedSize:I

    .line 3217
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3306
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3300
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    .locals 1

    .prologue
    .line 3237
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->clearCallType()Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    .line 3238
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->cachedSize:I

    .line 3239
    return-object p0
.end method

.method public clearCallType()Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3231
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->hasCallType:Z

    .line 3232
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->callType_:I

    .line 3233
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3257
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->cachedSize:I

    if-gez v0, :cond_0

    .line 3259
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->getSerializedSize()I

    .line 3261
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->cachedSize:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 3224
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->callType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3266
    const/4 v0, 0x0

    .line 3267
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->hasCallType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3268
    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->getCallType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3271
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->cachedSize:I

    .line 3272
    return v0
.end method

.method public hasCallType()Z
    .locals 1

    .prologue
    .line 3223
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->hasCallType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3243
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
    .line 3214
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3280
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3281
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3285
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3286
    :sswitch_0
    return-object p0

    .line 3291
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    goto :goto_0

    .line 3281
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->hasCallType:Z

    .line 3227
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->callType_:I

    .line 3228
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
    .line 3249
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->hasCallType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3250
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->getCallType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3252
    :cond_0
    return-void
.end method
