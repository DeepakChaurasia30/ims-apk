.class public final Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceClass"
.end annotation


# static fields
.field public static final SERVICE_CLASS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasServiceClass:Z

.field private serviceClass_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4542
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4547
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->serviceClass_:I

    .line 4579
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->cachedSize:I

    .line 4542
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4631
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4625
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1

    .prologue
    .line 4562
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 4563
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->cachedSize:I

    .line 4564
    return-object p0
.end method

.method public clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4556
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->hasServiceClass:Z

    .line 4557
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->serviceClass_:I

    .line 4558
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4582
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->cachedSize:I

    if-gez v0, :cond_0

    .line 4584
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getSerializedSize()I

    .line 4586
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4591
    const/4 v0, 0x0

    .line 4592
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->hasServiceClass()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4593
    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getServiceClass()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4596
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->cachedSize:I

    .line 4597
    return v0
.end method

.method public getServiceClass()I
    .locals 1

    .prologue
    .line 4548
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->serviceClass_:I

    return v0
.end method

.method public hasServiceClass()Z
    .locals 1

    .prologue
    .line 4549
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->hasServiceClass:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4568
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
    .line 4539
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4605
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4606
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4610
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4611
    :sswitch_0
    return-object p0

    .line 4616
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    goto :goto_0

    .line 4606
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->hasServiceClass:Z

    .line 4552
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->serviceClass_:I

    .line 4553
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
    .line 4574
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->hasServiceClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4575
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getServiceClass()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 4577
    :cond_0
    return-void
.end method
