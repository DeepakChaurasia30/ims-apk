.class public Lorg/codeaurora/ims/ImsServiceSub;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;
    }
.end annotation


# static fields
.field private static final CODE_SERVICE_CLASS_NOT_SUPPORTED:I = -0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceSub"

.field private static final SERVICE_TYPE_MAX:I = 0x5


# instance fields
.field private DBG:Z

.field private final EVENT_CALL_MODIFY:I

.field private final EVENT_CALL_STATE_CHANGE:I

.field private final EVENT_GET_CURRENT_CALLS:I

.field private final EVENT_GET_SRV_STATUS:I

.field private final EVENT_HANDOVER_STATE_CHANGED:I

.field private final EVENT_IMS_STATE_CHANGED:I

.field private final EVENT_IMS_STATE_DONE:I

.field private final EVENT_MWI:I

.field private final EVENT_REFRESH_CONF_INFO:I

.field private final EVENT_SET_IMS_STATE:I

.field private final EVENT_SET_SRV_STATUS:I

.field private final EVENT_SRV_STATUS_UPDATE:I

.field private final EVENT_SUPP_SRV_UPDATE:I

.field private final EVENT_TTY_STATE_CHANGED:I

.field private final MAX_FEATURES_SUPPORTED:I

.field protected mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field mDisabledFeatures:[I

.field mEnabledFeatures:[I

.field private mHandler:Landroid/os/Handler;

.field private mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

.field private mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

.field private mMwiResponse:Lorg/codeaurora/ims/Mwi;

.field private mServiceIdTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/ims/ImsServiceClassTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

.field protected mSub:I

.field private mTrackerTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/ims/ImsServiceClassTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 6
    .param p1, "sub"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->DBG:Z

    .line 39
    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    .line 50
    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    .line 53
    iput v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->MAX_FEATURES_SUPPORTED:I

    .line 55
    iput v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_STATE_CHANGE:I

    .line 56
    iput v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_IMS_STATE_CHANGED:I

    .line 57
    iput v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_IMS_STATE_DONE:I

    .line 58
    const/4 v0, 0x4

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SRV_STATUS_UPDATE:I

    .line 59
    const/4 v0, 0x5

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_SRV_STATUS:I

    .line 60
    iput v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_SRV_STATUS:I

    .line 61
    const/4 v0, 0x7

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CURRENT_CALLS:I

    .line 62
    const/16 v0, 0x8

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SUPP_SRV_UPDATE:I

    .line 63
    const/16 v0, 0x9

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_IMS_STATE:I

    .line 64
    const/16 v0, 0xa

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_TTY_STATE_CHANGED:I

    .line 65
    const/16 v0, 0xb

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_REFRESH_CONF_INFO:I

    .line 67
    const/16 v0, 0xc

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_HANDOVER_STATE_CHANGED:I

    .line 68
    const/16 v0, 0xd

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_MODIFY:I

    .line 69
    const/16 v0, 0xe

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_MWI:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSub:I

    .line 74
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    .line 82
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    .line 95
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSub:I

    .line 96
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 98
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;-><init>(Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 99
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 108
    new-instance v0, Lorg/codeaurora/ims/ImsEcbmImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsEcbmImpl;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

    .line 111
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->createUtInterface(Lorg/codeaurora/ims/ImsSenderRxr;)V

    .line 114
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 117
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMwi(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 121
    new-instance v0, Lorg/codeaurora/ims/Mwi;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    .line 124
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 127
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    .line 128
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryServiceStatus(Landroid/os/Message;)V

    .line 129
    return-void

    .line 74
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 82
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSrvStatusUpdate(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    return-void
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCalls(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSuppSvc(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleTtyModeChange(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleHandover(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$700(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method static synthetic access$800(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleMwiNotification(Landroid/os/Message;)V

    return-void
.end method

.method private createFeatureCapabilityCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 292
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$1;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsServiceSub$1;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 303
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "ImsServiceSubcreateFeatureCapabilityCallBackThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 304
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 305
    return-void
.end method

.method private createVoiceMessageUpdateCallbackThread(Lcom/android/ims/internal/IImsRegistrationListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p2, "count"    # I

    .prologue
    .line 319
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub$2;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lcom/android/ims/internal/IImsRegistrationListener;I)V

    .line 329
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "ImsServiceSubcreateVoiceMessageUpdateCallbackThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 330
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 331
    return-void
.end method

.method private handleCalls(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    .line 484
    const-string v7, "ImsServiceSub"

    const-string v8, ">handleCalls"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 487
    .local v3, "dcList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_0

    .line 488
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 499
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v5, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v1, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    if-eqz v0, :cond_2

    .line 503
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/DriverCallIms;

    .line 504
    .local v2, "dc":Lorg/codeaurora/ims/DriverCallIms;
    const-string v7, "ImsServiceSub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCalls: dc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    if-eqz v2, :cond_1

    iget-object v7, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v7, :cond_1

    iget-object v7, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v7, v7, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v7, v11, :cond_1

    iget-object v7, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v7, v7, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    if-ne v7, v10, :cond_1

    .line 508
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 489
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .end local v1    # "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_0
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/ImsServiceSub;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    goto :goto_0

    .line 510
    .restart local v1    # "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .restart local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_1
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 519
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 520
    .local v6, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v6, :cond_5

    .line 528
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 529
    const-string v7, "ImsServiceSub"

    const-string v8, "Call for non-registered service class MMTEL"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_3
    :goto_2
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    check-cast v6, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 537
    .restart local v6    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v6, :cond_6

    .line 538
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 539
    const-string v7, "ImsServiceSub"

    const-string v8, "Call for non-registered service class CSVT"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .end local v1    # "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .end local v5    # "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .end local v6    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_4
    :goto_3
    return-void

    .line 533
    .restart local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .restart local v1    # "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .restart local v5    # "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .restart local v6    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_5
    invoke-virtual {v6, v5}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleCalls(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 543
    :cond_6
    invoke-virtual {v6, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleCalls(Ljava/util/ArrayList;)V

    goto :goto_3
.end method

.method private handleHandover(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 552
    const-string v2, "ImsServiceSub"

    const-string v3, "handleHandover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v0, 0x0

    .line 554
    .local v0, "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 555
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 557
    .restart local v0    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 558
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 559
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleHandover(Lorg/codeaurora/ims/ImsQmiIF$Handover;)V

    .line 570
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 562
    .restart local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_0
    const-string v2, "ImsServiceSub"

    const-string v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 567
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_1
    const-string v2, "ImsServiceSub"

    const-string v3, "AsyncResult exception in handleHandover"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V
    .locals 4
    .param p1, "cm"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 704
    const-string v1, "ImsServiceSub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCallModifyRequest("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 707
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V

    .line 708
    return-void
.end method

.method private handleMwiNotification(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 854
    if-eqz p1, :cond_4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_4

    .line 855
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 856
    .local v0, "arMwiUpdate":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_3

    .line 857
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 858
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    .line 859
    .local v3, "mwiIF":Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummaryCount()I

    move-result v4

    .line 860
    .local v4, "summaryCount":I
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    new-array v6, v4, [Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    iput-object v6, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    .line 861
    const-string v5, "ImsServiceSub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMwiNotification summaryCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 864
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    new-instance v6, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    invoke-direct {v6}, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;-><init>()V

    aput-object v6, v5, v2

    .line 865
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v5, v5, v2

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getMessageType()I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    .line 867
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v5, v5, v2

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getNewMessage()I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    .line 869
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v5, v5, v2

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getOldMessage()I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldMessage:I

    .line 871
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v5, v5, v2

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getNewUrgent()I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    .line 873
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v5, v5, v2

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getOldUrgent()I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldUrgent:I

    .line 875
    const-string v5, "ImsServiceSub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Message Summary = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v8, v8, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Lorg/codeaurora/ims/Mwi;->summaryToString(Lorg/codeaurora/ims/Mwi$MwiMessageSummary;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 879
    :cond_0
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetailCount()I

    move-result v1

    .line 880
    .local v1, "detailsCount":I
    const-string v5, "ImsServiceSub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMwiNotification detailsCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    new-array v6, v1, [Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    iput-object v6, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    .line 882
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 883
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    new-instance v6, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    invoke-direct {v6}, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;-><init>()V

    aput-object v6, v5, v2

    .line 884
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getToAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mToAddress:Ljava/lang/String;

    .line 886
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getFromAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mFromAddress:Ljava/lang/String;

    .line 888
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getSubject()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mSubject:Ljava/lang/String;

    .line 890
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getDate()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mDate:Ljava/lang/String;

    .line 891
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getPriority()I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mPriority:I

    .line 893
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageId:Ljava/lang/String;

    .line 895
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageType()I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageType:I

    .line 897
    const-string v5, "ImsServiceSub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Message Details = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v8, v8, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Lorg/codeaurora/ims/Mwi;->detailsToString(Lorg/codeaurora/ims/Mwi$MwiMessageDetails;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 900
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->updateVoiceMail()V

    .line 910
    .end local v0    # "arMwiUpdate":Landroid/os/AsyncResult;
    .end local v1    # "detailsCount":I
    .end local v2    # "i":I
    .end local v3    # "mwiIF":Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .end local v4    # "summaryCount":I
    :goto_2
    return-void

    .line 902
    .restart local v0    # "arMwiUpdate":Landroid/os/AsyncResult;
    :cond_2
    const-string v5, "ImsServiceSub"

    const-string v6, "handleMwiNotification arMwiUpdate.result null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 905
    :cond_3
    const-string v5, "ImsServiceSub"

    const-string v6, "handleMwiNotification arMwiUpdate exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 908
    .end local v0    # "arMwiUpdate":Landroid/os/AsyncResult;
    :cond_4
    const-string v5, "ImsServiceSub"

    const-string v6, "handleMwiNotification msg null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private handleSrvStatusUpdate(Ljava/util/ArrayList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/ims/ServiceStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    const/4 v6, 0x0

    .line 335
    .local v6, "isVtEnabled":Z
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/codeaurora/ims/ServiceStatus;

    .line 336
    .local v11, "update":Lorg/codeaurora/ims/ServiceStatus;
    iget-boolean v12, p0, Lorg/codeaurora/ims/ImsServiceSub;->DBG:Z

    if-eqz v12, :cond_1

    .line 337
    const-string v12, "ImsServiceSub"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "type = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " status = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Lorg/codeaurora/ims/ServiceStatus;->status:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " isValid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v11, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_1
    if-eqz v11, :cond_0

    iget-boolean v12, v11, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    if-eqz v12, :cond_0

    iget v12, v11, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-direct {p0, v12}, Lorg/codeaurora/ims/ImsServiceSub;->isSrvTypeValid(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 340
    const/4 v9, 0x0

    .line 341
    .local v9, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    iget v12, v11, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/16 v13, 0xb

    if-ne v12, v13, :cond_c

    .line 342
    iget-object v12, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v13, 0x4

    aget-object v9, v12, v13

    .line 346
    :goto_0
    iget-boolean v12, v11, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    iput-boolean v12, v9, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 347
    iget v12, v11, Lorg/codeaurora/ims/ServiceStatus;->type:I

    iput v12, v9, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 348
    iget-object v12, v11, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    if-eqz v12, :cond_2

    .line 349
    iget-object v12, v11, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    array-length v12, v12

    new-array v12, v12, [B

    iput-object v12, v9, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 350
    iget-object v12, v11, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    iget-object v13, v11, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    array-length v13, v13

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    iput-object v12, v9, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 352
    :cond_2
    iget-object v12, v11, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v12, :cond_0

    iget-object v12, v11, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v12, v12

    if-lez v12, :cond_0

    .line 353
    iget-object v12, v11, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v12, v12

    new-array v12, v12, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v12, v9, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 355
    iget-boolean v12, p0, Lorg/codeaurora/ims/ImsServiceSub;->DBG:Z

    if-eqz v12, :cond_3

    .line 356
    const-string v12, "ImsServiceSub"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Call Type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v9, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "has num updates = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_3
    iget-object v0, v9, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 360
    .local v0, "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v12, v11, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v12, v12

    if-ge v4, v12, :cond_0

    .line 361
    iget-object v12, v11, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v12, v4

    .line 363
    .local v1, "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    iget-boolean v12, p0, Lorg/codeaurora/ims/ImsServiceSub;->DBG:Z

    if-eqz v12, :cond_4

    .line 364
    const-string v12, "ImsServiceSub"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "StatusForAccessTech networkMode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " registered = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " status = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " restrictCause = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_4
    new-instance v12, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v12}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v12, v0, v4

    .line 370
    aget-object v12, v0, v4

    iget v13, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    iput v13, v12, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 371
    aget-object v12, v0, v4

    iget v13, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    iput v13, v12, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 372
    iget v12, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_d

    iget v12, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    if-eqz v12, :cond_d

    .line 374
    aget-object v12, v0, v4

    const/4 v13, 0x1

    iput v13, v12, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 378
    :goto_2
    aget-object v12, v0, v4

    iget v12, v12, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v12, v9, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 379
    aget-object v12, v0, v4

    iget v13, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    iput v13, v12, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 380
    const/4 v3, -0x1

    .line 381
    .local v3, "feature":I
    aget-object v12, v0, v4

    iget v12, v12, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v13, 0x12

    if-eq v12, v13, :cond_5

    aget-object v12, v0, v4

    iget v12, v12, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v13, 0x13

    if-ne v12, v13, :cond_e

    :cond_5
    const/4 v8, 0x1

    .line 383
    .local v8, "modeWifi":Z
    :goto_3
    aget-object v12, v0, v4

    iget v12, v12, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    aget-object v12, v0, v4

    iget v12, v12, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v13, 0xe

    if-ne v12, v13, :cond_f

    :cond_6
    const/4 v7, 0x1

    .line 385
    .local v7, "modeLte":Z
    :goto_4
    if-nez v8, :cond_7

    if-eqz v7, :cond_b

    .line 386
    :cond_7
    iget v12, v11, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-nez v12, :cond_11

    .line 387
    if-eqz v7, :cond_10

    const/4 v3, 0x0

    .line 399
    :goto_5
    aget-object v12, v0, v4

    iget v12, v12, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_8

    aget-object v12, v0, v4

    iget v12, v12, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_15

    .line 401
    :cond_8
    iget-object v12, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aput v3, v12, v3

    .line 402
    iget-object v12, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    const/4 v13, -0x1

    aput v13, v12, v3

    .line 404
    const/4 v12, 0x1

    if-eq v3, v12, :cond_9

    const/4 v12, 0x3

    if-ne v3, v12, :cond_a

    .line 408
    :cond_9
    const/4 v6, 0x1

    .line 410
    :cond_a
    iget-boolean v12, p0, Lorg/codeaurora/ims/ImsServiceSub;->DBG:Z

    if-eqz v12, :cond_b

    .line 411
    const-string v12, "ImsServiceSub"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "enabledFeature = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_b
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 344
    .end local v0    # "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v1    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v3    # "feature":I
    .end local v4    # "i":I
    .end local v7    # "modeLte":Z
    .end local v8    # "modeWifi":Z
    :cond_c
    iget-object v12, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    iget v13, v11, Lorg/codeaurora/ims/ServiceStatus;->type:I

    aget-object v9, v12, v13

    goto/16 :goto_0

    .line 376
    .restart local v0    # "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .restart local v1    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .restart local v4    # "i":I
    :cond_d
    aget-object v12, v0, v4

    iget v13, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v13, v12, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    goto/16 :goto_2

    .line 381
    .restart local v3    # "feature":I
    :cond_e
    const/4 v8, 0x0

    goto :goto_3

    .line 383
    .restart local v8    # "modeWifi":Z
    :cond_f
    const/4 v7, 0x0

    goto :goto_4

    .line 387
    .restart local v7    # "modeLte":Z
    :cond_10
    const/4 v3, 0x2

    goto :goto_5

    .line 390
    :cond_11
    iget v12, v11, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/16 v13, 0xb

    if-ne v12, v13, :cond_13

    .line 391
    if-eqz v7, :cond_12

    const/4 v3, 0x4

    :goto_7
    goto :goto_5

    :cond_12
    const/4 v3, 0x5

    goto :goto_7

    .line 395
    :cond_13
    if-eqz v7, :cond_14

    const/4 v3, 0x1

    :goto_8
    goto :goto_5

    :cond_14
    const/4 v3, 0x3

    goto :goto_8

    .line 412
    :cond_15
    aget-object v12, v0, v4

    iget v12, v12, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eqz v12, :cond_16

    aget-object v12, v0, v4

    iget v12, v12, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_b

    .line 415
    :cond_16
    const/4 v12, 0x1

    if-ne v6, v12, :cond_17

    const/4 v12, 0x1

    if-eq v3, v12, :cond_b

    const/4 v12, 0x3

    if-eq v3, v12, :cond_b

    .line 419
    :cond_17
    iget-object v12, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    aput v3, v12, v3

    .line 420
    iget-object v12, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v13, -0x1

    aput v13, v12, v3

    .line 422
    iget-boolean v12, p0, Lorg/codeaurora/ims/ImsServiceSub;->DBG:Z

    if-eqz v12, :cond_b

    .line 423
    const-string v12, "ImsServiceSub"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "disabledFeature = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 431
    .end local v0    # "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v1    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v3    # "feature":I
    .end local v4    # "i":I
    .end local v7    # "modeLte":Z
    .end local v8    # "modeWifi":Z
    .end local v9    # "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    .end local v11    # "update":Lorg/codeaurora/ims/ServiceStatus;
    :cond_18
    iget-object v12, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 432
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/codeaurora/ims/ImsServiceClassTracker;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/codeaurora/ims/ImsServiceClassTracker;

    iget-object v12, v12, Lorg/codeaurora/ims/ImsServiceClassTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-direct {p0, v12}, Lorg/codeaurora/ims/ImsServiceSub;->createFeatureCapabilityCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;)V

    goto :goto_9

    .line 434
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/codeaurora/ims/ImsServiceClassTracker;>;"
    :cond_19
    iget-object v12, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 435
    .local v10, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v10, :cond_1a

    .line 436
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVTGloballySupported()Z

    move-result v12

    invoke-virtual {v10, v12}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateVtCapability(Z)V

    .line 440
    :goto_a
    return-void

    .line 438
    :cond_1a
    const-string v12, "handleSrvStatusUpdate tracker is null so not updating global VT capability"

    invoke-static {v12}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_a
.end method

.method private handleSuppSvc(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 578
    const-string v2, "ImsServiceSub"

    const-string v3, "handleSuppSvc"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 581
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0    # "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 584
    .restart local v0    # "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 585
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 586
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleSuppSvcUnsol(Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;)V

    .line 596
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 589
    .restart local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_0
    const-string v2, "ImsServiceSub"

    const-string v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 594
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_1
    const-string v2, "ImsServiceSub"

    const-string v3, "AsyncResult exception in handleSuppSvc."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleTtyModeChange(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x0

    .line 603
    const-string v2, "ImsServiceSub"

    const-string v3, "handleTtyModeChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 605
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 606
    .local v0, "mode":[I
    const-string v2, "ImsServiceSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received EVENT_TTY_STATE_CHANGED mode= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 610
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 611
    aget v2, v0, v5

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleTtyModeChangeUnsol(I)V

    .line 619
    .end local v0    # "mode":[I
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 613
    .restart local v0    # "mode":[I
    .restart local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_0
    const-string v2, "ImsServiceSub"

    const-string v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 617
    .end local v0    # "mode":[I
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_1
    const-string v2, "ImsServiceSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error EVENT_TTY_STATE_CHANGED AsyncResult ar= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initServiceStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 133
    new-array v1, v5, [Lorg/codeaurora/ims/ServiceStatus;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 135
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    new-instance v2, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v2}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    aput-object v2, v1, v0

    .line 140
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v2, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 141
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v2}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v2, v1, v3

    .line 142
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v3

    const/16 v2, 0xe

    iput v2, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 143
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v3

    iput v4, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 144
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v3

    const/4 v2, 0x2

    iput v2, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 145
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iput v4, v1, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method private isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x1

    .line 472
    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSrvTypeValid(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 309
    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p1, :cond_2

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 846
    const-string v0, "ImsServiceSub"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 850
    const-string v0, "ImsServiceSub"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return-void
.end method

.method private updateVoiceMail()V
    .locals 7

    .prologue
    .line 913
    const/4 v0, 0x0

    .line 914
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v4, v4, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 915
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v4, v4, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v4, v4, v2

    iget v4, v4, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    if-nez v4, :cond_1

    .line 916
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v4, v4, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v4, v4, v2

    iget v4, v4, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v5, v5, v2

    iget v5, v5, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    add-int v0, v4, v5

    .line 923
    :cond_0
    const-string v4, "ImsServiceSub"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateVoiceMail count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 926
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/codeaurora/ims/ImsServiceClassTracker;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsServiceClassTracker;

    iget-object v4, v4, Lorg/codeaurora/ims/ImsServiceClassTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-direct {p0, v4, v0}, Lorg/codeaurora/ims/ImsServiceSub;->createVoiceMessageUpdateCallbackThread(Lcom/android/ims/internal/IImsRegistrationListener;I)V

    goto :goto_1

    .line 914
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/codeaurora/ims/ImsServiceClassTracker;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 928
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .prologue
    .line 655
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 656
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 661
    :goto_0
    return-void

    .line 659
    :cond_0
    const-string v1, "ImsServiceClassTracker not found."

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "profile":Lcom/android/ims/ImsCallProfile;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 195
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v1, :cond_0

    .line 196
    const-string v2, "ImsServiceSub"

    const-string v3, " Invalid service ID - cannot create profile"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-object v0

    .line 200
    :cond_0
    new-instance v0, Lcom/android/ims/ImsCallProfile;

    .end local v0    # "profile":Lcom/android/ims/ImsCallProfile;
    invoke-direct {v0, p2, p3}, Lcom/android/ims/ImsCallProfile;-><init>(II)V

    .restart local v0    # "profile":Lcom/android/ims/ImsCallProfile;
    goto :goto_0
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 216
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v1, :cond_0

    .line 217
    const-string v2, "ImsServiceSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid service Id - cannot create Call Session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    return-object v0

    .line 219
    :cond_0
    invoke-virtual {v1, p2, p3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createCallSession(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3
    .param p1, "mediaId"    # I

    .prologue
    .line 637
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 638
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    goto :goto_0
.end method

.method public getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 3
    .param p1, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codeaurora/ims/DriverCallIms$State;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 627
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 628
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v0, :cond_0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    return-object v0
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

    return-object v0
.end method

.method public getPendingSession(ILjava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 233
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v1, :cond_0

    .line 234
    const-string v2, "ImsServiceSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid service Id - cannot get pending session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    return-object v0

    .line 236
    :cond_0
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public getServiceId(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 8
    .param p1, "serviceClass"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    const/4 v7, 0x3

    .line 162
    const/4 v6, 0x0

    .line 163
    .local v6, "serviceId":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eq p1, v7, :cond_0

    .line 165
    const/4 v6, -0x2

    .line 180
    :goto_0
    const-string v1, "ImsServiceSub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceId returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsRegistrationState(Landroid/os/Message;)V

    .line 182
    return v6

    .line 167
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 168
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v0, :cond_1

    .line 169
    new-instance v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .end local v0    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsServiceClassTracker;-><init>(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    .line 170
    .restart local v0    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVTGloballySupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateVtCapability(Z)V

    .line 171
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :goto_1
    invoke-direct {p0, p3}, Lorg/codeaurora/ims/ImsServiceSub;->createFeatureCapabilityCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 178
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v6

    goto :goto_0

    .line 174
    :cond_1
    iput-object p2, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIncomingCallIntent:Landroid/app/PendingIntent;

    .line 175
    iput-object p3, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    goto :goto_1
.end method

.method public getSubscription()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSub:I

    return v0
.end method

.method public getUtInterface()Lorg/codeaurora/ims/ImsUtImpl;
    .locals 1

    .prologue
    .line 254
    invoke-static {}, Lorg/codeaurora/ims/ImsUtImpl;->getUtInterface()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object v0

    return-object v0
.end method

.method public handleRefreshConfInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 668
    const-string v2, "ImsServiceSub"

    const-string v3, "handleRefreshConfInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 670
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    .line 671
    .local v0, "confInfo":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 672
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 673
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleRefreshConfInfo(Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;)V

    .line 686
    .end local v0    # "confInfo":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 675
    .restart local v0    # "confInfo":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .restart local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_0
    const-string v2, "ImsServiceSub"

    const-string v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 679
    .end local v0    # "confInfo":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_1
    if-eqz p1, :cond_2

    .line 680
    const-string v2, "ImsServiceSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed @handleRefreshConfInfo --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "with result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 683
    :cond_2
    const-string v2, "ImsServiceSub"

    const-string v3, "Failed @handleRefreshConfInfo --> AsyncResult is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isVTGloballySupported()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 443
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aget v1, v1, v0

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aget v1, v1, v2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerForPhoneId(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForPhoneId(I)V

    .line 247
    return-void
.end method

.method public removeListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .prologue
    .line 695
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 696
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 701
    :goto_0
    return-void

    .line 699
    :cond_0
    const-string v1, "ImsServiceClassTracker not found."

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 271
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 272
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v0, :cond_0

    .line 273
    const-string v1, "ImsServiceSub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid service Id - cannot set reg listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    iput-object p2, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    goto :goto_0
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 242
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->setUiTTYMode(ILandroid/os/Message;)V

    .line 243
    return-void
.end method

.method public turnOffIms()V
    .locals 4

    .prologue
    .line 462
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendImsRegistrationState(ILandroid/os/Message;)V

    .line 464
    return-void
.end method

.method public turnOnIms()V
    .locals 4

    .prologue
    .line 453
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendImsRegistrationState(ILandroid/os/Message;)V

    .line 455
    return-void
.end method
