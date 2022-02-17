.class public final Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallFailCauseResponse"
.end annotation


# static fields
.field public static final ERRORINFO_FIELD_NUMBER:I = 0x2

.field public static final FAILCAUSE_FIELD_NUMBER:I = 0x1

.field public static final NETWORKERRORSTRING_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private errorinfo_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private failcause_:I

.field private hasErrorinfo:Z

.field private hasFailcause:Z

.field private hasNetworkErrorString:Z

.field private networkErrorString_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 473
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->failcause_:I

    .line 490
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->errorinfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 507
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->networkErrorString_:Ljava/lang/String;

    .line 547
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->cachedSize:I

    .line 468
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 609
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .prologue
    .line 522
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->clearFailcause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 523
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->clearErrorinfo()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 524
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->clearNetworkErrorString()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 525
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->cachedSize:I

    .line 526
    return-object p0
.end method

.method public clearErrorinfo()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorinfo:Z

    .line 500
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->errorinfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 501
    return-object p0
.end method

.method public clearFailcause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause:Z

    .line 483
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->failcause_:I

    .line 484
    return-object p0
.end method

.method public clearNetworkErrorString()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasNetworkErrorString:Z

    .line 517
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->networkErrorString_:Ljava/lang/String;

    .line 518
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getSerializedSize()I

    .line 554
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->cachedSize:I

    return v0
.end method

.method public getErrorinfo()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->errorinfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getFailcause()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->failcause_:I

    return v0
.end method

.method public getNetworkErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->networkErrorString_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getFailcause()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 564
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorinfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getErrorinfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 568
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasNetworkErrorString()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 569
    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getNetworkErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 572
    :cond_2
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->cachedSize:I

    .line 573
    return v0
.end method

.method public hasErrorinfo()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorinfo:Z

    return v0
.end method

.method public hasFailcause()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause:Z

    return v0
.end method

.method public hasNetworkErrorString()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasNetworkErrorString:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 530
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
    .line 465
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 582
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 586
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 587
    :sswitch_0
    return-object p0

    .line 592
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setFailcause(I)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    goto :goto_0

    .line 596
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setErrorinfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    goto :goto_0

    .line 600
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setNetworkErrorString(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    goto :goto_0

    .line 582
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setErrorinfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorinfo:Z

    .line 495
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->errorinfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 496
    return-object p0
.end method

.method public setFailcause(I)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause:Z

    .line 478
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->failcause_:I

    .line 479
    return-object p0
.end method

.method public setNetworkErrorString(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasNetworkErrorString:Z

    .line 512
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->networkErrorString_:Ljava/lang/String;

    .line 513
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
    .line 536
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getFailcause()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 539
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorinfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getErrorinfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 542
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasNetworkErrorString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getNetworkErrorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 545
    :cond_2
    return-void
.end method
