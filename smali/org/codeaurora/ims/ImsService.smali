.class public Lorg/codeaurora/ims/ImsService;
.super Landroid/app/Service;
.source "ImsService.java"


# static fields
.field protected static final EVENT_MODEM_STACK_READY:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"

.field private static final MAX_SUBSCRIPTIONS:I = 0x1


# instance fields
.field private final mBinder:Lcom/android/ims/internal/IImsService$Stub;

.field private mHandler:Landroid/os/Handler;

.field protected mImsPhoneId:I

.field private mModemStackController:Lcom/android/internal/telephony/ModemStackController;

.field private mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

.field private mServiceSubMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubMap:Ljava/util/Map;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    .line 200
    new-instance v0, Lorg/codeaurora/ims/ImsService$2;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsService$2;-><init>(Lorg/codeaurora/ims/ImsService;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mBinder:Lcom/android/ims/internal/IImsService$Stub;

    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsService;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    return-object v0
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsService;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubMap:Ljava/util/Map;

    return-object v0
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lorg/codeaurora/ims/ImsService$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsService$1;-><init>(Lorg/codeaurora/ims/ImsService;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mHandler:Landroid/os/Handler;

    .line 103
    return-void
.end method

.method private getNumSubscriptions()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method private handleModemStackReady(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 147
    iget-object v6, p0, Lorg/codeaurora/ims/ImsService;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v6

    if-nez v6, :cond_1

    .line 148
    const-string v6, "ImsService"

    const-string v7, "handleModemStackReady: Stack is Not Ready. EXIT!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 153
    .local v4, "mNumPhones":I
    const/4 v5, 0x0

    .line 154
    .local v5, "mPhoneChanged":Z
    const-string v6, "ImsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleModemStackReady: NumPhones:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Ims PhoneID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 158
    iget-object v6, p0, Lorg/codeaurora/ims/ImsService;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/ModemStackController;->getModemRatCapsForPhoneId(I)Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    move-result-object v3

    .line 159
    .local v3, "mModemCapInfo":Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;
    const-string v6, "ImsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleModemStackReady: Phone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Info:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsService;->isMultiModeSupported(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 163
    iget v6, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    if-eq v6, v1, :cond_4

    .line 164
    const-string v6, "ImsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleModemStackReady: Phone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iput v1, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    .line 166
    const/4 v5, 0x1

    .line 175
    .end local v3    # "mModemCapInfo":Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;
    :cond_2
    :goto_2
    if-eqz v5, :cond_0

    .line 177
    const/4 v0, 0x1

    .line 178
    .local v0, "defaultSub":I
    iget-object v6, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v7, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v6, v7}, Lorg/codeaurora/ims/ImsServiceSub;->registerForPhoneId(I)V

    .line 181
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_6

    .line 182
    iget v6, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    if-eq v6, v1, :cond_3

    .line 183
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "android:phoneid"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 168
    .end local v0    # "defaultSub":I
    .restart local v3    # "mModemCapInfo":Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;
    :cond_4
    const-string v6, "ImsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleModemStackReady: Phone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " UNchanged"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 157
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 190
    .end local v3    # "mModemCapInfo":Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;
    .restart local v0    # "defaultSub":I
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v6, 0x20000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    const-string v6, "android:phoneid"

    iget v7, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsService;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private initSubscriptionStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->createHandler()V

    .line 123
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    .line 124
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ModemStackController;->registerForStackReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    const-string v0, "ImsService"

    const-string v1, "initSubscriptionStatus: registered for EVENT_MODEM_STACK_READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_0
    iput-object v3, p0, Lorg/codeaurora/ims/ImsService;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    .line 128
    iput-object v3, p0, Lorg/codeaurora/ims/ImsService;->mHandler:Landroid/os/Handler;

    .line 129
    const-string v0, "ImsService"

    const-string v1, "initSubscriptionStatus: Not multi-sim..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMultiModeSupported(I)Z
    .locals 2
    .param p1, "nRatMask"    # I

    .prologue
    .line 140
    const/16 v0, 0x4008

    .line 142
    .local v0, "nMmMask":I
    and-int v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 112
    const-string v0, "ImsService"

    const-string v1, "Unknown msg!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 108
    :pswitch_0
    const-string v0, "ImsService"

    const-string v1, "Received event: EVENT_MODEM_STACK_READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsService;->handleModemStackReady(Landroid/os/Message;)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    const-string v0, "ImsService"

    const-string v1, "Returning mBinder for ImsService binding."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mBinder:Lcom/android/ims/internal/IImsService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 64
    const-string v3, "ImsService"

    const-string v4, "ImsService created!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSubscriptions()I

    move-result v3

    new-array v3, v3, [Lorg/codeaurora/ims/ImsServiceSub;

    iput-object v3, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSubscriptions()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 67
    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v4, Lorg/codeaurora/ims/ImsServiceSub;

    add-int/lit8 v5, v1, 0x1

    invoke-direct {v4, v5, p0}, Lorg/codeaurora/ims/ImsServiceSub;-><init>(ILandroid/content/Context;)V

    aput-object v4, v3, v1

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    const-string v3, "ims"

    iget-object v4, p0, Lorg/codeaurora/ims/ImsService;->mBinder:Lcom/android/ims/internal/IImsService$Stub;

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 70
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    const-string v3, "android:phoneid"

    iget v4, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 78
    :goto_1
    const/4 v0, 0x1

    .line 79
    .local v0, "defaultSub":I
    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3, p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->init(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    .line 81
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->initSubscriptionStatus()V

    .line 82
    return-void

    .line 76
    .end local v0    # "defaultSub":I
    :cond_1
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsService;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 92
    const-string v0, "ImsService"

    const-string v1, "Ims Service Destroyed Successfully..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 94
    return-void
.end method
