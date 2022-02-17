.class public final Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfInfo"
.end annotation


# static fields
.field public static final CONFCALLSTATE_FIELD_NUMBER:I = 0x2

.field public static final CONF_INFO_URI_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private confCallState_:I

.field private confInfoUri_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private hasConfCallState:Z

.field private hasConfInfoUri:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5741
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5746
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->confInfoUri_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 5763
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->confCallState_:I

    .line 5799
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->cachedSize:I

    .line 5741
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5859
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5853
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .locals 1

    .prologue
    .line 5778
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->clearConfInfoUri()Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    .line 5779
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->clearConfCallState()Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    .line 5780
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->cachedSize:I

    .line 5781
    return-object p0
.end method

.method public clearConfCallState()Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5772
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfCallState:Z

    .line 5773
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->confCallState_:I

    .line 5774
    return-object p0
.end method

.method public clearConfInfoUri()Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .locals 1

    .prologue
    .line 5755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfInfoUri:Z

    .line 5756
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->confInfoUri_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 5757
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5802
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 5804
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->getSerializedSize()I

    .line 5806
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->cachedSize:I

    return v0
.end method

.method public getConfCallState()I
    .locals 1

    .prologue
    .line 5765
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->confCallState_:I

    return v0
.end method

.method public getConfInfoUri()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 5747
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->confInfoUri_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5811
    const/4 v0, 0x0

    .line 5812
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfInfoUri()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5813
    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->getConfInfoUri()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5816
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfCallState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5817
    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->getConfCallState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5820
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->cachedSize:I

    .line 5821
    return v0
.end method

.method public hasConfCallState()Z
    .locals 1

    .prologue
    .line 5764
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfCallState:Z

    return v0
.end method

.method public hasConfInfoUri()Z
    .locals 1

    .prologue
    .line 5748
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfInfoUri:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5785
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
    .line 5738
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5829
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5830
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5834
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5835
    :sswitch_0
    return-object p0

    .line 5840
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->setConfInfoUri(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    goto :goto_0

    .line 5844
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->setConfCallState(I)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    goto :goto_0

    .line 5830
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setConfCallState(I)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfCallState:Z

    .line 5768
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->confCallState_:I

    .line 5769
    return-object p0
.end method

.method public setConfInfoUri(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 5750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfInfoUri:Z

    .line 5751
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->confInfoUri_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 5752
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
    .line 5791
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfInfoUri()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5792
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->getConfInfoUri()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 5794
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfCallState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5795
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->getConfCallState()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5797
    :cond_1
    return-void
.end method
