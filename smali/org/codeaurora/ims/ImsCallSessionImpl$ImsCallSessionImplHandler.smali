.class Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;
.super Landroid/os/Handler;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsCallSessionImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 530
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 531
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x8f

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 535
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$000(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 542
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 543
    .local v6, "ar":Landroid/os/AsyncResult;
    if-eqz v6, :cond_0

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 544
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "Dial error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$100(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsCallSession;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const-string v3, "Dial Failed"

    invoke-direct {v2, v8, v8, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 554
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 555
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    if-eqz v6, :cond_3

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 556
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "Add Participant error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$200(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsServiceClassTracker;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$300(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 561
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$200(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsServiceClassTracker;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$300(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeLocalParticipant(Ljava/lang/String;)V

    .line 566
    :cond_2
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$100(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsCallSession;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const-string v3, "Add Participant Failed"

    invoke-direct {v2, v8, v8, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 576
    :cond_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$200(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsServiceClassTracker;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$300(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 577
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$200(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsServiceClassTracker;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$300(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addLocalParticipant(Ljava/lang/String;)V

    .line 581
    :cond_4
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$100(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsCallSession;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V

    goto/16 :goto_0

    .line 586
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 587
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    if-eqz v6, :cond_0

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 588
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accept error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 592
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 593
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    if-eqz v6, :cond_5

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 594
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hangup error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_5
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/16 v1, 0x1f5

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$402(Lorg/codeaurora/ims/ImsCallSessionImpl;I)I

    goto/16 :goto_0

    .line 599
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 600
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    if-eqz v6, :cond_0

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 601
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "Hold error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$100(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsCallSession;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const-string v3, "Hold Failed"

    invoke-direct {v2, v8, v8, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 611
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 612
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    if-eqz v6, :cond_0

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 613
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "Resume error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$100(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsCallSession;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const-string v3, "Resume Failed"

    invoke-direct {v2, v8, v8, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 623
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 624
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    if-eqz v6, :cond_7

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_7

    .line 625
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "Conference error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 628
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$100(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsCallSession;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const-string v3, "Conference Failed"

    invoke-direct {v2, v8, v8, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 631
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$200(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsServiceClassTracker;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/codeaurora/ims/ImsServiceClassTracker;->setConfInProgress(Z)V

    .line 646
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iput-boolean v8, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    goto/16 :goto_0

    .line 633
    :cond_7
    if-eqz v6, :cond_9

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_9

    .line 634
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$100(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$500(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 638
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$600(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_8

    .line 639
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$200(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsServiceClassTracker;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$600(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v2

    iget v2, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$600(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v4

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$600(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v5

    iget-object v5, v5, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsServiceClassTracker;->sendIncomingCallIntent(Lorg/codeaurora/ims/ImsCallSessionImpl;IZLorg/codeaurora/ims/DriverCallIms$State;Ljava/lang/String;)V

    .line 642
    :cond_8
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "Conference in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 644
    :cond_9
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "EVENT_CONFERENCE: shouldn\'t reach here"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 649
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 650
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    if-eqz v6, :cond_0

    .line 651
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$100(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsCallSession;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const-string v3, "User Rejected"

    invoke-direct {v2, v4, v8, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 654
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$402(Lorg/codeaurora/ims/ImsCallSessionImpl;I)I

    goto/16 :goto_0

    .line 658
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 659
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    if-eqz v6, :cond_a

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_a

    .line 660
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "Deflect error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$100(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsCallSession;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const-string v3, "Deflect Failed"

    invoke-direct {v2, v8, v8, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionDeflectFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 668
    :cond_a
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "Deflect success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$100(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsCallSession;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionDeflected(Lcom/android/ims/internal/IImsCallSession;)V

    goto/16 :goto_0

    .line 675
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 676
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    if-eqz v6, :cond_0

    .line 677
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$702(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)Z

    .line 678
    const-string v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_RINGBACK_TONE, playTone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$700(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$600(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_0

    .line 680
    new-instance v7, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v7}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 681
    .local v7, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$700(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-ne v0, v3, :cond_b

    .line 682
    iput v8, v7, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 685
    :cond_b
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$100(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0, v1, v7}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    goto/16 :goto_0

    .line 696
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_a
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$200(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsServiceClassTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$300(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$200(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/ImsServiceClassTracker;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$300(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeLocalParticipant(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 702
    :pswitch_b
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$800(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto/16 :goto_0

    .line 540
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
