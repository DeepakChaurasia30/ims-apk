.class public Lorg/codeaurora/ims/ImsConfigImpl;
.super Lcom/android/ims/internal/IImsConfig$Stub;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsConfigImpl$1;,
        Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;,
        Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;
    }
.end annotation


# static fields
.field private static final EVENT_QUERY_VT_CALL_QUALITY:I = 0x2

.field private static final EVENT_SET_FEATURE_VALUE:I = 0x3

.field private static final EVENT_SET_VT_CALL_QUALITY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImsConfigImpl"


# instance fields
.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 2
    .param p1, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/ims/internal/IImsConfig$Stub;-><init>()V

    .line 25
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$1;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 33
    return-void
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->onSetFeatureResponseDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method private getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 127
    if-nez p1, :cond_1

    .line 128
    const-string v0, "ImsConfigImpl"

    const-string v1, "AsyncResult is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    const-string v0, "ImsConfigImpl"

    const-string v1, "getImsConfigListener returns null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 129
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/ims/ImsConfigListener;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsConfigListener;

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->listener:Lcom/android/ims/ImsConfigListener;

    instance-of v0, v0, Lcom/android/ims/ImsConfigListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->listener:Lcom/android/ims/ImsConfigListener;

    goto :goto_0
.end method

.method private getOperationStatus(Z)I
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 122
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 79
    if-eqz p1, :cond_2

    .line 81
    :try_start_0
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v1

    .line 82
    .local v1, "status":I
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_1

    const/4 v0, -0x1

    .line 85
    .local v0, "result":I
    :goto_1
    invoke-interface {p1, v1, v0}, Lcom/android/ims/ImsConfigListener;->onGetVideoQuality(II)V

    .line 92
    .end local v0    # "result":I
    .end local v1    # "status":I
    :goto_2
    return-void

    .line 81
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 82
    .restart local v1    # "status":I
    :cond_1
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 86
    .end local v1    # "status":I
    :catch_0
    move-exception v2

    .line 87
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "ImsConfigImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGetVideoCallQualityDone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 90
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    const-string v3, "ImsConfigImpl"

    const-string v4, "onGetVideoCallQualityDone listener is not valid !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private onSetFeatureResponseDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 108
    if-eqz p1, :cond_1

    .line 110
    :try_start_0
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v1

    .line 111
    .local v1, "status":I
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    .line 112
    .local v0, "f":Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;
    iget v3, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->feature:I

    iget v4, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->network:I

    iget v5, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->value:I

    invoke-interface {p1, v3, v4, v5, v1}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0    # "f":Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;
    .end local v1    # "status":I
    :goto_1
    return-void

    .line 110
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "ImsConfigImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSetFeatureResponseDone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 117
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string v3, "ImsConfigImpl"

    const-string v4, "onSetFeatureResponseDone listener is not valid !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 95
    if-eqz p1, :cond_1

    .line 97
    :try_start_0
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v0

    .line 98
    .local v0, "status":I
    invoke-interface {p1, v0}, Lcom/android/ims/ImsConfigListener;->onSetVideoQuality(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "status":I
    :goto_1
    return-void

    .line 97
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "ImsConfigImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetVideoCallQualityDone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 103
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string v2, "ImsConfigImpl"

    const-string v3, "onSetVideoCallQualityDone listener is not valid !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 188
    return-void
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProvisionedValue(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .locals 3
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 145
    const-string v0, "ImsConfigImpl"

    const-string v1, "getVideoQuality"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVideoQuality(Landroid/os/Message;)V

    .line 148
    return-void
.end method

.method public getVolteProvisioned()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 7
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    const/16 v1, 0x12

    const/4 v0, 0x1

    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, "srvType":I
    if-ne p1, v0, :cond_0

    .line 194
    const/4 v2, 0x3

    .line 196
    :cond_0
    const/4 v4, 0x0

    .line 197
    .local v4, "enabled":I
    if-ne p3, v0, :cond_1

    .line 198
    const/4 v4, 0x2

    .line 200
    :cond_1
    const/16 v3, 0xe

    .line 201
    .local v3, "act":I
    if-ne p2, v1, :cond_2

    .line 202
    const/16 v3, 0x13

    .line 204
    :cond_2
    const/16 v0, 0xd

    if-eq p2, v0, :cond_3

    if-ne p2, v1, :cond_4

    .line 206
    :cond_3
    const-string v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetServiceStatus = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    new-instance v6, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    invoke-direct {v6, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;-><init>(IIILcom/android/ims/ImsConfigListener;)V

    invoke-virtual {v1, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->setServiceStatus(Landroid/os/Message;IIII)V

    .line 211
    :cond_4
    return-void
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public setProvisionedValue(II)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .locals 3
    .param p1, "quality"    # I
    .param p2, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 155
    const-string v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoQuality qualiy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->setVideoQuality(ILandroid/os/Message;)V

    .line 158
    return-void
.end method
