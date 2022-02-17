.class public Lorg/codeaurora/ims/ImsCallSessionImpl;
.super Lcom/android/ims/internal/IImsCallSession$Stub;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsCallSessionImpl$1;,
        Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;,
        Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    }
.end annotation


# static fields
.field private static final EVENT_ACCEPT:I = 0x2

.field private static final EVENT_ADD_PARTICIPANT:I = 0x9

.field private static final EVENT_CLOSE_SESSION:I = 0xc

.field private static final EVENT_CONFERENCE:I = 0x6

.field private static final EVENT_DEFLECT:I = 0x8

.field private static final EVENT_DIAL:I = 0x1

.field private static final EVENT_HANGUP:I = 0x3

.field private static final EVENT_HOLD:I = 0x4

.field private static final EVENT_REJECT:I = 0x7

.field private static final EVENT_REMOVE_PARTICIPANT:I = 0xb

.field private static final EVENT_RESUME:I = 0x5

.field private static final EVENT_RINGBACK_TONE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionImpl"

.field public static final SUPP_SVC_CODE_MT_HOLD:I = 0x2

.field public static final SUPP_SVC_CODE_MT_RESUME:I = 0x3


# instance fields
.field private mCallId:I

.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mCallee:Ljava/lang/String;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConfCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field private mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

.field private mContext:Landroid/content/Context;

.field private mDc:Lorg/codeaurora/ims/DriverCallIms;

.field private mDisconnCause:I

.field private mHandler:Landroid/os/Handler;

.field private mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

.field private mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

.field private mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

.field private mInCall:Z

.field protected mIsConfInProgress:Z

.field private mIsVtGloballyAllowed:Z

.field private mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mRingbackToneRequest:Z

.field private mState:I

.field private mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

.field private newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;)V
    .locals 5
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;
    .param p3, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 115
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    .line 78
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 79
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 81
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, v2, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 83
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, v2, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 85
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 86
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 87
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 89
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 90
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 91
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 92
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 93
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 94
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

    .line 95
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 96
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    .line 101
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    .line 102
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 104
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 105
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 116
    iput-object p3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 117
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V

    .line 118
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iput-object p2, v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    .line 119
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 120
    iput-object p4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 121
    iput-object p5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 122
    new-instance v0, Lorg/codeaurora/ims/conference/ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/conference/ConfInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

    .line 124
    new-instance v0, Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, p0, v1}, Lorg/codeaurora/ims/ImsCallModification;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 126
    new-instance v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 127
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V

    .line 128
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;)V
    .locals 5
    .param p1, "call"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    .line 78
    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 79
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 81
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, v3, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 83
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, v3, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 85
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 86
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 87
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 89
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 90
    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 91
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 92
    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 93
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 94
    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

    .line 95
    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 96
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    .line 101
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    .line 102
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 104
    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 105
    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 134
    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 136
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0, p1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/DriverCallIms;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 137
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v0, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 138
    iput-object p3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 139
    iput-object p4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 140
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 143
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 145
    new-instance v0, Lorg/codeaurora/ims/conference/ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/conference/ConfInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

    .line 148
    new-instance v0, Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, p0, v1}, Lorg/codeaurora/ims/ImsCallModification;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 149
    new-instance v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 150
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsCallSessionListenerProxy;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    return-object v0
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsServiceClassTracker;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    return-object v0
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lorg/codeaurora/ims/ImsCallSessionImpl;I)I
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    return p1
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-object v0
.end method

.method static synthetic access$600(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    return-object v0
.end method

.method static synthetic access$700(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return v0
.end method

.method static synthetic access$702(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return p1
.end method

.method static synthetic access$800(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->doClose()V

    return-void
.end method

.method private doClose()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 728
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "doClose!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "Received Session Close request while it is alive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    if-eq v0, v4, :cond_3

    .line 735
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    if-eqz v0, :cond_1

    .line 736
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->dispose()V

    .line 737
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 739
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-eqz v0, :cond_2

    .line 740
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 742
    :cond_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionClosed()V

    .line 743
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 744
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 745
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 747
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 748
    iput v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 749
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 750
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 751
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 752
    iput v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 753
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mInCall:Z

    .line 754
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 755
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 756
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 757
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 758
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 759
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 760
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

    .line 762
    :cond_3
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

.method private extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 9
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1013
    if-nez p1, :cond_1

    .line 1014
    const-string v4, "ImsCallSessionImpl"

    const-string v5, "Null dcUpdate in extractCallDetailsIntoCallProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 1027
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_0

    .line 1029
    const/4 v1, 0x0

    .line 1030
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1031
    .local v2, "keyAndValue":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1033
    .local v3, "namespaceAndKey":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 1034
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-eqz v4, :cond_4

    .line 1035
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1037
    aget-object v4, v2, v7

    if-eqz v4, :cond_3

    .line 1042
    aget-object v4, v2, v7

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1043
    aget-object v4, v2, v7

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1044
    aget-object v1, v3, v8

    .line 1057
    :goto_2
    const-string v4, "ImsCallSessionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallDetails Extra key= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    aget-object v5, v2, v8

    invoke-virtual {v4, v1, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1046
    :cond_2
    aget-object v1, v2, v7

    goto :goto_2

    .line 1049
    :cond_3
    const-string v4, "ImsCallSessionImpl"

    const-string v5, "Bad extra string from lower layers!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1053
    :cond_4
    const-string v4, "ImsCallSessionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Element "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null in CallDetails Extras!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private extractProfileExtrasIntoCallDetails(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/CallDetails;)V
    .locals 9
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "details"    # Lorg/codeaurora/ims/CallDetails;

    .prologue
    .line 1253
    iget-object v6, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v7, "OemCallExtras"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1254
    .local v0, "callExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 1255
    const/4 v1, 0x0

    .line 1256
    .local v1, "extraString":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    .line 1257
    .local v2, "extras":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1261
    .local v3, "i":I
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1262
    .local v5, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    .end local v1    # "extraString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v6, ""

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1264
    .restart local v1    # "extraString":Ljava/lang/String;
    const-string v6, "ImsCallSessionImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Packing extra string: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    aput-object v1, v2, v3

    .line 1266
    add-int/lit8 v3, v3, 0x1

    .line 1267
    goto :goto_0

    .line 1262
    .end local v1    # "extraString":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1268
    .end local v5    # "key":Ljava/lang/String;
    .restart local v1    # "extraString":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2, v2}, Lorg/codeaurora/ims/CallDetails;->setExtras([Ljava/lang/String;)V

    .line 1272
    .end local v1    # "extraString":Ljava/lang/String;
    .end local v2    # "extras":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    return-void

    .line 1270
    :cond_2
    const-string v6, "ImsCallSessionImpl"

    const-string v7, "No extras in ImsCallProfile to map into CallDetails."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getRestrictCause(I[Lorg/codeaurora/ims/ServiceStatus;)I
    .locals 7
    .param p1, "srvType"    # I
    .param p2, "ability"    # [Lorg/codeaurora/ims/ServiceStatus;

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, "cause":I
    if-eqz p2, :cond_0

    .line 260
    move-object v0, p2

    .local v0, "arr$":[Lorg/codeaurora/ims/ServiceStatus;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 261
    .local v4, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v4, :cond_1

    iget v5, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v5, p1, :cond_1

    iget-object v5, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v5, v5

    if-lez v5, :cond_1

    .line 263
    iget-object v5, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v1, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 268
    .end local v0    # "arr$":[Lorg/codeaurora/ims/ServiceStatus;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_0
    return v1

    .line 260
    .restart local v0    # "arr$":[Lorg/codeaurora/ims/ServiceStatus;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isImsCallSessionAlive()Z
    .locals 2

    .prologue
    .line 721
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z
    .locals 7
    .param p1, "srvType"    # I
    .param p2, "ability"    # [Lorg/codeaurora/ims/ServiceStatus;

    .prologue
    .line 236
    const/4 v0, 0x1

    .line 237
    .local v0, "allowed":Z
    if-eqz p2, :cond_1

    .line 238
    move-object v1, p2

    .local v1, "arr$":[Lorg/codeaurora/ims/ServiceStatus;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 239
    .local v4, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v4, :cond_2

    iget v5, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v5, p1, :cond_2

    .line 240
    iget v5, v4, Lorg/codeaurora/ims/ServiceStatus;->status:I

    if-eqz v5, :cond_0

    iget v5, v4, Lorg/codeaurora/ims/ServiceStatus;->status:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 242
    :cond_0
    const/4 v0, 0x0

    .line 248
    .end local v1    # "arr$":[Lorg/codeaurora/ims/ServiceStatus;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_1
    return v0

    .line 238
    .restart local v1    # "arr$":[Lorg/codeaurora/ims/ServiceStatus;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isSessionValid()Z
    .locals 3

    .prologue
    .line 709
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 710
    .local v0, "isValid":Z
    :goto_0
    if-nez v0, :cond_0

    .line 711
    const-string v1, "ImsCallSessionImpl"

    const-string v2, "Session is closed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_0
    return v0

    .line 709
    .end local v0    # "isValid":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1573
    const-string v0, "ImsCallSessionImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1577
    const-string v0, "ImsCallSessionImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    return-void
.end method

.method private static mapAudioCodecFromExtras(Ljava/lang/String;)I
    .locals 4
    .param p0, "codec"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1071
    const/4 v0, 0x0

    .line 1072
    .local v0, "audioQuality":I
    if-nez p0, :cond_0

    .line 1111
    :goto_0
    return v1

    .line 1075
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1107
    const-string v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported codec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :goto_2
    const-string v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioQuality is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1111
    goto :goto_0

    .line 1075
    :sswitch_0
    const-string v3, "QCELP13K"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :sswitch_1
    const-string v1, "EVRC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "EVRC_B"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "EVRC_WB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "EVRC_NW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "AMR_NB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "AMR_WB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v1, "GSM_EFR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "GSM_FR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "GSM_HR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto/16 :goto_1

    .line 1077
    :pswitch_0
    const/4 v0, 0x3

    .line 1078
    goto/16 :goto_2

    .line 1080
    :pswitch_1
    const/4 v0, 0x4

    .line 1081
    goto/16 :goto_2

    .line 1083
    :pswitch_2
    const/4 v0, 0x5

    .line 1084
    goto/16 :goto_2

    .line 1086
    :pswitch_3
    const/4 v0, 0x6

    .line 1087
    goto/16 :goto_2

    .line 1089
    :pswitch_4
    const/4 v0, 0x7

    .line 1090
    goto/16 :goto_2

    .line 1092
    :pswitch_5
    const/4 v0, 0x1

    .line 1093
    goto/16 :goto_2

    .line 1095
    :pswitch_6
    const/4 v0, 0x2

    .line 1096
    goto/16 :goto_2

    .line 1098
    :pswitch_7
    const/16 v0, 0x8

    .line 1099
    goto/16 :goto_2

    .line 1101
    :pswitch_8
    const/16 v0, 0x9

    .line 1102
    goto/16 :goto_2

    .line 1104
    :pswitch_9
    const/16 v0, 0xa

    .line 1105
    goto/16 :goto_2

    .line 1075
    :sswitch_data_0
    .sparse-switch
        -0x268dd77a -> :sswitch_4
        -0x268dd678 -> :sswitch_3
        0x20aaa2 -> :sswitch_1
        0x30932dd2 -> :sswitch_0
        0x3de5f773 -> :sswitch_7
        0x734ec6ed -> :sswitch_5
        0x734ec804 -> :sswitch_6
        0x7aa095e5 -> :sswitch_2
        0x7dde20ea -> :sswitch_8
        0x7dde2128 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private mapCallTypeFromProfile(I)I
    .locals 1
    .param p1, "callType"    # I

    .prologue
    .line 1120
    const/4 v0, 0x0

    .line 1121
    .local v0, "type":I
    packed-switch p1, :pswitch_data_0

    .line 1141
    :goto_0
    :pswitch_0
    return v0

    .line 1123
    :pswitch_1
    const/16 v0, 0xa

    .line 1124
    goto :goto_0

    .line 1126
    :pswitch_2
    const/4 v0, 0x0

    .line 1127
    goto :goto_0

    .line 1129
    :pswitch_3
    const/4 v0, 0x3

    .line 1130
    goto :goto_0

    .line 1132
    :pswitch_4
    const/4 v0, 0x1

    .line 1133
    goto :goto_0

    .line 1135
    :pswitch_5
    const/4 v0, 0x2

    .line 1136
    goto :goto_0

    .line 1138
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 1121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private notifySessionClosed()V
    .locals 4

    .prologue
    .line 213
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v3

    .line 214
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .line 215
    .local v1, "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v1, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;->onClosed(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_0

    .line 217
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    return-void
.end method

.method private notifySessionDisconnected()V
    .locals 4

    .prologue
    .line 205
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v3

    .line 206
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .line 207
    .local v1, "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v1, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;->onDisconnected(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_0

    .line 209
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    return-void
.end method

.method private setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 7
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v0, 0x3

    .line 408
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v2, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 410
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v3, v3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v4, "Codec"

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapAudioCodecFromExtras(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 413
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    if-eqz v1, :cond_2

    .line 415
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v5, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 420
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_1

    .line 421
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 422
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v5, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 426
    :goto_1
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v2, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 428
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v2, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-ne v2, v5, :cond_4

    :goto_2
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {p0, v0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRestrictCause(I[Lorg/codeaurora/ims/ServiceStatus;)I

    move-result v0

    iput v0, v1, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 434
    :cond_1
    return-void

    .line 417
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v6, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 424
    :cond_3
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v6, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_1

    .line 428
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1149
    if-nez p1, :cond_0

    .line 1150
    const-string v0, "updateImsCallProfile called with dc null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 1197
    :goto_0
    return-void

    .line 1154
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_1

    .line 1155
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1158
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "oi"

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "cna"

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "oir"

    iget v2, p1, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1162
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "cnap"

    iget v2, p1, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1165
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1172
    :pswitch_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v5, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1173
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v3, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0

    .line 1167
    :pswitch_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v4, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1168
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v3, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0

    .line 1177
    :pswitch_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x4

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1178
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v1, 0x3

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0

    .line 1182
    :pswitch_4
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x5

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1183
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v5, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0

    .line 1187
    :pswitch_5
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x6

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1188
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v4, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0

    .line 1193
    :pswitch_6
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto/16 :goto_0

    .line 1165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateLocalDc(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 4
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "hasChanged":Z
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v1, :cond_0

    .line 279
    new-instance v1, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v1, p1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/DriverCallIms;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 280
    const/4 v0, 0x1

    .line 284
    :goto_0
    const-string v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLocalDc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return v0

    .line 282
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/DriverCallIms;->update(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .prologue
    .line 1313
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1318
    :goto_0
    return-void

    .line 1316
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->acceptCall(Landroid/os/Message;I)V

    goto :goto_0
.end method

.method public addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .prologue
    .line 159
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 161
    :cond_0
    if-nez p1, :cond_1

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 171
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate listener, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public close()V
    .locals 2

    .prologue
    .line 769
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "Close!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 773
    :cond_0
    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 4
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .prologue
    .line 1326
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1330
    :goto_0
    return-void

    .line 1328
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->deflectCall(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 1436
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1438
    :cond_0
    return-void
.end method

.method public getCallDomain()I
    .locals 2

    .prologue
    .line 891
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x3

    .line 897
    :cond_0
    :goto_0
    return v0

    .line 893
    :cond_1
    const/4 v0, 0x3

    .line 894
    .local v0, "callDomain":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_0

    .line 895
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    goto :goto_0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1610
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 1613
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .prologue
    .line 812
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 813
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    goto :goto_0
.end method

.method public getCallSubstate()I
    .locals 2

    .prologue
    .line 906
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 912
    :cond_0
    :goto_0
    return v0

    .line 908
    :cond_1
    const/4 v0, 0x0

    .line 909
    .local v0, "callSubstate":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_0

    .line 910
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v1, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    goto :goto_0
.end method

.method public getCallee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 926
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 927
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    goto :goto_0
.end method

.method public getConfInfo()Lorg/codeaurora/ims/conference/ConfInfo;
    .locals 1

    .prologue
    .line 1545
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1546
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

    goto :goto_0
.end method

.method public getDriverCallState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1

    .prologue
    .line 931
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 932
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    goto :goto_0
.end method

.method public getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;
    .locals 1

    .prologue
    .line 231
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    goto :goto_0
.end method

.method public getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    goto :goto_0
.end method

.method public getInternalCallType()I
    .locals 3

    .prologue
    .line 879
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0xa

    .line 887
    :cond_0
    :goto_0
    return v0

    .line 881
    :cond_1
    const/16 v0, 0xa

    .line 882
    .local v0, "callType":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_2

    .line 883
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    goto :goto_0

    .line 884
    :cond_2
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_0

    .line 885
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result v0

    goto :goto_0
.end method

.method getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 3

    .prologue
    .line 867
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 875
    :cond_0
    :goto_0
    return-object v0

    .line 869
    :cond_1
    const/4 v0, 0x0

    .line 870
    .local v0, "state":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_2

    .line 871
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    goto :goto_0

    .line 872
    :cond_2
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 873
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    goto :goto_0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .prologue
    .line 822
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 823
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    goto :goto_0
.end method

.method public getMediaId()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 791
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 792
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 842
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 851
    :goto_0
    return-object v0

    .line 844
    :cond_0
    const/4 v0, 0x0

    .line 846
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_1

    .line 847
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 849
    :cond_1
    const-string v1, "ImsCallSessionImpl"

    const-string v2, "Call Profile null! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .prologue
    .line 832
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 833
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 861
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 862
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    goto :goto_0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 1

    .prologue
    .line 1505
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1507
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public handleHandover(IIII[B)V
    .locals 5
    .param p1, "hoType"    # I
    .param p2, "srcTech"    # I
    .param p3, "targetTech"    # I
    .param p4, "extraType"    # I
    .param p5, "extraInfo"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 498
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hoType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "srcTech: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " targetTech: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    :goto_0
    :pswitch_0
    return-void

    .line 503
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 523
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled hoType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 507
    :pswitch_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const-string v2, "intra rat handover success"

    invoke-direct {v1, v3, v3, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, p0, p2, p3, v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 513
    :pswitch_2
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HO Failure for WWAN->IWLAN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    if-ne p4, v4, :cond_1

    .line 515
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "handoverInfo"

    invoke-virtual {v0, v1, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 518
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const-string v2, "intra rat handover failed"

    invoke-direct {v1, v3, v3, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, p0, p2, p3, v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public hasMediaIdValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 802
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 803
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CallDetails;->hasMediaIdValid()Z

    move-result v0

    goto :goto_0
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .prologue
    .line 1371
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1375
    :goto_0
    return-void

    .line 1373
    :cond_0
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "hold requested."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v2, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->hold(Landroid/os/Message;I)V

    goto :goto_0
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 6
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1448
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1453
    :goto_0
    return-void

    .line 1450
    :cond_0
    aget-object v0, p1, v5

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1451
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->addParticipant(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected invokeCallResume(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .prologue
    .line 403
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "invokeCallResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 405
    return-void
.end method

.method public isCallActive()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1347
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1348
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isConfInProgress()Z
    .locals 1

    .prologue
    .line 1204
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1205
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    goto :goto_0
.end method

.method public isInCall()Z
    .locals 3

    .prologue
    .line 954
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 967
    :goto_0
    return v0

    .line 956
    :cond_0
    const/4 v0, 0x0

    .line 957
    .local v0, "isInCall":Z
    sget-object v1, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->$SwitchMap$org$codeaurora$ims$DriverCallIms$State:[I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v2, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v2}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 964
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 957
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isMultiparty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 941
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 945
    :cond_0
    :goto_0
    return v0

    .line 942
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_0

    .line 945
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    goto :goto_0
.end method

.method public isMultipartyCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 916
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 917
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    goto :goto_0
.end method

.method public merge()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1397
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1416
    :cond_0
    :goto_0
    return-void

    .line 1399
    :cond_1
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 1407
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->setConfInProgress(Z)V

    .line 1408
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->conference(Landroid/os/Message;)V

    .line 1412
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->merge(I)V

    goto :goto_0
.end method

.method public notifyConfInfo([B)V
    .locals 2
    .param p1, "confInfoBytes"    # [B

    .prologue
    .line 1521
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1536
    :goto_0
    return-void

    .line 1523
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/conference/ConfInfo;->updateConfXmlBytes([B)V

    .line 1524
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

    invoke-virtual {v0}, Lorg/codeaurora/ims/conference/ConfInfo;->getConfUriList()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 1528
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_1

    .line 1529
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->restoreParticipantsAddressByLocalCache(Landroid/telephony/ims/ImsConferenceState;)V

    .line 1533
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    invoke-virtual {v0, p0, v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V

    goto :goto_0
.end method

.method public notifyTtyModeChange(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 484
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTY mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V

    goto :goto_0

    .line 492
    :cond_1
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "notifyTtyModeChange ListenerProxy null! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyUnsolCallModify(Lorg/codeaurora/ims/CallModify;)V
    .locals 4
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 221
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v3

    .line 224
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .line 225
    .local v1, "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v1, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;->onUnsolCallModify(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/CallModify;)V

    goto :goto_1

    .line 227
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public reject(I)V
    .locals 8
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 1339
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1344
    :goto_0
    return-void

    .line 1341
    :cond_0
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reject "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v4, 0x0

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v3, v5, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object v3, v2

    move v5, p1

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public removeListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .prologue
    .line 182
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 184
    :cond_0
    if-nez p1, :cond_1

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 196
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 194
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener not found, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 8
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1463
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1468
    :goto_0
    return-void

    .line 1464
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1465
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeParticipants user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, -0x1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    const/4 v4, 0x1

    const/16 v5, 0x1f5

    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xb

    invoke-virtual {v6, v7, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public reportNewConferenceCallSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "confCallSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 1000
    if-eqz p1, :cond_0

    .line 1001
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "Calling callSessionMergeStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1003
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1010
    :goto_0
    return-void

    .line 1007
    :cond_0
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "Null confCallSession! Not calling callSessionMergeStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .prologue
    .line 1385
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1389
    :goto_0
    return-void

    .line 1387
    :cond_0
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "resume requested."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v2, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->resume(Landroid/os/Message;I)V

    goto :goto_0
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1479
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1482
    :goto_0
    return-void

    .line 1481
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 1516
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1518
    :cond_0
    return-void
.end method

.method public setConfInfo(Lorg/codeaurora/ims/conference/ConfInfo;)V
    .locals 1
    .param p1, "confInfo"    # Lorg/codeaurora/ims/conference/ConfInfo;

    .prologue
    .line 1539
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1542
    :goto_0
    return-void

    .line 1541
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

    goto :goto_0
.end method

.method public setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 978
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 980
    :goto_0
    return-void

    .line 979
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iput-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 988
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 990
    :cond_0
    return-void
.end method

.method public setNewSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 1212
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1214
    :goto_0
    return-void

    .line 1213
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    goto :goto_0
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 7
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1226
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1249
    :goto_0
    return-void

    .line 1228
    :cond_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v4, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput v4, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1229
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput-object v4, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1231
    iput v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 1232
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1236
    const-string v3, "oir"

    invoke-virtual {p2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v0

    .line 1237
    .local v0, "clir":I
    const/4 v2, 0x3

    .line 1238
    .local v2, "domain":I
    const-string v3, "call_domain"

    invoke-virtual {p2, v3, v5}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 1239
    const-string v3, "call_domain"

    invoke-virtual {p2, v3, v5}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v2

    .line 1240
    const-string v3, "ImsCallSessionImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start: domain from extra = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/CallDetails;

    iget v3, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 1245
    .local v1, "details":Lorg/codeaurora/ims/CallDetails;
    invoke-direct {p0, p2, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractProfileExtrasIntoCallDetails(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/CallDetails;)V

    .line 1247
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, p1, v0, v1, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 8
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1286
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1303
    :goto_0
    return-void

    .line 1288
    :cond_0
    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1289
    iput v7, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 1290
    aget-object v3, p1, v6

    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1293
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 1295
    .local v1, "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "isConferenceUri"

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    invoke-static {v1}, Lorg/codeaurora/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v2

    .line 1299
    .local v2, "mMoExtras":[Ljava/lang/String;
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    iget v3, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v2}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 1301
    .local v0, "details":Lorg/codeaurora/ims/CallDetails;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    aget-object v4, p1, v6

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v6, v0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 1492
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    :goto_0
    return-void

    .line 1493
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1500
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1502
    :goto_0
    return-void

    .line 1501
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->stopDtmf(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public terminate(I)V
    .locals 8
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 1357
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1362
    :goto_0
    return-void

    .line 1359
    :cond_0
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "terminate "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v4, 0x0

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v3, v5, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object v3, v2

    move v5, p1

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1569
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " callid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLocalCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRemoteCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .prologue
    .line 1426
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1427
    :cond_0
    return-void
.end method

.method public updateCall(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 10
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v9, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 294
    const-string v6, "ImsCallSessionImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCall for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v6

    if-nez v6, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v6, :cond_3

    if-eqz p1, :cond_3

    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v6, v6, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v7, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v6, v7, :cond_3

    move v0, v4

    .line 301
    .local v0, "areStatesSame":Z
    :goto_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 302
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 304
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {v6, p1}, Lorg/codeaurora/ims/ImsCallModification;->update(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 306
    sget-object v6, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->$SwitchMap$org$codeaurora$ims$DriverCallIms$State:[I

    iget-object v7, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v7}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 393
    :cond_2
    :goto_2
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateLocalDc(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v1

    .line 394
    .local v1, "hasChanged":Z
    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v6, v7, :cond_c

    move v2, v4

    .line 395
    .local v2, "isCallNotEnded":Z
    :goto_3
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call details updated. currentCallDetails= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v5, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to newCallDetails= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 398
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v4, p0, v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .end local v0    # "areStatesSame":Z
    .end local v1    # "hasChanged":Z
    .end local v2    # "isCallNotEnded":Z
    :cond_3
    move v0, v5

    .line 298
    goto :goto_1

    .line 308
    .restart local v0    # "areStatesSame":Z
    :pswitch_0
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v6, :cond_4

    .line 310
    const-string v6, "ImsCallSessionImpl"

    const-string v7, "Phantom call!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iput v9, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 312
    iget v6, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 313
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v7, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v6, p0, v7}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_2

    .line 314
    :cond_4
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v6, v6, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v6, v6, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v6, v6, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v6, v6, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v6, v7, :cond_6

    .line 318
    :cond_5
    iput v9, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 319
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v7, v6, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 321
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 322
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v7, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v6, p0, v7}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_2

    .line 325
    :cond_6
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v6, v6, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v6, v7, :cond_7

    iget-boolean v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    if-nez v6, :cond_7

    .line 326
    const-string v6, "ImsCallSessionImpl"

    const-string v7, "Call being resumed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iput-boolean v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 328
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v7, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v6, p0, v7}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_2

    .line 330
    :cond_7
    const-string v6, "ImsCallSessionImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Call resumed skipped, conf status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 334
    :pswitch_1
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v6, v6, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v6, v7, :cond_2

    .line 335
    const-string v6, "ImsCallSessionImpl"

    const-string v7, "Call being held."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-boolean v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    if-nez v6, :cond_2

    .line 337
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v7, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v6, p0, v7}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_2

    .line 342
    :pswitch_2
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v6, :cond_2

    .line 343
    const-string v6, "ImsCallSessionImpl"

    const-string v7, "MO Dialing call!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget v6, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 345
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    new-instance v7, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v7}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    invoke-virtual {v6, p0, v7}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    goto/16 :goto_2

    .line 351
    :pswitch_3
    const/4 v6, 0x2

    iput v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 352
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v6, :cond_8

    .line 353
    const-string v6, "ImsCallSessionImpl"

    const-string v7, "MO Alerting call!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget v6, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 356
    :cond_8
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v6, v6, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v6, v7, :cond_2

    .line 358
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 359
    new-instance v3, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v3}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 360
    .local v3, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-boolean v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    if-ne v6, v4, :cond_9

    .line 361
    iput v5, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 363
    :cond_9
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v6, p0, v3}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    goto/16 :goto_2

    .line 369
    .end local v3    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_4
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    goto/16 :goto_2

    .line 373
    :pswitch_5
    const/16 v6, 0x8

    iput v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 374
    iget v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    if-nez v6, :cond_b

    .line 375
    if-eqz p1, :cond_a

    .line 376
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v7, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v6, p0, v7}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 387
    :cond_a
    :goto_4
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsServiceClassTracker;->onNotifyCallResumed()V

    .line 389
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionDisconnected()V

    goto/16 :goto_2

    .line 380
    :cond_b
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    iget v8, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    invoke-direct {v7, v8, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v6, p0, v7}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_4

    .restart local v1    # "hasChanged":Z
    :cond_c
    move v2, v5

    .line 394
    goto/16 :goto_3

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public updateConfSession(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 3
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    .line 437
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConfSession for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v0, :cond_0

    .line 442
    const/4 v0, 0x4

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 443
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v0, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    goto :goto_0
.end method

.method updateSuppServiceInfo(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 3
    .param p1, "suppSvcNotification"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .prologue
    .line 455
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSuppSvcInfo: suppSvcNotification= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 463
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->code:I

    packed-switch v0, :pswitch_data_0

    .line 473
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "Non-Hold/Resume supp svc code received."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    :pswitch_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, p0, v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 470
    :pswitch_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, p0, v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateVtGlobalCapability(Z)V
    .locals 2
    .param p1, "isVtEnabled"    # Z

    .prologue
    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVtGlobalCapability "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 1551
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1560
    :cond_0
    :goto_0
    return-void

    .line 1553
    :cond_1
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    if-eq v0, p1, :cond_0

    .line 1554
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 1555
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_0

    .line 1556
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 1557
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, p0, v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0
.end method
