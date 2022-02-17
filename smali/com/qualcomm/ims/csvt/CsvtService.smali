.class public Lcom/qualcomm/ims/csvt/CsvtService;
.super Landroid/app/Service;
.source "CsvtService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/csvt/CsvtService$INotifyEvent;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CALL_ALERTING:I = 0x5

.field private static final EVENT_CALL_DISCONNECTED:I = 0x4

.field private static final EVENT_CALL_STATUS_CHANGED:I = 0x3

.field private static final EVENT_GET_CALL_FORWARDING:I = 0x9

.field private static final EVENT_GET_CALL_WAITING:I = 0x8

.field private static final EVENT_NEW_RINGING_CONNECTION:I = 0x1

.field private static final EVENT_PHONE_STATE_CHANGED:I = 0x2

.field private static final EVENT_SET_CALL_FORWARDING:I = 0x7

.field private static final EVENT_SET_CALL_WAITING:I = 0x6

.field private static final TAG:Ljava/lang/String; = "CsvtService"

.field private static final VDBG:Z = true


# instance fields
.field private final mBinder:Lorg/codeaurora/ims/csvt/ICsvtService$Stub;

.field private mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

.field private mHandler:Landroid/os/Handler;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lorg/codeaurora/ims/csvt/ICsvtServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneCount:I

.field private mPhoneId:I

.field private final mPhonesStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTelephonyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 70
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mPhoneId:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mTelephonyListeners:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mPhonesStates:Ljava/util/List;

    .line 586
    new-instance v0, Lcom/qualcomm/ims/csvt/CsvtService$8;

    invoke-direct {v0, p0}, Lcom/qualcomm/ims/csvt/CsvtService$8;-><init>(Lcom/qualcomm/ims/csvt/CsvtService;)V

    iput-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mBinder:Lorg/codeaurora/ims/csvt/ICsvtService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/ims/csvt/CsvtService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/csvt/CsvtService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mPhonesStates:Ljava/util/List;

    return-object v0
.end method

.method private acquireTelephonyManager()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "CsvtService"

    const-string v1, "acquireTelephonyManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 116
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 117
    const-string v0, "CsvtService"

    const-string v1, "Failed to acquire TelephonyManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mPhoneCount:I

    goto :goto_0
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/qualcomm/ims/csvt/CsvtService$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/ims/csvt/CsvtService$2;-><init>(Lcom/qualcomm/ims/csvt/CsvtService;)V

    iput-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mHandler:Landroid/os/Handler;

    .line 173
    return-void
.end method

.method private createPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 125
    .local v0, "subs":[I
    if-eqz v0, :cond_0

    aget v1, v0, v3

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 126
    new-instance v1, Lcom/qualcomm/ims/csvt/CsvtService$1;

    aget v2, v0, v3

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/ims/csvt/CsvtService$1;-><init>(Lcom/qualcomm/ims/csvt/CsvtService;I)V

    .line 138
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyCallForwardingOptions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/csvt/CallForwardInfoP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, "cfl":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/csvt/CallForwardInfoP;>;"
    new-instance v0, Lcom/qualcomm/ims/csvt/CsvtService$5;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/ims/csvt/CsvtService$5;-><init>(Lcom/qualcomm/ims/csvt/CsvtService;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtService;->notifyListeners(Lcom/qualcomm/ims/csvt/CsvtService$INotifyEvent;)V

    .line 455
    return-void
.end method

.method private notifyError(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/csvt/CsvtService;->notifyCallStatus(I)V

    .line 358
    return-void
.end method

.method private notifyPhoneStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 458
    new-instance v0, Lcom/qualcomm/ims/csvt/CsvtService$6;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/ims/csvt/CsvtService$6;-><init>(Lcom/qualcomm/ims/csvt/CsvtService;I)V

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtService;->notifyListeners(Lcom/qualcomm/ims/csvt/CsvtService$INotifyEvent;)V

    .line 464
    return-void
.end method

.method private onAlertingStateChanged(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 262
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 263
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 264
    .local v1, "isAlerting":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/csvt/CsvtService;->onRingbackTone(Z)V

    .line 265
    return-void
.end method

.method private onCallStatus(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 245
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 246
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 247
    .local v1, "status":Ljava/lang/Integer;
    const-string v2, "CsvtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallStatus: status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/ims/csvt/CsvtService;->notifyCallStatus(I)V

    .line 249
    return-void
.end method

.method private onDisconnect(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 252
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 253
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/ims/csvt/CsvtConnection;

    .line 255
    .local v1, "conn":Lcom/qualcomm/ims/csvt/CsvtConnection;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/qualcomm/ims/csvt/CsvtConnection;->getDisconnectStatus()I

    move-result v2

    .line 257
    .local v2, "status":I
    :goto_0
    const-string v3, "CsvtService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnect: conn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0, v2}, Lcom/qualcomm/ims/csvt/CsvtService;->notifyCallStatus(I)V

    .line 259
    return-void

    .line 255
    .end local v2    # "status":I
    :cond_0
    const/4 v2, 0x4

    goto :goto_0
.end method

.method private onGetCallForwarding(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 343
    const-string v1, "CsvtService"

    const-string v2, "onGetCallForwarding:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 347
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtService;->sendRequestStatus(Landroid/os/AsyncResult;)V

    .line 349
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 350
    const-string v1, "CsvtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetCallForwarding: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-static {v1}, Lcom/qualcomm/ims/csvt/CsvtUtils;->getCfInfoFromUtResult(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/csvt/CsvtService;->notifyCallForwardingOptions(Ljava/util/List;)V

    goto :goto_0
.end method

.method private onGetCallWaiting(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 290
    const-string v2, "CsvtService"

    const-string v3, "OnGetCallWaiting:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 294
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtService;->sendRequestStatus(Landroid/os/AsyncResult;)V

    .line 296
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 297
    const-string v2, "CsvtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetCallWaiting: Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-static {v2}, Lcom/qualcomm/ims/csvt/CsvtUtils;->getCwEnabledFromUtResult(Ljava/lang/Object;)Z

    move-result v1

    .line 300
    .local v1, "enabled":Z
    const-string v2, "CsvtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetCallWaiting: Enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v2, Lcom/qualcomm/ims/csvt/CsvtService$4;

    invoke-direct {v2, p0, v1}, Lcom/qualcomm/ims/csvt/CsvtService$4;-><init>(Lcom/qualcomm/ims/csvt/CsvtService;Z)V

    invoke-virtual {p0, v2}, Lcom/qualcomm/ims/csvt/CsvtService;->notifyListeners(Lcom/qualcomm/ims/csvt/CsvtService$INotifyEvent;)V

    goto :goto_0
.end method

.method private onNewRingingConnection(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 222
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 223
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/ims/csvt/CsvtConnection;

    .line 224
    .local v1, "conn":Lcom/qualcomm/ims/csvt/CsvtConnection;
    const-string v3, ""

    .line 225
    .local v3, "number":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/qualcomm/ims/csvt/CsvtConnection;->getCall()Lcom/android/ims/ImsCall;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/qualcomm/ims/csvt/CsvtConnection;->getCall()Lcom/android/ims/ImsCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 227
    invoke-virtual {v1}, Lcom/qualcomm/ims/csvt/CsvtConnection;->getCall()Lcom/android/ims/ImsCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v5

    const-string v6, "oi"

    invoke-virtual {v5, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    move-object v4, v3

    .line 230
    .local v4, "tmp":Ljava/lang/String;
    const-string v5, "CsvtService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New incoming call from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "qualcomm.intent.action.NEW_CSVT_RINGING_CONNECTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v2, "i":Landroid/content/Intent;
    const-string v5, "connectionAddress"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v2}, Lcom/qualcomm/ims/csvt/CsvtService;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    return-void
.end method

.method private onPhoneStateChanged(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 238
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 239
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 240
    .local v1, "state":Ljava/lang/Integer;
    const-string v2, "CsvtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPhoneStateChanged: state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/csvt/CsvtService;->notifyPhoneStateChanged(I)V

    .line 242
    return-void
.end method

.method private onRingbackTone(Z)V
    .locals 2
    .param p1, "playTone"    # Z

    .prologue
    .line 268
    const-string v0, "CsvtService"

    const-string v1, "onRingbackTone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v0, Lcom/qualcomm/ims/csvt/CsvtService$3;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/ims/csvt/CsvtService$3;-><init>(Lcom/qualcomm/ims/csvt/CsvtService;Z)V

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtService;->notifyListeners(Lcom/qualcomm/ims/csvt/CsvtService$INotifyEvent;)V

    .line 276
    return-void
.end method

.method private onSetCallForwarding(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 312
    const-string v1, "CsvtService"

    const-string v2, "onSetCallForwarding:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 315
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 316
    const-string v1, "CsvtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetCallForwarding: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtService;->sendRequestStatus(Landroid/os/AsyncResult;)V

    .line 321
    return-void
.end method

.method private onSetCallWaiting(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 279
    const-string v1, "CsvtService"

    const-string v2, "OnSetCallWaiting:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 282
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 283
    const-string v1, "CsvtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetCallWaiting: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtService;->sendRequestStatus(Landroid/os/AsyncResult;)V

    .line 287
    return-void
.end method

.method private registerForCallEvents()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    if-nez v0, :cond_0

    .line 177
    const-string v0, "CsvtService"

    const-string v1, "Failed to register for events."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->registerForPhoneStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->registerForCallStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->registerForAlertingState(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerForTelephonyEvents()V
    .locals 4

    .prologue
    .line 142
    iget-object v2, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mPhoneCount:I

    if-ge v0, v2, :cond_2

    .line 144
    iget-object v2, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mPhonesStates:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtService;->createPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    .line 146
    .local v1, "l":Landroid/telephony/PhoneStateListener;
    if-eqz v1, :cond_0

    .line 147
    iget-object v2, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mTelephonyListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v2, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v3, 0x20

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "i":I
    .end local v1    # "l":Landroid/telephony/PhoneStateListener;
    :cond_1
    const-string v2, "CsvtService"

    const-string v3, "Failed to obtain TelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_2
    return-void
.end method

.method private sendErrorStatus(Landroid/os/Message;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 324
    if-eqz p1, :cond_0

    .line 325
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtService;->sendRequestStatus(Landroid/os/AsyncResult;)V

    .line 327
    :cond_0
    return-void
.end method

.method private sendRequestStatus(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 330
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 331
    .local v1, "uo":Landroid/os/Message;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    instance-of v2, v2, Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 332
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 335
    :try_start_0
    iget-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_0
    :goto_1
    return-void

    .line 332
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CsvtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reply failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private unregisterFromTelephonyEvents()V
    .locals 4

    .prologue
    .line 157
    iget-object v2, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mTelephonyListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/PhoneStateListener;

    .line 159
    .local v1, "l":Landroid/telephony/PhoneStateListener;
    iget-object v2, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 162
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Landroid/telephony/PhoneStateListener;
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mTelephonyListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 163
    iget-object v2, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mPhonesStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 164
    return-void
.end method


# virtual methods
.method acceptCall()V
    .locals 4

    .prologue
    .line 405
    const-string v1, "CsvtService"

    const-string v2, "acceptCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-virtual {v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->accept()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CsvtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acceptCall failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v1, -0x4

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/csvt/CsvtService;->notifyError(I)V

    goto :goto_0
.end method

.method dial(Ljava/lang/String;)V
    .locals 8
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 361
    move-object v3, p1

    .line 362
    .local v3, "tmp":Ljava/lang/String;
    const-string v4, "CsvtService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dial: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p0}, Lcom/qualcomm/ims/csvt/CsvtService;->isNonCsvtIdle()Z

    move-result v2

    .line 365
    .local v2, "nonCsvtIdle":Z
    invoke-virtual {p0}, Lcom/qualcomm/ims/csvt/CsvtService;->isIdle()Z

    move-result v0

    .line 366
    .local v0, "csvtIdle":Z
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 367
    const-string v4, "CsvtService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot dial: nonCsvtIdle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "csvtIdle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {p0, v7}, Lcom/qualcomm/ims/csvt/CsvtService;->notifyError(I)V

    .line 380
    :goto_0
    return-void

    .line 375
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-virtual {v4, p1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->dial(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "CsvtService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dial failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-direct {p0, v7}, Lcom/qualcomm/ims/csvt/CsvtService;->notifyError(I)V

    goto :goto_0
.end method

.method public fallback()V
    .locals 4

    .prologue
    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    const/16 v2, 0x58

    invoke-virtual {v1, v2}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->reject(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "CsvtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fallback failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v1, -0x3

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/csvt/CsvtService;->notifyError(I)V

    goto :goto_0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 541
    const-string v3, "CsvtService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallForwardingOption reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 546
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-virtual {v3}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 547
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-static {p1}, Lcom/qualcomm/ims/csvt/CsvtUtils;->getUtConditionFromCFReason(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Lcom/android/ims/ImsUtInterface;->queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v3, "CsvtService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallForwardingOption: Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, p2, v3}, Lcom/qualcomm/ims/csvt/CsvtService;->sendErrorStatus(Landroid/os/Message;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 6
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 557
    const-string v3, "CsvtService"

    const-string v4, "getCallWaiting"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 562
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-virtual {v3}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 563
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v2, v1}, Lcom/android/ims/ImsUtInterface;->queryCallWaiting(Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v3, "CsvtService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallWaiting: Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, p1, v3}, Lcom/qualcomm/ims/csvt/CsvtService;->sendErrorStatus(Landroid/os/Message;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 191
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/csvt/CsvtService;->onNewRingingConnection(Landroid/os/Message;)V

    goto :goto_0

    .line 194
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/csvt/CsvtService;->onPhoneStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 197
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/csvt/CsvtService;->onCallStatus(Landroid/os/Message;)V

    goto :goto_0

    .line 200
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/csvt/CsvtService;->onDisconnect(Landroid/os/Message;)V

    goto :goto_0

    .line 203
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/csvt/CsvtService;->onAlertingStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 206
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/csvt/CsvtService;->onSetCallWaiting(Landroid/os/Message;)V

    goto :goto_0

    .line 209
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/csvt/CsvtService;->onSetCallForwarding(Landroid/os/Message;)V

    goto :goto_0

    .line 212
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/csvt/CsvtService;->onGetCallWaiting(Landroid/os/Message;)V

    goto :goto_0

    .line 215
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/csvt/CsvtService;->onGetCallForwarding(Landroid/os/Message;)V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method hangup()V
    .locals 4

    .prologue
    .line 383
    const-string v1, "CsvtService"

    const-string v2, "hangup "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-virtual {v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->hangup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CsvtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hangup failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v1, -0x2

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/csvt/CsvtService;->notifyError(I)V

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-virtual {v0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->hasActiveCall()Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-virtual {v0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->getPhoneState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNonCsvtIdle()Z
    .locals 4

    .prologue
    .line 503
    const/4 v2, 0x1

    .line 504
    .local v2, "isIdle":Z
    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mPhonesStates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 505
    .local v0, "callState":I
    if-eqz v0, :cond_0

    .line 506
    const/4 v2, 0x0

    .line 510
    .end local v0    # "callState":I
    :cond_1
    return v2
.end method

.method notifyCallStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 467
    new-instance v0, Lcom/qualcomm/ims/csvt/CsvtService$7;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/ims/csvt/CsvtService$7;-><init>(Lcom/qualcomm/ims/csvt/CsvtService;I)V

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtService;->notifyListeners(Lcom/qualcomm/ims/csvt/CsvtService$INotifyEvent;)V

    .line 473
    return-void
.end method

.method notifyListeners(Lcom/qualcomm/ims/csvt/CsvtService$INotifyEvent;)V
    .locals 6
    .param p1, "n"    # Lcom/qualcomm/ims/csvt/CsvtService$INotifyEvent;

    .prologue
    .line 480
    monitor-enter p0

    .line 481
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 482
    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 483
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 485
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/csvt/ICsvtServiceListener;

    invoke-interface {p1, v3}, Lcom/qualcomm/ims/csvt/CsvtService$INotifyEvent;->onNotify(Lorg/codeaurora/ims/csvt/ICsvtServiceListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CsvtService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcast failed. idx: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 491
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 490
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 491
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 492
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    const-string v0, "CsvtService"

    const-string v1, "Csvt Service bound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mBinder:Lorg/codeaurora/ims/csvt/ICsvtService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "CsvtService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    iget v1, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mPhoneId:I

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    .line 99
    invoke-direct {p0}, Lcom/qualcomm/ims/csvt/CsvtService;->createHandler()V

    .line 100
    invoke-direct {p0}, Lcom/qualcomm/ims/csvt/CsvtService;->acquireTelephonyManager()V

    .line 101
    invoke-direct {p0}, Lcom/qualcomm/ims/csvt/CsvtService;->registerForTelephonyEvents()V

    .line 102
    invoke-direct {p0}, Lcom/qualcomm/ims/csvt/CsvtService;->registerForCallEvents()V

    .line 103
    const-string v0, "CsvtService"

    const-string v1, "onCreate: Initialization is completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public registerListener(Lorg/codeaurora/ims/csvt/ICsvtServiceListener;)V
    .locals 3
    .param p1, "l"    # Lorg/codeaurora/ims/csvt/ICsvtServiceListener;

    .prologue
    .line 425
    const-string v0, "CsvtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering listener l = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    if-nez p1, :cond_0

    .line 427
    const-string v0, "CsvtService"

    const-string v1, "Listener registration failed. Listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_0
    return-void

    .line 431
    :cond_0
    monitor-enter p0

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 433
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rejectCall()V
    .locals 4

    .prologue
    .line 394
    const-string v1, "CsvtService"

    const-string v2, "Reject call"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->reject(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CsvtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reject call failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v1, -0x5

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/csvt/CsvtService;->notifyError(I)V

    goto :goto_0
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 9
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "commandInterfaceCFAction"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 518
    const-string v1, "CsvtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallForwardingOption action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 524
    .local v8, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-virtual {v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 525
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-static {p2}, Lcom/qualcomm/ims/csvt/CsvtUtils;->getUtActionFromCFAction(I)I

    move-result v1

    invoke-static {p1}, Lcom/qualcomm/ims/csvt/CsvtUtils;->getUtConditionFromCFReason(I)I

    move-result v2

    const/16 v4, 0x10

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/ims/ImsUtInterface;->updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    .line 531
    :catch_0
    move-exception v7

    .line 532
    .local v7, "e":Lcom/android/ims/ImsException;
    const-string v1, "CsvtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallForwardingOption: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, p5, v1}, Lcom/qualcomm/ims/csvt/CsvtService;->sendErrorStatus(Landroid/os/Message;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 572
    const-string v3, "CsvtService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallWaiting enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 577
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mCt:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-virtual {v3}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 578
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    const/16 v3, 0x10

    invoke-interface {v2, p1, v3, v1}, Lcom/android/ims/ImsUtInterface;->updateCallWaiting(ZILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v3, "CsvtService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallWaiting: Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, p2, v3}, Lcom/qualcomm/ims/csvt/CsvtService;->sendErrorStatus(Landroid/os/Message;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public unregisterListener(Lorg/codeaurora/ims/csvt/ICsvtServiceListener;)V
    .locals 3
    .param p1, "l"    # Lorg/codeaurora/ims/csvt/ICsvtServiceListener;

    .prologue
    .line 437
    const-string v0, "CsvtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering listener l = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    if-nez p1, :cond_0

    .line 439
    const-string v0, "CsvtService"

    const-string v1, "Listener unregistration failed. Listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_0
    return-void

    .line 443
    :cond_0
    monitor-enter p0

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 445
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
