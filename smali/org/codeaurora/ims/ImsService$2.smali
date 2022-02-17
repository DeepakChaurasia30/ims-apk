.class Lorg/codeaurora/ims/ImsService$2;
.super Lcom/android/ims/internal/IImsService$Stub;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsService;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsService;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public close(I)V
    .locals 0
    .param p1, "serviceId"    # I

    .prologue
    .line 271
    return-void
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    .line 337
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 338
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 339
    const-string v1, "ImsService"

    const-string v2, "Invalid ServiceId "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v1, 0x0

    .line 342
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    goto :goto_0
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 355
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 356
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 357
    const-string v1, "ImsService"

    const-string v2, "Invalid ServiceId "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v1, 0x0

    .line 360
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    goto :goto_0
.end method

.method public getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 394
    const/4 v0, 0x1

    .line 395
    .local v0, "default_subscription":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v1

    return-object v1
.end method

.method public getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .locals 4
    .param p1, "serviceId"    # I

    .prologue
    .line 419
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 420
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 421
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEcbmInterface: Invalid argument "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v1, 0x0

    .line 424
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    goto :goto_0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 370
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 371
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 372
    :cond_0
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid arguments "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v1, 0x0

    .line 375
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getPendingSession(ILjava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    goto :goto_0
.end method

.method public getUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 4
    .param p1, "serviceId"    # I

    .prologue
    .line 382
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 383
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 384
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid argument "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v1, 0x0

    .line 387
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getUtInterface()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object v1

    goto :goto_0
.end method

.method public isConnected(III)Z
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public isOpened(I)Z
    .locals 1
    .param p1, "serviceId"    # I

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/codeaurora/ims/ImsService$2;->openForSub(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v0

    return v0
.end method

.method public openForSub(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 5
    .param p1, "subscription"    # I
    .param p2, "serviceClass"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 251
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p2, p3, p4}, Lorg/codeaurora/ims/ImsServiceSub;->getServiceId(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v0

    .line 254
    .local v0, "serviceId":I
    if-lez v0, :cond_0

    .line 255
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object v3, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_0
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->setActiveSub(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 259
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open returns serviceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v0
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 309
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 310
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 311
    const-string v1, "ImsService"

    const-string v2, "Invalid ServiceId "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    goto :goto_0
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 428
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 429
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 430
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid arguments "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->setUiTTYMode(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public turnOffIms(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 411
    const/4 v0, 0x1

    .line 412
    .local v0, "default_subscription":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->turnOffIms()V

    .line 413
    return-void
.end method

.method public turnOnIms(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 402
    const/4 v0, 0x1

    .line 403
    .local v0, "default_subscription":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->turnOnIms()V

    .line 404
    return-void
.end method
