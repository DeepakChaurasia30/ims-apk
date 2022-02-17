.class public final Lorg/codeaurora/ims/ImsQmiIF$Mwi;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mwi"
.end annotation


# static fields
.field public static final MWIMSGDETAIL_FIELD_NUMBER:I = 0x3

.field public static final MWIMSGSUMMARY_FIELD_NUMBER:I = 0x1

.field public static final UEADDRESS_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasUeAddress:Z

.field private mwiMsgDetail_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mwiMsgSummary_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;",
            ">;"
        }
    .end annotation
.end field

.field private ueAddress_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7178
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7182
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    .line 7216
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    .line 7232
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    .line 7289
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    .line 7178
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7361
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7355
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    return-object v0
.end method


# virtual methods
.method public addMwiMsgDetail(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .prologue
    .line 7249
    if-nez p1, :cond_0

    .line 7250
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7252
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    .line 7255
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7256
    return-object p0
.end method

.method public addMwiMsgSummary(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .prologue
    .line 7199
    if-nez p1, :cond_0

    .line 7200
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7202
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    .line 7205
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7206
    return-object p0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    .prologue
    .line 7264
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->clearMwiMsgSummary()Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    .line 7265
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->clearUeAddress()Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    .line 7266
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->clearMwiMsgDetail()Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    .line 7267
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    .line 7268
    return-object p0
.end method

.method public clearMwiMsgDetail()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    .prologue
    .line 7259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    .line 7260
    return-object p0
.end method

.method public clearMwiMsgSummary()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    .prologue
    .line 7209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    .line 7210
    return-object p0
.end method

.method public clearUeAddress()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    .prologue
    .line 7225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress:Z

    .line 7226
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    .line 7227
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7292
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    if-gez v0, :cond_0

    .line 7294
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getSerializedSize()I

    .line 7296
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    return v0
.end method

.method public getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7239
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    return-object v0
.end method

.method public getMwiMsgDetailCount()I
    .locals 1

    .prologue
    .line 7237
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMwiMsgDetailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7235
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    return-object v0
.end method

.method public getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7189
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    return-object v0
.end method

.method public getMwiMsgSummaryCount()I
    .locals 1

    .prologue
    .line 7187
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMwiMsgSummaryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7185
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 7301
    const/4 v2, 0x0

    .line 7302
    .local v2, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummaryList()Ljava/util/List;

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

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 7303
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7305
    goto :goto_0

    .line 7306
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7307
    const/4 v3, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getUeAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7310
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetailList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7311
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7313
    goto :goto_1

    .line 7314
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    :cond_2
    iput v2, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    .line 7315
    return v2
.end method

.method public getUeAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7217
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public hasUeAddress()Z
    .locals 1

    .prologue
    .line 7218
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7272
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
    .line 7175
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7323
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7324
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7328
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7329
    :sswitch_0
    return-object p0

    .line 7334
    :sswitch_1
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;-><init>()V

    .line 7335
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7336
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->addMwiMsgSummary(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    goto :goto_0

    .line 7340
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->setUeAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    goto :goto_0

    .line 7344
    :sswitch_3
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;-><init>()V

    .line 7345
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7346
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->addMwiMsgDetail(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    goto :goto_0

    .line 7324
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setMwiMsgDetail(ILorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .prologue
    .line 7242
    if-nez p2, :cond_0

    .line 7243
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7245
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7246
    return-object p0
.end method

.method public setMwiMsgSummary(ILorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .prologue
    .line 7192
    if-nez p2, :cond_0

    .line 7193
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7195
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7196
    return-object p0
.end method

.method public setUeAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress:Z

    .line 7221
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    .line 7222
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7278
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummaryList()Ljava/util/List;

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

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 7279
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 7281
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7282
    const/4 v2, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getUeAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7284
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetailList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7285
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 7287
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    :cond_2
    return-void
.end method
