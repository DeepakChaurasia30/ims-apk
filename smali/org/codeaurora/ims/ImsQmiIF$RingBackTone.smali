.class public final Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RingBackTone"
.end annotation


# static fields
.field public static final FLAG_FIELD_NUMBER:I = 0x1

.field public static final START:I = 0x1

.field public static final STOP:I


# instance fields
.field private cachedSize:I

.field private flag_:I

.field private hasFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3609
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3618
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->flag_:I

    .line 3650
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->cachedSize:I

    .line 3609
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3702
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3696
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    .locals 1

    .prologue
    .line 3633
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->clearFlag()Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    .line 3634
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->cachedSize:I

    .line 3635
    return-object p0
.end method

.method public clearFlag()Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3627
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->hasFlag:Z

    .line 3628
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->flag_:I

    .line 3629
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3653
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->cachedSize:I

    if-gez v0, :cond_0

    .line 3655
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->getSerializedSize()I

    .line 3657
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->cachedSize:I

    return v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 3620
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->flag_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3662
    const/4 v0, 0x0

    .line 3663
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->hasFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3664
    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->getFlag()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3667
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->cachedSize:I

    .line 3668
    return v0
.end method

.method public hasFlag()Z
    .locals 1

    .prologue
    .line 3619
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->hasFlag:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3639
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
    .line 3606
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3676
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3677
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3681
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3682
    :sswitch_0
    return-object p0

    .line 3687
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->setFlag(I)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    goto :goto_0

    .line 3677
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setFlag(I)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->hasFlag:Z

    .line 3623
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->flag_:I

    .line 3624
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
    .line 3645
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->hasFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3646
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->getFlag()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3648
    :cond_0
    return-void
.end method
