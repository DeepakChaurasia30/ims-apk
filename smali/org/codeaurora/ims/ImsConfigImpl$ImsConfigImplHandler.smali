.class Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;
.super Landroid/os/Handler;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsConfigImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method private constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p2, "x1"    # Lorg/codeaurora/ims/ImsConfigImpl$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    const-string v1, "ImsConfigImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message received: what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 60
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 71
    const-string v1, "ImsConfigImpl"

    const-string v2, "handleMessage: unhandled message"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->access$100(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->access$200(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->access$100(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->access$300(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->access$100(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->access$400(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
