.class public final Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallForwardInfoList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    }
.end annotation


# static fields
.field public static final INFO_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private info_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5045
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->info_:Ljava/util/List;

    .line 5408
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->cachedSize:I

    .line 5045
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5462
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5456
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    return-object v0
.end method


# virtual methods
.method public addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .prologue
    .line 5376
    if-nez p1, :cond_0

    .line 5377
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5379
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->info_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->info_:Ljava/util/List;

    .line 5382
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->info_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5383
    return-object p0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .locals 1

    .prologue
    .line 5391
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->clearInfo()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    .line 5392
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->cachedSize:I

    .line 5393
    return-object p0
.end method

.method public clearInfo()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .locals 1

    .prologue
    .line 5386
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->info_:Ljava/util/List;

    .line 5387
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5411
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->cachedSize:I

    if-gez v0, :cond_0

    .line 5413
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->getSerializedSize()I

    .line 5415
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->cachedSize:I

    return v0
.end method

.method public getInfo(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5366
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->info_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    return-object v0
.end method

.method public getInfoCount()I
    .locals 1

    .prologue
    .line 5364
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->info_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5362
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->info_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 5420
    const/4 v2, 0x0

    .line 5421
    .local v2, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->getInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5422
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5424
    goto :goto_0

    .line 5425
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    :cond_0
    iput v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->cachedSize:I

    .line 5426
    return v2
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5397
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
    .line 5042
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5434
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5435
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5439
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5440
    :sswitch_0
    return-object p0

    .line 5445
    :sswitch_1
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    .line 5446
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5447
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    goto :goto_0

    .line 5435
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method public setInfo(ILorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .prologue
    .line 5369
    if-nez p2, :cond_0

    .line 5370
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5372
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->info_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5373
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5403
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->getInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5404
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 5406
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    :cond_0
    return-void
.end method
