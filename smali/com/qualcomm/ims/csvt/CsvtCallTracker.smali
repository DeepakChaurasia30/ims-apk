.class public Lcom/qualcomm/ims/csvt/CsvtCallTracker;
.super Landroid/os/Handler;
.source "CsvtCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;
    }
.end annotation


# static fields
.field private static final ACTION_NEW_CSVT_RINGING_CALL:Ljava/lang/String; = "org.codeaurora.ims.csvt.NEW_CSVT_RINGING_CALL"

.field private static final EVENT_CALL_DISCONNECTED:I = 0x2

.field private static final EVENT_CALL_STATE_CHANGED:I = 0x1

.field private static final EVENT_DIAL_REQUEST:I = 0x3

.field private static final EVENT_NEW_INCOMING_RINGING:I = 0x0

.field private static final EVENT_OPEN_IMS_SERVICE_REQ:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CsvtCallTracker"


# instance fields
.field private final mAlertingStateRegistrants:Landroid/os/RegistrantList;

.field private final mCallStatusRegistrants:Landroid/os/RegistrantList;

.field private mContext:Landroid/content/Context;

.field private final mDisconnectRegistrants:Landroid/os/RegistrantList;

.field private mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

.field private mImsCallListener:Lcom/android/ims/ImsCall$Listener;

.field private mImsConnectionStateListener:Lcom/android/ims/ImsConnectionStateListener;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private final mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

.field private mPhoneId:I

.field private final mPhoneStateRegistrants:Landroid/os/RegistrantList;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

.field private mServiceId:I

.field private mState:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 71
    new-instance v1, Lcom/qualcomm/ims/csvt/CsvtCallTracker$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker$1;-><init>(Lcom/qualcomm/ims/csvt/CsvtCallTracker;)V

    iput-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    iput v2, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mState:I

    .line 102
    iput v2, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mPhoneId:I

    .line 103
    const/4 v1, -0x1

    iput v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mServiceId:I

    .line 105
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mPhoneStateRegistrants:Landroid/os/RegistrantList;

    .line 107
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mCallStatusRegistrants:Landroid/os/RegistrantList;

    .line 109
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    .line 111
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 113
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mAlertingStateRegistrants:Landroid/os/RegistrantList;

    .line 521
    new-instance v1, Lcom/qualcomm/ims/csvt/CsvtCallTracker$2;

    invoke-direct {v1, p0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker$2;-><init>(Lcom/qualcomm/ims/csvt/CsvtCallTracker;)V

    iput-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    .line 561
    new-instance v1, Lcom/qualcomm/ims/csvt/CsvtCallTracker$3;

    invoke-direct {v1, p0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker$3;-><init>(Lcom/qualcomm/ims/csvt/CsvtCallTracker;)V

    iput-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mImsConnectionStateListener:Lcom/android/ims/ImsConnectionStateListener;

    .line 131
    if-nez p1, :cond_0

    .line 132
    const-string v1, "CsvtCallTracker"

    const-string v2, "Cannot construct with null context!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 136
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mContext:Landroid/content/Context;

    .line 137
    iput p2, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mPhoneId:I

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "org.codeaurora.ims.csvt.NEW_CSVT_RINGING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    invoke-direct {p0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->initializeImsService()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/qualcomm/ims/csvt/CsvtCallTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    .prologue
    .line 64
    iget v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mPhoneId:I

    return v0
.end method

.method static synthetic access$002(Lcom/qualcomm/ims/csvt/CsvtCallTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/csvt/CsvtCallTracker;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mPhoneId:I

    return p1
.end method

.method static synthetic access$100(Lcom/qualcomm/ims/csvt/CsvtCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->cleanupCalls()V

    return-void
.end method

.method static synthetic access$202(Lcom/qualcomm/ims/csvt/CsvtCallTracker;Lcom/android/ims/ImsManager;)Lcom/android/ims/ImsManager;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/csvt/CsvtCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsManager;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/qualcomm/ims/csvt/CsvtCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->initializeImsService()V

    return-void
.end method

.method static synthetic access$800(Lcom/qualcomm/ims/csvt/CsvtCallTracker;Lcom/android/ims/ImsCall;Lcom/qualcomm/ims/csvt/CsvtConnection$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/csvt/CsvtCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;
    .param p2, "x2"    # Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->sendCallStateChangedEvent(Lcom/android/ims/ImsCall;Lcom/qualcomm/ims/csvt/CsvtConnection$State;)V

    return-void
.end method

.method static synthetic access$900(Lcom/qualcomm/ims/csvt/CsvtCallTracker;Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/csvt/CsvtCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;
    .param p2, "x2"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->sendCallDisconnectedEvent(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method private cleanupCalls()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 513
    iput-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    .line 514
    iput-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    .line 515
    invoke-direct {p0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->updatePhoneState()V

    .line 516
    return-void
.end method

.method private createIncomingCallPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.ims.csvt.NEW_CSVT_RINGING_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private findConnFromCall(Lcom/android/ims/ImsCall;)Lcom/qualcomm/ims/csvt/CsvtConnection;
    .locals 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, "conn":Lcom/qualcomm/ims/csvt/CsvtConnection;
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-virtual {v1}, Lcom/qualcomm/ims/csvt/CsvtConnection;->getCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 381
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    .line 386
    :cond_0
    :goto_0
    return-object v0

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-virtual {v1}, Lcom/qualcomm/ims/csvt/CsvtConnection;->getCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    goto :goto_0
.end method

.method private hangup(Lcom/qualcomm/ims/csvt/CsvtConnection;)V
    .locals 5
    .param p1, "conn"    # Lcom/qualcomm/ims/csvt/CsvtConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 359
    const-string v2, "CsvtCallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangup conn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/qualcomm/ims/csvt/CsvtConnection;->getCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    if-nez v2, :cond_1

    .line 362
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "No valid call to hangup!"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 366
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/ims/csvt/CsvtConnection;->getCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 367
    .local v0, "call":Lcom/android/ims/ImsCall;
    const/16 v2, 0x1f5

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall;->terminate(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    return-void

    .line 368
    .end local v0    # "call":Lcom/android/ims/ImsCall;
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangup failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private initializeImsService()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->sendMessage(Landroid/os/Message;)Z

    .line 157
    return-void
.end method

.method private notifyCallStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mCallStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method private notifyPhoneStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mPhoneStateRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method private onCallDisconnected(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    const/4 v4, 0x0

    .line 474
    const-string v1, "CsvtCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallDisconnected: call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->findConnFromCall(Lcom/android/ims/ImsCall;)Lcom/qualcomm/ims/csvt/CsvtConnection;

    move-result-object v0

    .line 476
    .local v0, "conn":Lcom/qualcomm/ims/csvt/CsvtConnection;
    const-string v1, "CsvtCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallDisconnected: ringingConn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fgConn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " changed conn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    if-nez v0, :cond_0

    .line 480
    const-string v1, "CsvtCallTracker"

    const-string v2, "onCallDisconnected: No connection found!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :goto_0
    return-void

    .line 484
    :cond_0
    invoke-virtual {v0, p2}, Lcom/qualcomm/ims/csvt/CsvtConnection;->onDisconnect(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 485
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    if-ne v0, v1, :cond_2

    .line 486
    const-string v1, "CsvtCallTracker"

    const-string v2, "onCallDisconnected: Ringing call disconnected."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iput-object v4, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    .line 492
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->updatePhoneState()V

    goto :goto_0

    .line 488
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    if-ne v0, v1, :cond_1

    .line 489
    const-string v1, "CsvtCallTracker"

    const-string v2, "onCallDisconnected: FG call disconnected."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iput-object v4, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    goto :goto_1
.end method

.method private onCallStateChanged(Lcom/android/ims/ImsCall;Lcom/qualcomm/ims/csvt/CsvtConnection$State;)V
    .locals 5
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    .prologue
    const/4 v4, 0x0

    .line 442
    const-string v1, "CsvtCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallStateChanged: call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->findConnFromCall(Lcom/android/ims/ImsCall;)Lcom/qualcomm/ims/csvt/CsvtConnection;

    move-result-object v0

    .line 444
    .local v0, "conn":Lcom/qualcomm/ims/csvt/CsvtConnection;
    const-string v1, "CsvtCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallStateChanged: ringingConn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fgConn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " changed conn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    if-nez v0, :cond_0

    .line 449
    const-string v1, "CsvtCallTracker"

    const-string v2, "onCallStateChanged: No connection found!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :goto_0
    return-void

    .line 453
    :cond_0
    sget-object v1, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->ACTIVE:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    if-ne p2, v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    if-ne v0, v1, :cond_1

    .line 455
    const-string v1, "CsvtCallTracker"

    const-string v2, "onCallStateChanged: Ringing call moved to active"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iput-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    .line 457
    iput-object v4, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    if-eqz v1, :cond_2

    .line 462
    const-string v1, "CsvtCallTracker"

    const-string v2, "onCallStateChanged: Ringing connection still available!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iput-object v4, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    .line 470
    :cond_2
    invoke-virtual {v0, p2}, Lcom/qualcomm/ims/csvt/CsvtConnection;->setState(Lcom/qualcomm/ims/csvt/CsvtConnection$State;)V

    goto :goto_0
.end method

.method private onDial(Ljava/lang/String;)Lcom/qualcomm/ims/csvt/CsvtConnection;
    .locals 8
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 288
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    .line 290
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    .line 291
    .local v2, "numbers":[Ljava/lang/String;
    iget-object v4, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget v5, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mServiceId:I

    const/4 v6, 0x1

    const/4 v7, 0x4

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/ims/ImsManager;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    .line 293
    .local v3, "profile":Landroid/telephony/ims/ImsCallProfile;
    const-string v4, "oir"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 294
    const-string v4, "call_domain"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 296
    iget-object v4, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget v5, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mServiceId:I

    iget-object v6, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v4, v5, v3, v2, v6}, Lcom/android/ims/ImsManager;->makeCall(ILandroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 298
    .local v0, "call":Lcom/android/ims/ImsCall;
    const-string v4, "CsvtCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeCall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v4, Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-direct {v4, p0, v0}, Lcom/qualcomm/ims/csvt/CsvtConnection;-><init>(Lcom/qualcomm/ims/csvt/CsvtCallTracker;Lcom/android/ims/ImsCall;)V

    iput-object v4, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    .line 300
    iget-object v4, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    sget-object v5, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->DIALING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    invoke-virtual {v4, v5}, Lcom/qualcomm/ims/csvt/CsvtConnection;->setState(Lcom/qualcomm/ims/csvt/CsvtConnection$State;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v0    # "call":Lcom/android/ims/ImsCall;
    .end local v2    # "numbers":[Ljava/lang/String;
    .end local v3    # "profile":Landroid/telephony/ims/ImsCallProfile;
    :goto_0
    iget-object v4, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    if-nez v4, :cond_0

    .line 305
    const/4 v4, -0x1

    invoke-direct {p0, v4}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->notifyCallStatus(I)V

    .line 307
    :cond_0
    iget-object v4, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    return-object v4

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "CsvtCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dial: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onNewIncomingIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 421
    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mServiceId:I

    if-gez v3, :cond_1

    .line 422
    :cond_0
    const-string v3, "CsvtCallTracker"

    const-string v4, "onNewIncomingIntent: ImsManager not initialised"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget v4, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mServiceId:I

    iget-object v5, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v3, v4, p1, v5}, Lcom/android/ims/ImsManager;->takeCall(ILandroid/content/Intent;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 428
    .local v0, "call":Lcom/android/ims/ImsCall;
    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    if-eqz v3, :cond_2

    sget-object v2, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->WAITING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    .line 431
    .local v2, "state":Lcom/qualcomm/ims/csvt/CsvtConnection$State;
    :goto_0
    new-instance v3, Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-direct {v3, p0, v0}, Lcom/qualcomm/ims/csvt/CsvtConnection;-><init>(Lcom/qualcomm/ims/csvt/CsvtCallTracker;Lcom/android/ims/ImsCall;)V

    iput-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    .line 432
    const-string v3, "CsvtCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNewIncomingIntent: new ringing conn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-virtual {v3, v2}, Lcom/qualcomm/ims/csvt/CsvtConnection;->setState(Lcom/qualcomm/ims/csvt/CsvtConnection$State;)V

    .line 439
    .end local v0    # "call":Lcom/android/ims/ImsCall;
    .end local v2    # "state":Lcom/qualcomm/ims/csvt/CsvtConnection$State;
    :goto_1
    return-void

    .line 428
    .restart local v0    # "call":Lcom/android/ims/ImsCall;
    :cond_2
    sget-object v2, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->INCOMING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    .end local v0    # "call":Lcom/android/ims/ImsCall;
    :catch_0
    move-exception v1

    .line 436
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "CsvtCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive : exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private openImsService()V
    .locals 5

    .prologue
    .line 160
    const-string v1, "CsvtCallTracker"

    const-string v2, "openImsService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "CsvtCallTracker"

    const-string v2, "openImsService: ImsManager already opened"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->createIncomingCallPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mImsConnectionStateListener:Lcom/android/ims/ImsConnectionStateListener;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/ims/ImsManager;->open(ILandroid/app/PendingIntent;Lcom/android/ims/ImsConnectionStateListener;)I

    move-result v1

    iput v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mServiceId:I

    .line 171
    const-string v1, "CsvtCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openImsService: serviceid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mServiceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v1, "CsvtCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    goto :goto_0
.end method

.method private sendCallDisconnectedEvent(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 503
    new-instance v0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;-><init>(Lcom/qualcomm/ims/csvt/CsvtCallTracker$1;)V

    .line 504
    .local v0, "msgObj":Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;
    invoke-static {v0, p1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;->access$402(Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    .line 505
    invoke-static {v0, p2}, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;->access$602(Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    .line 506
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->sendMessage(Landroid/os/Message;)Z

    .line 507
    return-void
.end method

.method private sendCallStateChangedEvent(Lcom/android/ims/ImsCall;Lcom/qualcomm/ims/csvt/CsvtConnection$State;)V
    .locals 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    .prologue
    .line 496
    new-instance v0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;-><init>(Lcom/qualcomm/ims/csvt/CsvtCallTracker$1;)V

    .line 497
    .local v0, "msgObj":Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;
    invoke-static {v0, p1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;->access$402(Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    .line 498
    invoke-static {v0, p2}, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;->access$502(Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;Lcom/qualcomm/ims/csvt/CsvtConnection$State;)Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    .line 499
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->sendMessage(Landroid/os/Message;)Z

    .line 500
    return-void
.end method

.method private updatePhoneState()V
    .locals 4

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "newState":I
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-virtual {v1}, Lcom/qualcomm/ims/csvt/CsvtConnection;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    const/4 v0, 0x1

    .line 256
    :cond_0
    :goto_0
    const-string v1, "CsvtCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhonState: Old state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mState:I

    if-eq v0, v1, :cond_1

    .line 258
    iput v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mState:I

    .line 259
    iget v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mState:I

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->notifyPhoneStateChanged(I)V

    .line 261
    :cond_1
    return-void

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-virtual {v1}, Lcom/qualcomm/ims/csvt/CsvtConnection;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method accept()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 312
    const-string v2, "CsvtCallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acceptCall: ringin conn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v2, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-virtual {v2}, Lcom/qualcomm/ims/csvt/CsvtConnection;->getCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    if-nez v2, :cond_1

    .line 315
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "No ringing call to accept!"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-virtual {v2}, Lcom/qualcomm/ims/csvt/CsvtConnection;->getCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 320
    .local v0, "call":Lcom/android/ims/ImsCall;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall;->accept(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    return-void

    .line 321
    .end local v0    # "call":Lcom/android/ims/ImsCall;
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to accept call. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method declared-synchronized dial(Ljava/lang/String;)V
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    const-string v0, "CsvtCallTracker"

    const-string v1, "dial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v0, :cond_0

    .line 280
    const-string v0, "CsvtCallTracker"

    const-string v1, "dial: Ims service not opened"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->notifyCallStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :goto_0
    monitor-exit p0

    return-void

    .line 283
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    invoke-virtual {p0, v0, p1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 179
    const-string v0, "CsvtCallTracker"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 273
    const-string v0, "CsvtCallTracker"

    const-string v1, "CsvtCallTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mState:I

    return v0
.end method

.method getUtInterface()Lcom/android/ims/ImsUtInterface;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 588
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v1, :cond_0

    .line 589
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No ims manager"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    iget v2, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mServiceId:I

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->getSupplementaryServiceConfiguration(I)Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 593
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 391
    const-string v1, "CsvtCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 417
    :goto_0
    return-void

    .line 395
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->onNewIncomingIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 399
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;

    .line 400
    .local v0, "callObj":Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;
    invoke-static {v0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;->access$400(Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-static {v0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;->access$500(Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;)Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->onCallStateChanged(Lcom/android/ims/ImsCall;Lcom/qualcomm/ims/csvt/CsvtConnection$State;)V

    goto :goto_0

    .line 404
    .end local v0    # "callObj":Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;

    .line 405
    .restart local v0    # "callObj":Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;
    invoke-static {v0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;->access$400(Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-static {v0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;->access$600(Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->onCallDisconnected(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 409
    .end local v0    # "callObj":Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->onDial(Ljava/lang/String;)Lcom/qualcomm/ims/csvt/CsvtConnection;

    goto :goto_0

    .line 413
    :pswitch_4
    invoke-direct {p0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->openImsService()V

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method hangup()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 343
    const-string v1, "CsvtCallTracker"

    const-string v2, "hangup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "conn":Lcom/qualcomm/ims/csvt/CsvtConnection;
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-virtual {v1}, Lcom/qualcomm/ims/csvt/CsvtConnection;->getCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    .line 351
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 352
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "No valid call to hangup!"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-virtual {v1}, Lcom/qualcomm/ims/csvt/CsvtConnection;->getCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    goto :goto_0

    .line 355
    :cond_2
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->hangup(Lcom/qualcomm/ims/csvt/CsvtConnection;)V

    .line 356
    return-void
.end method

.method public hasActiveCall()Z
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    iget-object v0, v0, Lcom/qualcomm/ims/csvt/CsvtConnection;->mState:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    sget-object v1, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->ACTIVE:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyAlertingState(Z)V
    .locals 2
    .param p1, "isAlerting"    # Z

    .prologue
    .line 245
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mAlertingStateRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method notifyDisconnected(Lcom/qualcomm/ims/csvt/CsvtConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/qualcomm/ims/csvt/CsvtConnection;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method notifyNewRingingConnection(Lcom/qualcomm/ims/csvt/CsvtConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/qualcomm/ims/csvt/CsvtConnection;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method onConnectionStateChanged(Lcom/qualcomm/ims/csvt/CsvtConnection;)V
    .locals 2
    .param p1, "conn"    # Lcom/qualcomm/ims/csvt/CsvtConnection;

    .prologue
    .line 264
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mForegroundConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-virtual {v0}, Lcom/qualcomm/ims/csvt/CsvtConnection;->getState()Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->ACTIVE:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    if-ne v0, v1, :cond_0

    .line 266
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->notifyCallStatus(I)V

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->updatePhoneState()V

    .line 269
    return-void
.end method

.method public registerForAlertingState(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mAlertingStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    return-void
.end method

.method public registerForCallStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mCallStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 201
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 226
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 214
    return-void
.end method

.method public registerForPhoneStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mPhoneStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 189
    return-void
.end method

.method reject(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 327
    const-string v2, "CsvtCallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject reason ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v2, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-virtual {v2}, Lcom/qualcomm/ims/csvt/CsvtConnection;->getCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    if-nez v2, :cond_1

    .line 330
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    .line 331
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "No ringing call to reject!"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 335
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mRingingConn:Lcom/qualcomm/ims/csvt/CsvtConnection;

    invoke-virtual {v2}, Lcom/qualcomm/ims/csvt/CsvtConnection;->getCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 336
    .local v0, "call":Lcom/android/ims/ImsCall;
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->reject(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    return-void

    .line 337
    .end local v0    # "call":Lcom/android/ims/ImsCall;
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public unegisterForPhoneStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mPhoneStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 193
    return-void
.end method

.method public unregisterForAlertingState(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mAlertingStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 242
    return-void
.end method

.method public unregisterForCallStatus(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mCallStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 205
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 230
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 218
    return-void
.end method
