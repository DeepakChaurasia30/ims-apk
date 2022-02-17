.class public final Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallDetails"
.end annotation


# static fields
.field public static final CALLDOMAIN_FIELD_NUMBER:I = 0x2

.field public static final CALLSUBSTATE_FIELD_NUMBER:I = 0x7

.field public static final CALLTYPE_FIELD_NUMBER:I = 0x1

.field public static final EXTRASLENGTH_FIELD_NUMBER:I = 0x3

.field public static final EXTRAS_FIELD_NUMBER:I = 0x4

.field public static final LOCALABILITY_FIELD_NUMBER:I = 0x5

.field public static final MEDIAID_FIELD_NUMBER:I = 0x8

.field public static final PEERABILITY_FIELD_NUMBER:I = 0x6


# instance fields
.field private cachedSize:I

.field private callDomain_:I

.field private callSubstate_:I

.field private callType_:I

.field private extrasLength_:I

.field private extras_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasCallDomain:Z

.field private hasCallSubstate:Z

.field private hasCallType:Z

.field private hasExtrasLength:Z

.field private hasLocalAbility:Z

.field private hasMediaId:Z

.field private hasPeerAbility:Z

.field private localAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

.field private mediaId_:I

.field private peerAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1216
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1221
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callType_:I

    .line 1238
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callDomain_:I

    .line 1255
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extrasLength_:I

    .line 1271
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    .line 1305
    iput-object v3, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->localAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1325
    iput-object v3, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->peerAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1345
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callSubstate_:I

    .line 1362
    iput v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mediaId_:I

    .line 1422
    iput v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->cachedSize:I

    .line 1216
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1539
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1533
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    return-object v0
.end method


# virtual methods
.method public addExtras(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1288
    if-nez p1, :cond_0

    .line 1289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1291
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    .line 1294
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1295
    return-object p0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    .line 1377
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearCallType()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1378
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearCallDomain()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1379
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearExtrasLength()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1380
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearExtras()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1381
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1382
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1383
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearCallSubstate()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1384
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearMediaId()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1385
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->cachedSize:I

    .line 1386
    return-object p0
.end method

.method public clearCallDomain()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1247
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallDomain:Z

    .line 1248
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callDomain_:I

    .line 1249
    return-object p0
.end method

.method public clearCallSubstate()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1354
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallSubstate:Z

    .line 1355
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callSubstate_:I

    .line 1356
    return-object p0
.end method

.method public clearCallType()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1230
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallType:Z

    .line 1231
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callType_:I

    .line 1232
    return-object p0
.end method

.method public clearExtras()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    .line 1298
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    .line 1299
    return-object p0
.end method

.method public clearExtrasLength()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1264
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasExtrasLength:Z

    .line 1265
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extrasLength_:I

    .line 1266
    return-object p0
.end method

.method public clearLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    .line 1317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasLocalAbility:Z

    .line 1318
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->localAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1319
    return-object p0
.end method

.method public clearMediaId()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    .line 1371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasMediaId:Z

    .line 1372
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mediaId_:I

    .line 1373
    return-object p0
.end method

.method public clearPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    .line 1337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasPeerAbility:Z

    .line 1338
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->peerAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1339
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1425
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 1427
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getSerializedSize()I

    .line 1429
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->cachedSize:I

    return v0
.end method

.method public getCallDomain()I
    .locals 1

    .prologue
    .line 1240
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callDomain_:I

    return v0
.end method

.method public getCallSubstate()I
    .locals 1

    .prologue
    .line 1347
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callSubstate_:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 1223
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callType_:I

    return v0
.end method

.method public getExtras(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1278
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExtrasCount()I
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExtrasLength()I
    .locals 1

    .prologue
    .line 1256
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extrasLength_:I

    return v0
.end method

.method public getExtrasList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1274
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    return-object v0
.end method

.method public getLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->localAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    return-object v0
.end method

.method public getMediaId()I
    .locals 1

    .prologue
    .line 1363
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mediaId_:I

    return v0
.end method

.method public getPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->peerAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1434
    const/4 v3, 0x0

    .line 1435
    .local v3, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallType()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1436
    const/4 v4, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1439
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallDomain()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1440
    const/4 v4, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallDomain()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1443
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasExtrasLength()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1444
    const/4 v4, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasLength()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1448
    :cond_2
    const/4 v0, 0x0

    .line 1449
    .local v0, "dataSize":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1450
    .local v1, "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1452
    goto :goto_0

    .line 1453
    .end local v1    # "element":Ljava/lang/String;
    :cond_3
    add-int/2addr v3, v0

    .line 1454
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1456
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasLocalAbility()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1457
    const/4 v4, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1460
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasPeerAbility()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1461
    const/4 v4, 0x6

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1464
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallSubstate()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1465
    const/4 v4, 0x7

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallSubstate()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1468
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasMediaId()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1469
    const/16 v4, 0x8

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getMediaId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeSFixed32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1472
    :cond_7
    iput v3, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->cachedSize:I

    .line 1473
    return v3
.end method

.method public hasCallDomain()Z
    .locals 1

    .prologue
    .line 1239
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallDomain:Z

    return v0
.end method

.method public hasCallSubstate()Z
    .locals 1

    .prologue
    .line 1346
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallSubstate:Z

    return v0
.end method

.method public hasCallType()Z
    .locals 1

    .prologue
    .line 1222
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallType:Z

    return v0
.end method

.method public hasExtrasLength()Z
    .locals 1

    .prologue
    .line 1257
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasExtrasLength:Z

    return v0
.end method

.method public hasLocalAbility()Z
    .locals 1

    .prologue
    .line 1306
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasLocalAbility:Z

    return v0
.end method

.method public hasMediaId()Z
    .locals 1

    .prologue
    .line 1364
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasMediaId:Z

    return v0
.end method

.method public hasPeerAbility()Z
    .locals 1

    .prologue
    .line 1326
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasPeerAbility:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1390
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
    .line 1213
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1481
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1482
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1486
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1487
    :sswitch_0
    return-object p0

    .line 1492
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    goto :goto_0

    .line 1496
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallDomain(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    goto :goto_0

    .line 1500
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setExtrasLength(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    goto :goto_0

    .line 1504
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->addExtras(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    goto :goto_0

    .line 1508
    :sswitch_5
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;-><init>()V

    .line 1509
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1510
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setLocalAbility(Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    goto :goto_0

    .line 1514
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    :sswitch_6
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;-><init>()V

    .line 1515
    .restart local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1516
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setPeerAbility(Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    goto :goto_0

    .line 1520
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallSubstate(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    goto :goto_0

    .line 1524
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readSFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setMediaId(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    goto :goto_0

    .line 1482
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x45 -> :sswitch_8
    .end sparse-switch
.end method

.method public setCallDomain(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallDomain:Z

    .line 1243
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callDomain_:I

    .line 1244
    return-object p0
.end method

.method public setCallSubstate(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallSubstate:Z

    .line 1350
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callSubstate_:I

    .line 1351
    return-object p0
.end method

.method public setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallType:Z

    .line 1226
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callType_:I

    .line 1227
    return-object p0
.end method

.method public setExtras(ILjava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1281
    if-nez p2, :cond_0

    .line 1282
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1284
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1285
    return-object p0
.end method

.method public setExtrasLength(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasExtrasLength:Z

    .line 1260
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extrasLength_:I

    .line 1261
    return-object p0
.end method

.method public setLocalAbility(Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .prologue
    .line 1309
    if-nez p1, :cond_0

    .line 1310
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1312
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasLocalAbility:Z

    .line 1313
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->localAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1314
    return-object p0
.end method

.method public setMediaId(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasMediaId:Z

    .line 1367
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mediaId_:I

    .line 1368
    return-object p0
.end method

.method public setPeerAbility(Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .prologue
    .line 1329
    if-nez p1, :cond_0

    .line 1330
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1332
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasPeerAbility:Z

    .line 1333
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->peerAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1334
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
    .line 1396
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1397
    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1399
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallDomain()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1400
    const/4 v2, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallDomain()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1402
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasExtrasLength()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1403
    const/4 v2, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasLength()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 1405
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1406
    .local v0, "element":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 1408
    .end local v0    # "element":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasLocalAbility()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1409
    const/4 v2, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1411
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasPeerAbility()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1412
    const/4 v2, 0x6

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1414
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallSubstate()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1415
    const/4 v2, 0x7

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallSubstate()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1417
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasMediaId()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1418
    const/16 v2, 0x8

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getMediaId()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeSFixed32(II)V

    .line 1420
    :cond_7
    return-void
.end method
