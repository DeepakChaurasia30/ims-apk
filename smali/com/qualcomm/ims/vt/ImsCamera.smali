.class public Lcom/qualcomm/ims/vt/ImsCamera;
.super Lcom/qualcomm/ims/vt/Camera;
.source "ImsCamera.java"


# static fields
.field private static final DBG:Z = true

.field private static final IMS_CAMERA_OPERATION_SUCCESS:S = 0x0s

.field private static final INVALID_SIZE:Landroid/util/Size;

.field private static final TAG:Ljava/lang/String; = "VideoCall_ImsCamera"


# instance fields
.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mIsOpen:Z

.field private mIsPreviewStarted:Z

.field private mIsRecordingStarted:Z

.field private mPackageName:Ljava/lang/String;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 30
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/qualcomm/ims/vt/ImsCamera;->INVALID_SIZE:Landroid/util/Size;

    .line 33
    const-string v0, "imscamera_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/qualcomm/ims/vt/Camera$Listener;

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/Camera;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPackageName:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mWindowManager:Landroid/view/WindowManager;

    .line 66
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 68
    iput-boolean v2, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsOpen:Z

    .line 69
    iput-boolean v2, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    .line 70
    iput-boolean v2, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    .line 72
    return-void
.end method

.method private doStopPreview()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 253
    const-string v1, "doStopPreview"

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_stopPreview()S

    move-result v0

    .line 255
    .local v0, "error":S
    const-string v1, "doStopPreview"

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 256
    if-eqz v0, :cond_0

    .line 257
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 259
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    .line 260
    return-void
.end method

.method private doStopRecording()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 263
    const-string v1, "doStopRecording"

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_stopRecording()S

    move-result v0

    .line 265
    .local v0, "error":S
    const-string v1, "doStopRecording"

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 266
    if-eqz v0, :cond_0

    .line 267
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 269
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    .line 270
    return-void
.end method

.method private getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 366
    .local p2, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 367
    .local v0, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 418
    const-string v0, "VideoCall_ImsCamera"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method private logIfError(Ljava/lang/String;S)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "error"    # S

    .prologue
    .line 426
    if-eqz p2, :cond_0

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed with error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->loge(Ljava/lang/String;)V

    .line 429
    :cond_0
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 422
    const-string v0, "VideoCall_ImsCamera"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void
.end method

.method public static native native_open(I)S
.end method

.method public static native native_open(ILjava/lang/String;)S
.end method

.method private setDisplayOrientation()V
    .locals 8

    .prologue
    .line 374
    iget-object v6, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mWindowManager:Landroid/view/WindowManager;

    if-nez v6, :cond_0

    .line 375
    const-string v6, "WindowManager not available"

    invoke-direct {p0, v6}, Lcom/qualcomm/ims/vt/ImsCamera;->loge(Ljava/lang/String;)V

    .line 415
    :goto_0
    return-void

    .line 379
    :cond_0
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 380
    .local v3, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v4, 0x0

    .local v4, "result":I
    const/4 v0, 0x0

    .local v0, "degrees":I
    const/4 v5, 0x0

    .line 385
    .local v5, "rotation":I
    const/4 v5, 0x0

    .line 386
    packed-switch v5, :pswitch_data_0

    .line 400
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDisplayOrientation: Unexpected rotation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/ims/vt/ImsCamera;->loge(Ljava/lang/String;)V

    .line 403
    :goto_1
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 404
    .local v2, "id":I
    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 405
    iget v6, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 406
    iget v6, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v6, v0

    rem-int/lit16 v4, v6, 0x168

    .line 407
    rsub-int v6, v4, 0x168

    rem-int/lit16 v4, v6, 0x168

    .line 412
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDisplayOrientation rotation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0, v4}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setDisplayOrientation(I)S

    move-result v1

    .line 414
    .local v1, "error":S
    const-string v6, "setDisplayOrientation"

    invoke-direct {p0, v6, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    goto :goto_0

    .line 388
    .end local v1    # "error":S
    .end local v2    # "id":I
    :pswitch_0
    const/4 v0, 0x0

    .line 389
    goto :goto_1

    .line 391
    :pswitch_1
    const/16 v0, 0x5a

    .line 392
    goto :goto_1

    .line 394
    :pswitch_2
    const/16 v0, 0xb4

    .line 395
    goto :goto_1

    .line 397
    :pswitch_3
    const/16 v0, 0x10e

    .line 398
    goto :goto_1

    .line 409
    .restart local v2    # "id":I
    :cond_1
    iget v6, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v6, v0

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v4, v6, 0x168

    goto :goto_2

    .line 386
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setFrameDimension(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 169
    const-string v1, "setPreviewSize"

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 174
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setPreviewSize(II)S

    move-result v0

    .line 175
    .local v0, "error":S
    const-string v1, "setPreviewSize"

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 176
    return-void
.end method

.method private setPreviewFps(I)V
    .locals 3
    .param p1, "fps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 184
    const-string v1, "setPreviewFps"

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 189
    :cond_1
    int-to-short v1, p1

    invoke-virtual {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setPreviewFpsRange(S)S

    move-result v0

    .line 190
    .local v0, "error":S
    const-string v1, "setPreviewFpsRange"

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 191
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 114
    const-string v2, "close"

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    const-string v2, "close: Camera is already closed."

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 121
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_1
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_release()S

    move-result v1

    .line 127
    .local v1, "error":S
    const-string v2, "release"

    invoke-direct {p0, v2, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 129
    iput-boolean v4, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsOpen:Z

    .line 130
    iput-boolean v4, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    .line 131
    iput-boolean v4, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    .line 132
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    goto :goto_0

    .line 122
    .end local v1    # "error":S
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close: Failed to close camera preview/recording, exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsCamera;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getMaxZoom()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_getMaxZoom()I

    move-result v0

    .line 217
    .local v0, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxZoom result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 218
    int-to-float v1, v0

    return v1
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mCameraId:Ljava/lang/String;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/ims/vt/ImsCamera;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 86
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-class v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsOpen:Z

    return v0
.end method

.method public isPreviewStarted()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    return v0
.end method

.method public isRecordingStarted()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    return v0
.end method

.method public isZoomSupported()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_isZoomSupported()Z

    move-result v0

    .line 203
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isZoomSupported result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 204
    return v0
.end method

.method public native native_getMaxZoom()I
.end method

.method public native native_isZoomSupported()Z
.end method

.method public native native_release()S
.end method

.method public native native_setDisplayOrientation(I)S
.end method

.method public native native_setPreviewFpsRange(S)S
.end method

.method public native native_setPreviewSize(II)S
.end method

.method public native native_setPreviewTexture(Landroid/view/Surface;)S
.end method

.method public native native_setZoom(I)V
.end method

.method public native native_startPreview()S
.end method

.method public native native_startRecording()S
.end method

.method public native native_stopPreview()S
.end method

.method public native native_stopRecording()S
.end method

.method public open()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 94
    const-string v2, "open"

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const-string v2, "open: Camera is already open."

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 107
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 101
    .local v1, "id":I
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qualcomm/ims/vt/ImsCamera;->native_open(ILjava/lang/String;)S

    move-result v0

    .line 102
    .local v0, "error":S
    if-eqz v0, :cond_1

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open: error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsCamera;->loge(Ljava/lang/String;)V

    .line 104
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v2

    .line 106
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsOpen:Z

    goto :goto_0
.end method

.method public reconfigure(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)V
    .locals 2
    .param p1, "cfg"    # Lcom/qualcomm/ims/vt/Camera$ConfigIms;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reconfigure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0

    .line 158
    :cond_0
    iget v0, p1, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->fps:I

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->setPreviewFps(I)V

    .line 159
    iget v0, p1, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->width:I

    iget v1, p1, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->height:I

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->setFrameDimension(II)V

    .line 160
    return-void
.end method

.method public setZoom(F)V
    .locals 2
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0

    .line 145
    :cond_0
    float-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setZoom(I)V

    .line 146
    return-void
.end method

.method public startPreview(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreview: Surface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    const-string v1, "startPreview: Error camera is closed"

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 229
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v1, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    const-string v1, "startPreview: Camera preview already started."

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 235
    :cond_1
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    .line 236
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setPreviewTexture(Landroid/view/Surface;)S

    move-result v0

    .line 237
    .local v0, "error":S
    const-string v1, "setPreviewTexture"

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 239
    if-nez v0, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_startPreview()S

    move-result v0

    .line 241
    const-string v1, "startPreview"

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 243
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->setDisplayOrientation()V

    .line 245
    if-nez v0, :cond_3

    .line 246
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    goto :goto_0

    .line 248
    :cond_3
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v1, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1
.end method

.method public startRecording(Landroid/view/Surface;Landroid/view/Surface;)V
    .locals 4
    .param p1, "previewSurface"    # Landroid/view/Surface;
    .param p2, "recordingSurface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecording: PreviewSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RecordingSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    const-string v1, "startRecording: Camera recording already started."

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 304
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    .line 305
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    if-nez v1, :cond_1

    .line 306
    const-string v1, "startRecording: Preview surface is null."

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 307
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v1, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 311
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->startPreview(Landroid/view/Surface;)V

    .line 314
    :cond_2
    const-string v1, "startRecording"

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_startRecording()S

    move-result v0

    .line 316
    .local v0, "error":S
    const-string v1, "startRecording"

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 317
    if-eqz v0, :cond_3

    .line 318
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v1, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 320
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    const-string v0, "stopPreview: Camera preview already stopped."

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 288
    :goto_0
    return-void

    .line 282
    :cond_0
    const-string v0, "stopPreview"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->doStopRecording()V

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->doStopPreview()V

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    const-string v0, "stopRecording: Camera recording already stopped."

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    const-string v0, "stopRecording"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 334
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->doStopRecording()V

    .line 335
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->doStopPreview()V

    goto :goto_0
.end method
