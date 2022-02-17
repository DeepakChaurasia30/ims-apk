.class public Lorg/codeaurora/ims/ImsServiceClassTracker;
.super Ljava/lang/Object;
.source "ImsServiceClassTracker.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsServiceClassTracker$1;,
        Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    }
.end annotation


# static fields
.field private static final ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.volte.incoming_call"

.field public static final CONF_URI_DC_NUMBER:Ljava/lang/String; = "Conference Call"

.field public static final EXTRA_SERVICE_ID:Ljava/lang/String; = "android:imsServiceId"

.field public static final EXTRA_USSD:Ljava/lang/String; = "android:ussd"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceClassTracker"

.field private static currentMaxServiceId:I


# instance fields
.field private mCallList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ICallListListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConfCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field private mContext:Landroid/content/Context;

.field public mIncomingCallIntent:Landroid/app/PendingIntent;

.field private mIsVtSupportedGlobally:Z

.field private mLocalParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field public mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

.field private mServiceClass:I

.field private mServiceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->currentMaxServiceId:I

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 2
    .param p1, "serviceClass"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p4, "ci"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mLocalParticipants:Ljava/util/ArrayList;

    .line 70
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 102
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceClass:I

    .line 103
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIncomingCallIntent:Landroid/app/PendingIntent;

    .line 104
    iput-object p3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 105
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createServiceId()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceId:I

    .line 106
    iput-object p4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 107
    iput-object p5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    .line 111
    return-void
.end method

.method private addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p3, "notify"    # Z

    .prologue
    .line 743
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 744
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    if-eqz p3, :cond_0

    .line 747
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 749
    :cond_0
    return-void

    .line 745
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private convertDriverStateToInt(Lorg/codeaurora/ims/DriverCallIms$State;)I
    .locals 3
    .param p1, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;

    .prologue
    const/4 v0, 0x5

    .line 160
    sget-object v1, Lorg/codeaurora/ims/ImsServiceClassTracker$1;->$SwitchMap$org$codeaurora$ims$DriverCallIms$State:[I

    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state in convertDriverStateToInt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 178
    :goto_0
    :pswitch_0
    return v0

    .line 162
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 164
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 166
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 168
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 172
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 174
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private createIncomingCallIntent(Ljava/lang/String;ZZLorg/codeaurora/ims/DriverCallIms$State;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isUssd"    # Z
    .param p3, "isUnknown"    # Z
    .param p4, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;
    .param p5, "number"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android:imsCallID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v1, "android:ussd"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    const-string v1, "android:imsServiceId"

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    const-string v1, "codeaurora:isUnknown"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    const-string v1, "codeaurora:unknownCallAddress"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v1, "codeaurora.unknownCallState"

    invoke-direct {p0, p4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->convertDriverStateToInt(Lorg/codeaurora/ims/DriverCallIms$State;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    return-object v0
.end method

.method private static createServiceId()I
    .locals 1

    .prologue
    .line 122
    sget v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->currentMaxServiceId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->currentMaxServiceId:I

    return v0
.end method

.method private static extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 835
    if-eqz p0, :cond_1

    const-string v0, "tel:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sip:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 838
    :cond_1
    return-object p0
.end method

.method private getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 10
    .param p1, "state"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 568
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 569
    :try_start_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 570
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 571
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 572
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 573
    .local v3, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDriverCallState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 574
    .local v0, "dcState":Lorg/codeaurora/ims/DriverCallIms$State;
    const-string v4, "ImsServiceClassTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCallSessionWithMptyBitSet:: ImsCallSession state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isMultiparty = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v4

    if-ne v4, v8, :cond_0

    .line 577
    const-string v4, "ImsServiceClassTracker"

    const-string v6, "ImsCallSession found with Multiparty bit set"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v4, :cond_1

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v4, :cond_1

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v4, :cond_2

    :cond_1
    if-ne p1, v8, :cond_2

    .line 582
    const-string v4, "ImsServiceClassTracker"

    const-string v6, "Foreground Conference callSession found"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    monitor-exit v5

    .line 612
    .end local v0    # "dcState":Lorg/codeaurora/ims/DriverCallIms$State;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    return-object v3

    .line 584
    .restart local v0    # "dcState":Lorg/codeaurora/ims/DriverCallIms$State;
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .restart local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_2
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v4, :cond_3

    if-ne p1, v9, :cond_3

    .line 586
    const-string v4, "ImsServiceClassTracker"

    const-string v6, "Background Conference callSession found"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    monitor-exit v5

    goto :goto_0

    .line 613
    .end local v0    # "dcState":Lorg/codeaurora/ims/DriverCallIms$State;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 588
    .restart local v0    # "dcState":Lorg/codeaurora/ims/DriverCallIms$State;
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    .restart local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_3
    :try_start_1
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v4, :cond_4

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v4, :cond_0

    :cond_4
    if-nez p1, :cond_0

    .line 591
    const-string v4, "ImsServiceClassTracker"

    const-string v6, "Ringing Conference callSession found"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    monitor-exit v5

    goto :goto_0

    .line 597
    .end local v0    # "dcState":Lorg/codeaurora/ims/DriverCallIms$State;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_5
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 598
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 599
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 600
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 601
    .restart local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfInProgress()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 602
    if-ne p1, v8, :cond_6

    .line 603
    const-string v4, "ImsServiceClassTracker"

    const-string v6, "Foreground ImsCallSession found during Conference setup"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    monitor-exit v5

    goto :goto_0

    .line 607
    :cond_7
    if-ne p1, v9, :cond_6

    .line 608
    const-string v4, "ImsServiceClassTracker"

    const-string v6, "Background ImsCallSession found"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 612
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_8
    const/4 v3, 0x0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getMptySession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 5

    .prologue
    .line 321
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 322
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 323
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 325
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 326
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    monitor-exit v4

    .line 331
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :goto_0
    return-object v0

    .line 330
    :cond_1
    monitor-exit v4

    .line 331
    const/4 v0, 0x0

    goto :goto_0

    .line 330
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private isSelfAddress(Ljava/lang/String;)Z
    .locals 3
    .param p1, "userHandle"    # Ljava/lang/String;

    .prologue
    .line 821
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getConfInfo()Lorg/codeaurora/ims/conference/ConfInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getConfInfo()Lorg/codeaurora/ims/conference/ConfInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codeaurora/ims/conference/ConfInfo;->getSelfUserEntity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "selfIdentity":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSelfAddress userHandler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", selfIdentity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 824
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 826
    const-string v1, "isSelfAddress:  return true"

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 827
    const/4 v1, 0x1

    .line 832
    .end local v0    # "selfIdentity":Ljava/lang/String;
    :goto_0
    return v1

    .line 830
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confSession is null or confinfo null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    .line 832
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 911
    const-string v0, "ImsServiceClassTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 915
    const-string v0, "ImsServiceClassTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    return-void
.end method

.method private notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 737
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ICallListListener;

    .line 738
    .local v1, "listener":Lorg/codeaurora/ims/ICallListListener;
    invoke-interface {v1, p1}, Lorg/codeaurora/ims/ICallListListener;->onCallSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_0

    .line 740
    .end local v1    # "listener":Lorg/codeaurora/ims/ICallListListener;
    :cond_0
    return-void
.end method

.method private notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 752
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ICallListListener;

    .line 753
    .local v1, "listener":Lorg/codeaurora/ims/ICallListListener;
    invoke-interface {v1, p1}, Lorg/codeaurora/ims/ICallListListener;->onCallSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_0

    .line 755
    .end local v1    # "listener":Lorg/codeaurora/ims/ICallListListener;
    :cond_0
    return-void
.end method

.method private parsePhoneNumbers([Ljava/lang/String;)V
    .locals 5
    .param p1, "history"    # [Ljava/lang/String;

    .prologue
    .line 441
    if-nez p1, :cond_1

    .line 442
    const-string v3, "parsePhoneNumbers: History is null."

    invoke-static {v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    .line 456
    :cond_0
    return-void

    .line 446
    :cond_1
    const-string v3, "(.*?)(\\+?\\d+)((?s).*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 447
    .local v2, "p":Ljava/util/regex/Pattern;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 448
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 449
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 450
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v0

    .line 447
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    :cond_2
    const-string v3, ""

    aput-object v3, p1, v0

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parsePhoneNumbers: string format incorrect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method addListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .prologue
    .line 703
    if-nez p1, :cond_0

    .line 704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 710
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    :goto_0
    return-void

    .line 712
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addListener error: Duplicate listener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addLocalParticipant(Ljava/lang/String;)V
    .locals 2
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 773
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mLocalParticipants:Ljava/util/ArrayList;

    monitor-enter v1

    .line 774
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    :cond_0
    monitor-exit v1

    .line 778
    return-void

    .line 777
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearLocalParticipant()V
    .locals 2

    .prologue
    .line 787
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mLocalParticipants:Ljava/util/ArrayList;

    monitor-enter v1

    .line 788
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 789
    monitor-exit v1

    .line 790
    return-void

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createCallSession(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 6
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p2, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 412
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    .line 413
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V

    .line 414
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateVtGlobalCapability(Z)V

    .line 415
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 416
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 418
    monitor-exit v2

    .line 419
    return-object v0

    .line 418
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 5
    .param p1, "mediaId"    # I

    .prologue
    .line 644
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 645
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 646
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 647
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 648
    monitor-exit v4

    .line 652
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v2    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    return-object v2

    .line 651
    :cond_1
    monitor-exit v4

    .line 652
    const/4 v2, 0x0

    goto :goto_0

    .line 651
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 428
    const/4 v1, 0x0

    .line 429
    .local v1, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v3

    .line 430
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v1, v0

    .line 431
    monitor-exit v3

    .line 432
    return-object v1

    .line 431
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 6
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
    .line 623
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 624
    .local v3, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    if-nez p1, :cond_0

    .line 635
    :goto_0
    return-object v3

    .line 625
    :cond_0
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 626
    :try_start_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 627
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 628
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 629
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 632
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getServiceClass()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceClass:I

    return v0
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceId:I

    return v0
.end method

.method public handleCalls(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v9, "dcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codeaurora/ims/DriverCallIms;>;"
    const/4 v12, 0x0

    .line 202
    .local v12, "isConfInProgress":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-eqz p1, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_c

    .line 203
    const/4 v3, 0x0

    .line 204
    .local v3, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/DriverCallIms;

    .line 205
    .local v8, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget-boolean v2, v8, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v2, :cond_0

    .line 206
    const/4 v12, 0x1

    .line 208
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 210
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 211
    .local v15, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_1
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 213
    .local v17, "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v2, v8, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v5, :cond_1

    .line 216
    const-string v2, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found match call session in temp list, s = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v2, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index in call list is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v8, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget v2, v8, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1, v5}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 220
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 223
    .end local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v17    # "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    .end local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 226
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v5, v8, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v3, v0

    .line 227
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 228
    if-eqz v3, :cond_6

    .line 232
    invoke-virtual {v3, v8}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCall(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 280
    :cond_4
    :goto_2
    iget-object v2, v8, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v2, v4, :cond_5

    .line 281
    iget v2, v8, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 227
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 234
    :cond_6
    const/4 v13, 0x0

    .line 235
    .local v13, "isUnknown":Z
    iget-object v2, v8, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v2, v4, :cond_5

    .line 240
    new-instance v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .end local v3    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v3, v8, v2, v4, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    .line 241
    .restart local v3    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V

    .line 242
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateVtGlobalCapability(Z)V

    .line 243
    iget-boolean v2, v8, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eqz v2, :cond_8

    .line 244
    const-string v2, "ImsServiceClassTracker"

    const-string v4, "MT Call creating a new call session"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget v4, v8, Lorg/codeaurora/ims/DriverCallIms;->index:I

    const/4 v5, 0x0

    iget-object v6, v8, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v7, v8, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/codeaurora/ims/ImsServiceClassTracker;->sendIncomingCallIntent(Lorg/codeaurora/ims/ImsCallSessionImpl;IZLorg/codeaurora/ims/DriverCallIms$State;Ljava/lang/String;)V

    .line 275
    :cond_7
    :goto_3
    if-eqz v13, :cond_4

    .line 276
    iget v4, v8, Lorg/codeaurora/ims/DriverCallIms;->index:I

    const/4 v5, 0x1

    iget-object v6, v8, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v7, v8, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/codeaurora/ims/ImsServiceClassTracker;->sendIncomingCallIntent(Lorg/codeaurora/ims/ImsCallSessionImpl;IZLorg/codeaurora/ims/DriverCallIms$State;Ljava/lang/String;)V

    goto :goto_2

    .line 246
    :cond_8
    iget-boolean v2, v8, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v2, :cond_b

    iget-object v2, v8, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v4, :cond_b

    .line 247
    const-string v2, "ImsServiceClassTracker"

    const-string v4, "Conference Call creating a new call session"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v13, 0x1

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 251
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 252
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 253
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 254
    .local v10, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 255
    .local v16, "oldSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual/range {v16 .. v16}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfInProgress()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 256
    const-string v2, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set New Session as Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual/range {v16 .. v16}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getConfInfo()Lorg/codeaurora/ims/conference/ConfInfo;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setConfInfo(Lorg/codeaurora/ims/conference/ConfInfo;)V

    .line 258
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setNewSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 259
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->reportNewConferenceCallSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 261
    const/4 v13, 0x0

    .line 265
    .end local v10    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v16    # "oldSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_a
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 266
    iget v2, v8, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 267
    invoke-virtual {v3, v8}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateConfSession(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 268
    if-eqz v13, :cond_7

    .line 269
    const-string v2, "ImsServiceClassTracker"

    const-string v4, "Phantom conference call Scenario"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 265
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 271
    :cond_b
    iget-object v2, v8, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v2, v4, :cond_7

    .line 272
    const-string v2, "ImsServiceClassTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MO phantom Call Scenario. State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 287
    .end local v3    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v8    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .end local v13    # "isUnknown":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 288
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 289
    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_d
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 290
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 291
    .restart local v10    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d

    .line 296
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    .line 297
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_4

    .line 300
    .end local v10    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_3
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2

    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_e
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 301
    return-void
.end method

.method public handleHandover(Lorg/codeaurora/ims/ImsQmiIF$Handover;)V
    .locals 11
    .param p1, "handover"    # Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .prologue
    .line 656
    const-string v1, "ImsServiceClassTracker"

    const-string v2, "in handleHandover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v9, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker$1;)V

    .line 658
    .local v9, "response":Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getType()I

    move-result v1

    invoke-static {v9, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->access$102(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I

    .line 660
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getSrcTech()I

    move-result v1

    invoke-static {v9, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->access$202(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I

    .line 664
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getTargetTech()I

    move-result v1

    invoke-static {v9, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->access$302(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I

    .line 668
    :cond_1
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 669
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v7

    .line 670
    .local v7, "extra":Lorg/codeaurora/ims/ImsQmiIF$Extra;
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 671
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getType()I

    move-result v1

    invoke-static {v9, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->access$402(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I

    .line 674
    :cond_2
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 675
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getExtraInfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v1

    new-array v1, v1, [B

    invoke-static {v9, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->access$502(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;[B)[B

    .line 676
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getExtraInfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-static {v9}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->access$500(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    .line 679
    .end local v7    # "extra":Lorg/codeaurora/ims/ImsQmiIF$Extra;
    :cond_3
    const-string v1, "ImsServiceClassTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->access$100(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " srcTech: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->access$200(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tarTech: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->access$300(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extraType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->access$400(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extraInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->access$500(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v10, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v10

    .line 683
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 684
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 685
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 686
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 687
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_4

    .line 688
    invoke-static {v9}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->access$100(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v1

    invoke-static {v9}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->access$200(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v2

    invoke-static {v9}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->access$300(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v3

    invoke-static {v9}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->access$400(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v4

    invoke-static {v9}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->access$500(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)[B

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleHandover(IIII[B)V

    goto :goto_0

    .line 694
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 691
    .restart local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .restart local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .restart local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_4
    :try_start_1
    const-string v1, "ImsServiceClassTracker"

    const-string v2, "No more call sessions found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 694
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_5
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 695
    return-void
.end method

.method public handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V
    .locals 5
    .param p1, "cm"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 389
    if-eqz p1, :cond_1

    .line 390
    const/4 v1, 0x0

    .line 391
    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v3

    .line 392
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v4, p1, Lorg/codeaurora/ims/CallModify;->call_index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v1, v0

    .line 393
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/ImsCallModification;->onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V

    .line 402
    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    return-void

    .line 393
    .restart local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 397
    :cond_0
    const-string v2, "handleModifyCallRequest Error: callSession is null"

    invoke-static {v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_1
    const-string v2, "handleModifyCallRequest Error: Null Call Modify request "

    invoke-static {v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleRefreshConfInfo(Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;)V
    .locals 7
    .param p1, "confRefreshInfo"    # Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    .prologue
    .line 497
    const/4 v1, 0x0

    .line 498
    .local v1, "confInfoBytes":[B
    const/4 v3, -0x1

    .line 499
    .local v3, "state":I
    const/4 v0, 0x0

    .line 500
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz p1, :cond_0

    .line 501
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->getConfInfoUri()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    .line 503
    .local v2, "refreshConfInfoUri":Lcom/google/protobuf/micro/ByteStringMicro;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 505
    invoke-virtual {v2}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v4

    new-array v1, v4, [B

    .line 506
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    .line 507
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfCallState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 508
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->getConfCallState()I

    move-result v3

    .line 516
    :goto_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 522
    .end local v2    # "refreshConfInfoUri":Lcom/google/protobuf/micro/ByteStringMicro;
    :cond_0
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 524
    const-string v4, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRefreshConfInfo: confCallState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", callSession = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", confInfoBytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 534
    const-string v4, "ImsServiceClassTracker"

    const-string v5, "Update UI for Conference"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyConfInfo([B)V

    .line 539
    :goto_1
    return-void

    .line 514
    .restart local v2    # "refreshConfInfoUri":Lcom/google/protobuf/micro/ByteStringMicro;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 537
    .end local v2    # "refreshConfInfoUri":Lcom/google/protobuf/micro/ByteStringMicro;
    :cond_2
    const-string v4, "ImsServiceClassTracker"

    const-string v5, "No CallSession with Multiparty bit set is found. Some Error!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleSuppSvcUnsol(Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;)V
    .locals 7
    .param p1, "info"    # Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .prologue
    .line 466
    const-string v3, "ImsServiceClassTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSuppSvcUnsol connId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getConnId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 469
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getConnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 471
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_1

    .line 472
    new-instance v2, Lcom/android/ims/ImsSuppServiceNotification;

    invoke-direct {v2}, Lcom/android/ims/ImsSuppServiceNotification;-><init>()V

    .line 473
    .local v2, "suppServiceInfo":Lcom/android/ims/ImsSuppServiceNotification;
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNotificationType()I

    move-result v3

    iput v3, v2, Lcom/android/ims/ImsSuppServiceNotification;->notificationType:I

    .line 474
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getCode()I

    move-result v3

    iput v3, v2, Lcom/android/ims/ImsSuppServiceNotification;->code:I

    .line 475
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getIndex()I

    move-result v3

    iput v3, v2, Lcom/android/ims/ImsSuppServiceNotification;->index:I

    .line 476
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/ims/ImsSuppServiceNotification;->number:Ljava/lang/String;

    .line 478
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHistoryInfo()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "forwardedCallHistory":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 480
    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/ims/ImsSuppServiceNotification;->history:[Ljava/lang/String;

    .line 481
    iget-object v3, v2, Lcom/android/ims/ImsSuppServiceNotification;->history:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->parsePhoneNumbers([Ljava/lang/String;)V

    .line 483
    :cond_0
    const-string v3, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSuppSvcUnsol suppNotification= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateSuppServiceInfo(Lcom/android/ims/ImsSuppServiceNotification;)V

    .line 489
    .end local v1    # "forwardedCallHistory":Ljava/lang/String;
    .end local v2    # "suppServiceInfo":Lcom/android/ims/ImsSuppServiceNotification;
    :goto_0
    monitor-exit v4

    .line 490
    return-void

    .line 487
    :cond_1
    const-string v3, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No call session found for number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 489
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public handleTtyModeChangeUnsol(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    .line 547
    const/4 v1, 0x0

    .line 550
    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 551
    :try_start_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 552
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 553
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 554
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    .line 555
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v1, v0

    .line 556
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyTtyModeChange(I)V

    .line 560
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    if-nez v1, :cond_2

    .line 563
    const-string v4, "ImsServiceClassTracker"

    const-string v5, "No Active call session found for TTY mode change"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_2
    return-void

    .line 560
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public merge(I)V
    .locals 9
    .param p1, "callId"    # I

    .prologue
    .line 792
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mLocalParticipants:Ljava/util/ArrayList;

    monitor-enter v7

    .line 793
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 794
    .local v0, "hostSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v4

    .line 795
    .local v4, "peerSessions":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    if-le v6, v8, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Multiple HOLDING Calls: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/codeaurora/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 797
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x0

    .line 799
    .local v3, "peerSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 800
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v1

    .line 801
    .local v1, "isHostConf":Z
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v2

    .line 802
    .local v2, "isPeerConf":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "merge(): isHostConf "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", number "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " isPeerConf "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", number "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/codeaurora/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 805
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 806
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 807
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    .end local v1    # "isHostConf":Z
    .end local v2    # "isPeerConf":Z
    :cond_1
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "merge(): after merge: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/codeaurora/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 818
    monitor-exit v7

    .line 819
    return-void

    .line 797
    .end local v3    # "peerSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_2
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v3, v6

    goto/16 :goto_0

    .line 809
    .restart local v1    # "isHostConf":Z
    .restart local v2    # "isPeerConf":Z
    .restart local v3    # "peerSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_3
    xor-int v6, v1, v2

    if-eqz v6, :cond_1

    .line 810
    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallNumber()Ljava/lang/String;

    move-result-object v5

    .line 812
    .local v5, "user":Ljava/lang/String;
    :goto_2
    if-eqz v5, :cond_1

    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 813
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 818
    .end local v0    # "hostSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "isHostConf":Z
    .end local v2    # "isPeerConf":Z
    .end local v3    # "peerSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v4    # "peerSessions":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v5    # "user":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 810
    .restart local v0    # "hostSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .restart local v1    # "isHostConf":Z
    .restart local v2    # "isPeerConf":Z
    .restart local v3    # "peerSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .restart local v4    # "peerSessions":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallNumber()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    goto :goto_2
.end method

.method public onClosed(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 8
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 340
    const-string v4, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClosed for session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-eqz p1, :cond_0

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 345
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->clearLocalParticipant()V

    .line 346
    const-string v4, "ImsServiceClassTracker"

    const-string v5, "mLocalParticipants clear"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 352
    :cond_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    if-eqz v4, :cond_3

    .line 353
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 354
    :try_start_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 355
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 356
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 357
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    const-string v4, "ImsServiceClassTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "List is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " session is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 360
    const-string v4, "ImsServiceClassTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing session on close "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 362
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_0

    .line 365
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_3
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    .line 369
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 370
    :try_start_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 371
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 372
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 373
    .local v3, "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-ne v3, p1, :cond_4

    .line 375
    const-string v4, "ImsServiceClassTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing session on close "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 377
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_1

    .line 380
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_5
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 382
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_6
    return-void
.end method

.method public onDisconnected(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 336
    return-void
.end method

.method public onNotifyCallResumed()V
    .locals 3

    .prologue
    .line 304
    const-string v1, "ImsServiceClassTracker"

    const-string v2, "onNotifyCallResumed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getMptySession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 306
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {v0, v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->invokeCallResume(Lorg/codeaurora/ims/ImsCallSessionImpl;Lcom/android/ims/ImsCallProfile;)V

    .line 309
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->setConfInProgress(Z)V

    .line 310
    return-void
.end method

.method public onUnsolCallModify(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 386
    return-void
.end method

.method removeListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .prologue
    .line 722
    if-nez p1, :cond_0

    .line 723
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "removeListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeListener error: Listener not found, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeLocalParticipant(Ljava/lang/String;)V
    .locals 2
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 780
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mLocalParticipants:Ljava/util/ArrayList;

    monitor-enter v1

    .line 781
    if-eqz p1, :cond_0

    .line 782
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 784
    :cond_0
    monitor-exit v1

    .line 785
    return-void

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreParticipantsAddressByLocalCache(Lcom/android/ims/ImsConferenceState;)V
    .locals 17
    .param p1, "imsConferenceState"    # Lcom/android/ims/ImsConferenceState;

    .prologue
    .line 842
    if-nez p1, :cond_1

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v6

    .line 847
    .local v6, "mccmnc":Ljava/lang/String;
    const-string v15, "52000"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "52004"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 848
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "restoreParticipantsAddressByLocalCache: mccmnc "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/codeaurora/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 852
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-direct {v10, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 853
    .local v10, "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 856
    .local v12, "restoreList":Ljava/util/HashMap;
    new-instance v7, Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-direct {v7, v15}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 859
    .local v7, "participants":Ljava/util/HashMap;
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 861
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 862
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 863
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Lorg/codeaurora/ims/ImsServiceClassTracker;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 864
    .local v14, "userHandle":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 865
    .local v2, "confInfo":Landroid/os/Bundle;
    move-object v9, v14

    .line 866
    .local v9, "restoreAddr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 867
    .local v1, "cache":Ljava/lang/String;
    invoke-static {v9, v1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 868
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getPairedAddressFromCache: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/codeaurora/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 869
    move-object v9, v1

    goto :goto_2

    .line 873
    .end local v1    # "cache":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/codeaurora/ims/ImsServiceClassTracker;->isSelfAddress(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 876
    invoke-virtual {v12, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "wait for restore: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/codeaurora/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 879
    :cond_5
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 880
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "restoreCandidate remove : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/codeaurora/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 885
    .end local v2    # "confInfo":Landroid/os/Bundle;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "restoreAddr":Ljava/lang/String;
    .end local v14    # "userHandle":Ljava/lang/String;
    :cond_6
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 886
    .local v8, "resIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    const/4 v11, 0x0

    .line 887
    .local v11, "restoreIndex":I
    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 888
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-le v15, v11, :cond_0

    .line 891
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 892
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 893
    .restart local v14    # "userHandle":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 894
    .restart local v2    # "confInfo":Landroid/os/Bundle;
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 895
    .restart local v9    # "restoreAddr":Ljava/lang/String;
    const-string v15, "status"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 896
    .local v13, "status":Ljava/lang/String;
    const-string v15, "disconnected"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 901
    const-string v15, "user"

    invoke-virtual {v2, v15, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v15, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "restore participant: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/codeaurora/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 905
    add-int/lit8 v11, v11, 0x1

    .line 906
    goto :goto_3
.end method

.method public sendIncomingCallIntent(Lorg/codeaurora/ims/ImsCallSessionImpl;IZLorg/codeaurora/ims/DriverCallIms$State;Ljava/lang/String;)V
    .locals 10
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "index"    # I
    .param p3, "isUnknown"    # Z
    .param p4, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;
    .param p5, "number"    # Ljava/lang/String;

    .prologue
    .line 760
    :try_start_0
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIncomingCallIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    const/16 v9, 0x65

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createIncomingCallIntent(Ljava/lang/String;ZZLorg/codeaurora/ims/DriverCallIms$State;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v8, v9, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 763
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :goto_0
    return-void

    .line 764
    :catch_0
    move-exception v6

    .line 765
    .local v6, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming Call intent Canceled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setConfInProgress(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 313
    const-string v1, "ImsServiceClassTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConfInProgress value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getMptySession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 315
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_0

    .line 316
    iput-boolean p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 318
    :cond_0
    return-void
.end method

.method public updateVtCapability(Z)V
    .locals 5
    .param p1, "isVtEnabled"    # Z

    .prologue
    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVtCapability "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 185
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    .line 186
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 187
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 188
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 189
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateVtGlobalCapability(Z)V

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    return-void
.end method
