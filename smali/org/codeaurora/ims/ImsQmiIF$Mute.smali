.class public final Lorg/codeaurora/ims/ImsQmiIF$Mute;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mute"
.end annotation


# static fields
.field public static final MUTE_FLAG_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasMuteFlag:Z

.field private muteFlag_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3314
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->muteFlag_:Z

    .line 3351
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->cachedSize:I

    .line 3314
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mute;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3403
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Mute;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mute;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Mute;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3397
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Mute;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Mute;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Mute;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Mute;
    .locals 1

    .prologue
    .line 3334
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->clearMuteFlag()Lorg/codeaurora/ims/ImsQmiIF$Mute;

    .line 3335
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->cachedSize:I

    .line 3336
    return-object p0
.end method

.method public clearMuteFlag()Lorg/codeaurora/ims/ImsQmiIF$Mute;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3328
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->hasMuteFlag:Z

    .line 3329
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->muteFlag_:Z

    .line 3330
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3354
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->cachedSize:I

    if-gez v0, :cond_0

    .line 3356
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->getSerializedSize()I

    .line 3358
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->cachedSize:I

    return v0
.end method

.method public getMuteFlag()Z
    .locals 1

    .prologue
    .line 3320
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->muteFlag_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3363
    const/4 v0, 0x0

    .line 3364
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->hasMuteFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3365
    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->getMuteFlag()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3368
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->cachedSize:I

    .line 3369
    return v0
.end method

.method public hasMuteFlag()Z
    .locals 1

    .prologue
    .line 3321
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->hasMuteFlag:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3340
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
    .line 3311
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mute;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mute;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3377
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3378
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3382
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3383
    :sswitch_0
    return-object p0

    .line 3388
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->setMuteFlag(Z)Lorg/codeaurora/ims/ImsQmiIF$Mute;

    goto :goto_0

    .line 3378
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setMuteFlag(Z)Lorg/codeaurora/ims/ImsQmiIF$Mute;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 3323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->hasMuteFlag:Z

    .line 3324
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->muteFlag_:Z

    .line 3325
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
    .line 3346
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->hasMuteFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3347
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->getMuteFlag()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 3349
    :cond_0
    return-void
.end method
