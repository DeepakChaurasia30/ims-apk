.class public final Lorg/codeaurora/ims/ImsQmiIF$Extra;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extra"
.end annotation


# static fields
.field public static final EXTRAINFO_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private extraInfo_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private hasExtraInfo:Z

.field private hasType:Z

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3907
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3912
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->type_:I

    .line 3929
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->extraInfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3965
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->cachedSize:I

    .line 3907
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4025
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Extra;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4019
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Extra;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Extra;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Extra;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1

    .prologue
    .line 3944
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->clearType()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 3945
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->clearExtraInfo()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 3946
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->cachedSize:I

    .line 3947
    return-object p0
.end method

.method public clearExtraInfo()Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1

    .prologue
    .line 3938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo:Z

    .line 3939
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->extraInfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3940
    return-object p0
.end method

.method public clearType()Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1

    .prologue
    .line 3921
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType:Z

    .line 3922
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->type_:I

    .line 3923
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3968
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->cachedSize:I

    if-gez v0, :cond_0

    .line 3970
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getSerializedSize()I

    .line 3972
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->cachedSize:I

    return v0
.end method

.method public getExtraInfo()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 3930
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->extraInfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3977
    const/4 v0, 0x0

    .line 3978
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3979
    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3982
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3983
    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getExtraInfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3986
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->cachedSize:I

    .line 3987
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 3914
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->type_:I

    return v0
.end method

.method public hasExtraInfo()Z
    .locals 1

    .prologue
    .line 3931
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 3913
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3951
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
    .line 3904
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3995
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3996
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4000
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4001
    :sswitch_0
    return-object p0

    .line 4006
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$Extra;

    goto :goto_0

    .line 4010
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->setExtraInfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$Extra;

    goto :goto_0

    .line 3996
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setExtraInfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 3933
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo:Z

    .line 3934
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->extraInfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3935
    return-object p0
.end method

.method public setType(I)Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3916
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType:Z

    .line 3917
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->type_:I

    .line 3918
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
    .line 3957
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3958
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3960
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3961
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getExtraInfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 3963
    :cond_1
    return-void
.end method
