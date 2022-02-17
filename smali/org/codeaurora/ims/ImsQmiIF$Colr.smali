.class public final Lorg/codeaurora/ims/ImsQmiIF$Colr;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Colr"
.end annotation


# static fields
.field public static final PRESENTATION_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasPresentation:Z

.field private presentation_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2306
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2311
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->presentation_:I

    .line 2343
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->cachedSize:I

    .line 2306
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2395
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Colr;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2389
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 1

    .prologue
    .line 2326
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->clearPresentation()Lorg/codeaurora/ims/ImsQmiIF$Colr;

    .line 2327
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->cachedSize:I

    .line 2328
    return-object p0
.end method

.method public clearPresentation()Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2320
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasPresentation:Z

    .line 2321
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->presentation_:I

    .line 2322
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2346
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->cachedSize:I

    if-gez v0, :cond_0

    .line 2348
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getSerializedSize()I

    .line 2350
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->cachedSize:I

    return v0
.end method

.method public getPresentation()I
    .locals 1

    .prologue
    .line 2313
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->presentation_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2355
    const/4 v0, 0x0

    .line 2356
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasPresentation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2357
    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getPresentation()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2360
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->cachedSize:I

    .line 2361
    return v0
.end method

.method public hasPresentation()Z
    .locals 1

    .prologue
    .line 2312
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasPresentation:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2332
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
    .line 2303
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Colr;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2369
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2370
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2374
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2375
    :sswitch_0
    return-object p0

    .line 2380
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Colr;

    goto :goto_0

    .line 2370
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasPresentation:Z

    .line 2316
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->presentation_:I

    .line 2317
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
    .line 2338
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasPresentation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2339
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getPresentation()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2341
    :cond_0
    return-void
.end method
