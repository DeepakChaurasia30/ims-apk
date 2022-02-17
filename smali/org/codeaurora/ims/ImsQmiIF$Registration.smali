.class public final Lorg/codeaurora/ims/ImsQmiIF$Registration;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Registration"
.end annotation


# static fields
.field public static final NOT_REGISTERED:I = 0x2

.field public static final REGISTERED:I = 0x1

.field public static final STATE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasState:Z

.field private state_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3508
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3517
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->state_:I

    .line 3549
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    .line 3508
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3601
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3595
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .prologue
    .line 3532
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->clearState()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 3533
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    .line 3534
    return-object p0
.end method

.method public clearState()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .prologue
    .line 3526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState:Z

    .line 3527
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->state_:I

    .line 3528
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3552
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    if-gez v0, :cond_0

    .line 3554
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getSerializedSize()I

    .line 3556
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3561
    const/4 v0, 0x0

    .line 3562
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3563
    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3566
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    .line 3567
    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 3519
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->state_:I

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 3518
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3538
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
    .line 3505
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3575
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3576
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3580
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3581
    :sswitch_0
    return-object p0

    .line 3586
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setState(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    goto :goto_0

    .line 3576
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setState(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState:Z

    .line 3522
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->state_:I

    .line 3523
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
    .line 3544
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3545
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getState()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3547
    :cond_0
    return-void
.end method
