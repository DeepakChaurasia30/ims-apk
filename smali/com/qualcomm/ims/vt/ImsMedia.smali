.class Lcom/qualcomm/ims/vt/ImsMedia;
.super Landroid/os/Handler;
.source "ImsMedia.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;,
        Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;
    }
.end annotation


# static fields
.field public static final CAMERA_PARAM_READY_EVT:I = 0x1

.field private static final CVO_MODE:I = 0x3

.field public static final DATA_USAGE_EVT:I = 0x8

.field private static final DEFAULT_FPS:I = 0x14

.field private static final DEFAULT_HEIGHT:I = 0x140

.field private static final DEFAULT_WIDTH:I = 0xf0

.field public static final DISPLAY_MODE_EVT:I = 0x5

.field public static final DPL_INIT_FAILURE:I = -0x1

.field public static final DPL_INIT_MULTIPLE:I = -0x2

.field public static final DPL_INIT_SUCCESSFUL:I = 0x0

.field private static final LANDSCAPE_MODE:I = 0x1

.field private static final LOOPBACK_MODE_FPS:I = 0x14

.field private static final LOOPBACK_MODE_HEIGHT:I = 0x90

.field private static final LOOPBACK_MODE_WIDTH:I = 0xb0

.field public static final MEDIA_EVENT:I = 0x0

.field public static final PEER_RESOLUTION_CHANGE_EVT:I = 0x6

.field public static final PLAYER_START_EVENT:I = 0x3

.field public static final PLAYER_STATE_STARTED:I = 0x0

.field public static final PLAYER_STATE_STOPPED:I = 0x1

.field public static final PLAYER_STOP_EVENT:I = 0x4

.field private static final PORTRAIT_MODE:I = 0x2

.field public static final START_READY_EVT:I = 0x2

.field public static final STOP_READY_EVT:I = 0x9

.field private static final TAG:Ljava/lang/String; = "VideoCall_ImsMedia"

.field public static final VIDEO_QUALITY_EVT:I = 0x7

.field public static final VIDEO_QUALITY_HIGH:I = 0x2

.field public static final VIDEO_QUALITY_LOW:I = 0x0

.field public static final VIDEO_QUALITY_MEDIUM:I = 0x1

.field public static final VIDEO_QUALITY_UNKNOWN:I = -0x1

.field private static mInitCalledFlag:Z

.field private static mInstance:Lcom/qualcomm/ims/vt/ImsMedia;


# instance fields
.field private mCameraListener:Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

.field private mIsMediaLoopback:Z

.field private mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

.field private mNegotiatedFps:S

.field private mNegotiatedHeight:I

.field private mNegotiatedWidth:I

.field private mPeerHeight:I

.field private mPeerWidth:I

.field private mRecordingSurface:Landroid/view/Surface;

.field private mSurface:Landroid/view/Surface;

.field private mUIOrientationMode:I

.field private mVideoQualityLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    .line 148
    const-string v0, "imsmedia_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x140

    const/16 v1, 0xf0

    .line 119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    .line 88
    iput v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    .line 89
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    .line 90
    const/16 v0, 0x14

    iput-short v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S

    .line 92
    iput v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    .line 93
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsMediaLoopback:Z

    .line 97
    iput-object v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    .line 98
    iput-object v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    .line 120
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->initializemIsMediaLoopback()V

    .line 121
    return-void
.end method

.method private static areSurfacesSame(Landroid/view/Surface;Landroid/view/Surface;)Z
    .locals 1
    .param p0, "a"    # Landroid/view/Surface;
    .param p1, "b"    # Landroid/view/Surface;

    .prologue
    .line 437
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 438
    const/4 v0, 0x1

    .line 442
    :goto_0
    return v0

    .line 439
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 440
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 442
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private doOnMediaEvent(I)V
    .locals 5
    .param p1, "eventId"    # I

    .prologue
    .line 327
    packed-switch p1, :pswitch_data_0

    .line 386
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unknown event id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 329
    :pswitch_1
    const-string v0, "Received PARAM_READY_EVT. Updating negotiated values"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 330
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->updatePreviewParams()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negotiated Camera values mNegotiatedWidth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNegotiatedHeight= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    iget v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    iget-short v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S

    iget-object v4, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onCameraConfigChanged(IISLandroid/view/Surface;)V

    goto :goto_0

    .line 338
    :pswitch_2
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetPeerHeight()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    .line 339
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetPeerWidth()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received PEER_RESOLUTION_CHANGE_EVENT. Updating peer values mPeerHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPeerWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    iget v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    invoke-interface {v0, v1, v2}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onPeerResolutionChanged(II)V

    goto :goto_0

    .line 347
    :pswitch_3
    const-string v0, "Received START_READY_EVT. Camera recording can be started"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    invoke-interface {v0}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onRecordingEnabled()V

    goto/16 :goto_0

    .line 354
    :pswitch_4
    const-string v0, "Received STOP_READY_EVT"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    invoke-interface {v0}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onRecordingDisabled()V

    goto/16 :goto_0

    .line 360
    :pswitch_5
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetUIOrientationMode()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    .line 363
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    invoke-interface {v0}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onDisplayModeEvent()V

    goto/16 :goto_0

    .line 368
    :pswitch_6
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onPlayerStateChanged(I)V

    goto/16 :goto_0

    .line 374
    :pswitch_7
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onPlayerStateChanged(I)V

    goto/16 :goto_0

    .line 379
    :pswitch_8
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetVideoQualityIndication()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received VIDEO_QUALITY_EVT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    invoke-interface {v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onVideoQualityEvent(I)V

    goto/16 :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/qualcomm/ims/vt/ImsMedia;
    .locals 2

    .prologue
    .line 110
    const-class v1, Lcom/qualcomm/ims/vt/ImsMedia;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-direct {v0}, Lcom/qualcomm/ims/vt/ImsMedia;-><init>()V

    sput-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 113
    :cond_0
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initializemIsMediaLoopback()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    const-string v3, "net.lte.VT_LOOPBACK_ENABLE"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 207
    .local v0, "property":I
    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsMediaLoopback:Z

    .line 208
    return-void

    :cond_0
    move v1, v2

    .line 207
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 473
    const-string v0, "VideoCall_ImsMedia"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 477
    const-string v0, "VideoCall_ImsMedia"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void
.end method

.method private static native nativeDeInit()V
.end method

.method private static native nativeGetNegotiatedFPS()S
.end method

.method private static native nativeGetNegotiatedHeight()I
.end method

.method private static native nativeGetNegotiatedWidth()I
.end method

.method private static native nativeGetPeerHeight()I
.end method

.method private static native nativeGetPeerWidth()I
.end method

.method private static native nativeGetRecordingSurface()Landroid/view/Surface;
.end method

.method private static native nativeGetUIOrientationMode()I
.end method

.method private static native nativeGetVideoQualityIndication()I
.end method

.method private static native nativeHandleRawFrame([B)V
.end method

.method private static native nativeInit()I
.end method

.method private static native nativeRegisterForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V
.end method

.method private static native nativeRequestRtpDataUsage(I)I
.end method

.method private static native nativeSetDeviceOrientation(I)V
.end method

.method private static native nativeSetSurface(Landroid/view/Surface;)I
.end method

.method private notifyOnMediaDeinitialized()V
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    if-nez v1, :cond_0

    .line 194
    const-string v1, "notifyOnMediaDeinitialized: Listener is not set."

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 198
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    invoke-interface {v1}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onMediaDeinitialized()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOnMediaDeinitialized: Error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDataUsageEvent(IJJ)V
    .locals 4
    .param p1, "mediaId"    # I
    .param p2, "uplink"    # J
    .param p4, "downlink"    # J

    .prologue
    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataUsageEvent mediaId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uplink = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " downlink = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 406
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 407
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 408
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 409
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 410
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    .line 411
    return-void
.end method

.method private registerForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 1
    .param p1, "instance"    # Lcom/qualcomm/ims/vt/ImsMedia;

    .prologue
    .line 313
    const-string v0, "Registering for Media Callback Events"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 314
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeRegisterForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V

    .line 315
    return-void
.end method

.method private declared-synchronized updatePreviewParams()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 446
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsMediaLoopback:Z

    if-eqz v5, :cond_0

    .line 447
    const/16 v5, 0x90

    iput v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    .line 448
    const/16 v5, 0xb0

    iput v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    .line 449
    const/16 v5, 0x14

    iput-short v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :goto_0
    monitor-exit p0

    return v4

    .line 452
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetNegotiatedHeight()I

    move-result v1

    .line 453
    .local v1, "h":I
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetNegotiatedWidth()I

    move-result v3

    .line 454
    .local v3, "w":I
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetNegotiatedFPS()S

    move-result v0

    .line 457
    .local v0, "fps":S
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetRecordingSurface()Landroid/view/Surface;

    move-result-object v2

    .line 458
    .local v2, "surface":Landroid/view/Surface;
    iget v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    if-ne v5, v1, :cond_1

    iget v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    if-ne v5, v3, :cond_1

    iget-short v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S

    if-ne v5, v0, :cond_1

    iget-object v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    invoke-static {v5, v2}, Lcom/qualcomm/ims/vt/ImsMedia;->areSurfacesSame(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 462
    :cond_1
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    .line 463
    iput v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    .line 464
    iput-short v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S

    .line 465
    iput-object v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 446
    .end local v0    # "fps":S
    .end local v1    # "h":I
    .end local v2    # "surface":Landroid/view/Surface;
    .end local v3    # "w":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 468
    .restart local v0    # "fps":S
    .restart local v1    # "h":I
    .restart local v2    # "surface":Landroid/view/Surface;
    .restart local v3    # "w":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method deInit()V
    .locals 1

    .prologue
    .line 186
    const-string v0, "deInit called"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->notifyOnMediaDeinitialized()V

    .line 188
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeDeInit()V

    .line 189
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    .line 190
    return-void
.end method

.method public getNegotiatedFps()S
    .locals 2

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negotiated Fps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 257
    iget-short v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S

    return v0
.end method

.method public getNegotiatedHeight()I
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negotiated Height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 244
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    return v0
.end method

.method public getNegotiatedWidth()I
    .locals 2

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negotiated Width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 252
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    return v0
.end method

.method public getPeerHeight()I
    .locals 2

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Peer Height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 281
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    return v0
.end method

.method public getPeerWidth()I
    .locals 2

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Peer Width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 289
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    return v0
.end method

.method public getRecordingSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordingSurface= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getUIOrientationMode()I
    .locals 2

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UI Orientation Mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 273
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    return v0
.end method

.method public getVideoQualityLevel()I
    .locals 2

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video Quality Level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 297
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 414
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received unknown msg id = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    .line 434
    :goto_0
    return-void

    .line 416
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->doOnMediaEvent(I)V

    goto :goto_0

    .line 419
    :sswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 421
    .local v6, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 422
    .local v1, "mediaId":I
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 423
    .local v2, "uplink":J
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 424
    .local v4, "downlink":J
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    invoke-interface/range {v0 .. v5}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onDataUsageChanged(IJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :cond_0
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .end local v1    # "mediaId":I
    .end local v2    # "uplink":J
    .end local v4    # "downlink":J
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 414
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method init()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 158
    sget-boolean v2, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    if-nez v2, :cond_0

    .line 159
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeInit()I

    move-result v0

    .line 160
    .local v0, "status":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init called error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 161
    packed-switch v0, :pswitch_data_0

    .line 179
    .end local v0    # "status":I
    :goto_0
    return v0

    .line 163
    .restart local v0    # "status":I
    :pswitch_0
    sput-boolean v4, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    .line 164
    invoke-direct {p0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->registerForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V

    goto :goto_0

    .line 167
    :pswitch_1
    sput-boolean v1, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    goto :goto_0

    .line 170
    :pswitch_2
    sput-boolean v4, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    .line 171
    const-string v1, "Dpl init is called multiple times"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    goto :goto_0

    .end local v0    # "status":I
    :cond_0
    move v0, v1

    .line 179
    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMediaEvent(I)V
    .locals 4
    .param p1, "eventId"    # I

    .prologue
    const/4 v3, 0x0

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaEvent eventId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0, v3, p1, v3}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 396
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    .line 397
    return-void
.end method

.method public requestCallDataUsage(I)V
    .locals 3
    .param p1, "mediaId"    # I

    .prologue
    .line 304
    const-string v1, "requestCallDataUsage"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 305
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeRequestRtpDataUsage(I)I

    move-result v0

    .line 306
    .local v0, "status":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCallDataUsage: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public sendCvoInfo(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCvoInfo orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 212
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetDeviceOrientation(I)V

    .line 213
    return-void
.end method

.method public setCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 324
    return-void
.end method

.method public setMediaListener(Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    .prologue
    .line 318
    const-string v0, "Registering for Media Listener"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 319
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    .line 320
    return-void
.end method

.method public setSurface()V
    .locals 1

    .prologue
    .line 231
    const-string v0, "setSurface()"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 233
    const-string v0, "sSurface is null. So not passing it down"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetSurface(Landroid/view/Surface;)I

    goto :goto_0
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "st"    # Landroid/view/Surface;

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurface(Surface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 222
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    .line 223
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetSurface(Landroid/view/Surface;)I

    .line 224
    return-void
.end method
