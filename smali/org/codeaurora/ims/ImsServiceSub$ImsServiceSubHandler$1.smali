.class Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->createRegCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

.field final synthetic val$isRegistered:Z

.field final synthetic val$listener:Lcom/android/ims/internal/IImsRegistrationListener;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;ZLcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->this$1:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    iput-boolean p2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$isRegistered:Z

    iput-object p3, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 727
    :try_start_0
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$isRegistered:Z

    if-eqz v1, :cond_0

    .line 728
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnected()V

    .line 735
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "ImsServiceSub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "createRegCallBackThread()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
