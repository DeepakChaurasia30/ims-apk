.class Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;
.super Landroid/os/Handler;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsUtImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsUtImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsUtImpl;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 509
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 510
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 36
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 514
    const-string v30, "ImsUtImpl"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Message received: what = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_0

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 520
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 521
    .local v4, "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 522
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    if-gez v30, :cond_1

    .line 523
    const-string v30, "ImsUtImpl"

    const-string v31, "Invalid message id received in handleMessage."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 527
    :cond_1
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    .line 528
    const-string v30, "ImsUtImpl"

    const-string v31, "Query CB error"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    new-instance v33, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v34, 0x324

    const/16 v35, 0x0

    invoke-direct/range {v33 .. v35}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 536
    :cond_2
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_a

    .line 537
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 538
    .local v23, "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v30

    if-eqz v30, :cond_3

    .line 539
    const-string v30, "ImsUtImpl"

    const-string v31, "SuppSvcResponse has failure for CB query."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v20

    .line 541
    .local v20, "failureCause":Ljava/lang/String;
    new-instance v19, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v30, 0x324

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 543
    .local v19, "error":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 549
    .end local v19    # "error":Landroid/telephony/ims/ImsReasonInfo;
    .end local v20    # "failureCause":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v30

    if-nez v30, :cond_4

    .line 550
    const-string v30, "ImsUtImpl"

    const-string v31, "No service status info in response for CB query."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    new-instance v33, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v34, 0x324

    const/16 v35, 0x0

    invoke-direct/range {v33 .. v35}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 556
    :cond_4
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getCbNumListTypeCount()I

    move-result v17

    .line 558
    .local v17, "count":I
    if-lez v17, :cond_7

    .line 559
    const/16 v28, 0x0

    .line 560
    .local v28, "ssInfoArray":[Landroid/telephony/ims/ImsSsInfo;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 561
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getCbNumListType(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    move-result-object v11

    .line 563
    .local v11, "cbNumListType":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    invoke-virtual {v11}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getCbNumListCount()I

    move-result v26

    .line 564
    .local v26, "size":I
    move/from16 v0, v26

    new-array v0, v0, [Landroid/telephony/ims/ImsSsInfo;

    move-object/from16 v28, v0

    .line 565
    invoke-virtual {v11}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->hasServiceClass()Z

    move-result v30

    if-eqz v30, :cond_5

    .line 566
    invoke-virtual {v11}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v24

    .line 568
    .local v24, "serviceClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual/range {v24 .. v24}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getServiceClass()I

    move-result v25

    .line 569
    .local v25, "service_class":I
    if-eqz v26, :cond_5

    .line 570
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 571
    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getCbNumList(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    move-result-object v10

    .line 573
    .local v10, "cbNumList":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    new-instance v27, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct/range {v27 .. v27}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 574
    .local v27, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {v10}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->getNumber()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    .line 575
    invoke-virtual {v10}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->getStatus()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, v27

    iput v0, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 576
    aput-object v27, v28, v22

    .line 570
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 560
    .end local v10    # "cbNumList":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    .end local v22    # "j":I
    .end local v24    # "serviceClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .end local v25    # "service_class":I
    .end local v27    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 581
    .end local v11    # "cbNumListType":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .end local v26    # "size":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    goto/16 :goto_0

    .line 584
    .end local v21    # "i":I
    .end local v28    # "ssInfoArray":[Landroid/telephony/ims/ImsSsInfo;
    :cond_7
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Landroid/telephony/ims/ImsSsInfo;

    move-object/from16 v29, v0

    .line 585
    .local v29, "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v27, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct/range {v27 .. v27}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 586
    .restart local v27    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v30

    if-nez v30, :cond_9

    .line 587
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v27

    iput v0, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 591
    :cond_8
    :goto_3
    const/16 v30, 0x0

    aput-object v27, v29, v30

    .line 592
    const-string v30, "ImsUtImpl"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "success callback Query Anonymous CB, status= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v27

    iget v0, v0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    goto/16 :goto_0

    .line 588
    :cond_9
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 589
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v27

    iput v0, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_3

    .line 600
    .end local v17    # "count":I
    .end local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .end local v27    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v29    # "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    :cond_a
    const-string v30, "ImsUtImpl"

    const-string v31, "Null response received for Query CB!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    new-instance v33, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v34, 0x324

    const/16 v35, 0x0

    invoke-direct/range {v33 .. v35}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 609
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 610
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 611
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    if-gez v30, :cond_b

    .line 612
    const-string v30, "ImsUtImpl"

    const-string v31, "Invalid message id received in handleMessage."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 616
    :cond_b
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-eqz v30, :cond_c

    .line 617
    const-string v30, "ImsUtImpl"

    const-string v31, "Update CB error"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    new-instance v33, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v33 .. v35}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 625
    :cond_c
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_e

    .line 626
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 627
    .restart local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v30

    if-eqz v30, :cond_d

    .line 628
    const-string v30, "ImsUtImpl"

    const-string v31, "SuppSvcResponse has failure for CB update."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v20

    .line 630
    .restart local v20    # "failureCause":Ljava/lang/String;
    new-instance v19, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v30, 0x324

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 632
    .restart local v19    # "error":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 638
    .end local v19    # "error":Landroid/telephony/ims/ImsReasonInfo;
    .end local v20    # "failureCause":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    .line 642
    .end local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    .line 649
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 650
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 651
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    if-gez v30, :cond_f

    .line 652
    const-string v30, "ImsUtImpl"

    const-string v31, "Invalid message id received in handleMessage."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 655
    :cond_f
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-eqz v30, :cond_13

    .line 656
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_11

    .line 657
    const-string v30, "ImsUtImpl"

    const-string v31, "Update CF error"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_10
    :goto_4
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_12

    .line 666
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 668
    .restart local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v30

    if-eqz v30, :cond_0

    .line 669
    const-string v30, "ImsUtImpl"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "SuppSvcResponse has failure for msg.what= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v20

    .line 672
    .restart local v20    # "failureCause":Ljava/lang/String;
    const-string v30, "ImsUtImpl"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Failure cause: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    new-instance v19, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v30, 0x324

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 676
    .restart local v19    # "error":Landroid/telephony/ims/ImsReasonInfo;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 659
    .end local v19    # "error":Landroid/telephony/ims/ImsReasonInfo;
    .end local v20    # "failureCause":Ljava/lang/String;
    .end local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_10

    .line 660
    const-string v30, "ImsUtImpl"

    const-string v31, "Update CW error"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 682
    :cond_12
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    new-instance v33, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v33 .. v35}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 689
    :cond_13
    const-string v30, "ImsUtImpl"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Success callback called for msg.what= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    .line 697
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 698
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 699
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    if-gez v30, :cond_14

    .line 700
    const-string v30, "ImsUtImpl"

    const-string v31, "Invalid message id received in handleMessage."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 703
    :cond_14
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-eqz v30, :cond_15

    .line 704
    const-string v30, "ImsUtImpl"

    const-string v31, "Query CF error"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    new-instance v33, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v33 .. v35}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 711
    :cond_15
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_22

    .line 712
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v13, v30

    check-cast v13, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 714
    .local v13, "cfInfoList":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v0, v13

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_16

    .line 715
    const-string v30, "ImsUtImpl"

    const-string v31, "CallForwardInfo[] has no elements!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    new-instance v33, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v34, 0x324

    const/16 v35, 0x0

    invoke-direct/range {v33 .. v35}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 722
    :cond_16
    const/4 v5, 0x0

    .line 725
    .local v5, "badCfResponse":Z
    array-length v0, v13

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v7, v0, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 728
    .local v7, "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_5
    array-length v0, v13

    move/from16 v30, v0

    move/from16 v0, v21

    move/from16 v1, v30

    if-ge v0, v1, :cond_21

    .line 729
    aget-object v12, v13, v21

    .line 730
    .local v12, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v6, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 732
    .local v6, "callForwardInfo":Landroid/telephony/ims/ImsCallForwardInfo;
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_17

    .line 733
    const/16 v30, 0x1

    move/from16 v0, v30

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 743
    :goto_6
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v30, v0

    if-nez v30, :cond_19

    .line 744
    const/16 v30, 0x0

    move/from16 v0, v30

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 768
    :goto_7
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->startHour:I

    move/from16 v30, v0

    const/16 v31, 0x18

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1f

    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->startMinute:I

    move/from16 v30, v0

    const/16 v31, 0x3c

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1f

    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->endHour:I

    move/from16 v30, v0

    const/16 v31, 0x18

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1f

    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->endMinute:I

    move/from16 v30, v0

    const/16 v31, 0x3c

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1f

    .line 770
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->startHour:I

    move/from16 v30, v0

    move/from16 v0, v30

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mStartHour:I

    .line 771
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->startMinute:I

    move/from16 v30, v0

    move/from16 v0, v30

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mStartMinute:I

    .line 772
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->endHour:I

    move/from16 v30, v0

    move/from16 v0, v30

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mEndHour:I

    .line 773
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->endMinute:I

    move/from16 v30, v0

    move/from16 v0, v30

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mEndMinute:I

    .line 779
    :goto_8
    if-eqz v5, :cond_20

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    new-instance v33, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v34, 0x324

    const/16 v35, 0x0

    invoke-direct/range {v33 .. v35}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 735
    :cond_17
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    move/from16 v30, v0

    if-nez v30, :cond_18

    .line 736
    const/16 v30, 0x0

    move/from16 v0, v30

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    goto/16 :goto_6

    .line 739
    :cond_18
    const/4 v5, 0x1

    .line 740
    const-string v30, "ImsUtImpl"

    const-string v31, "Bad status in Query CF response."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 746
    :cond_19
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1a

    .line 747
    const/16 v30, 0x1

    move/from16 v0, v30

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto/16 :goto_7

    .line 749
    :cond_1a
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1b

    .line 750
    const/16 v30, 0x2

    move/from16 v0, v30

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 752
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    move/from16 v30, v0

    move/from16 v0, v30

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    goto/16 :goto_7

    .line 754
    :cond_1b
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1c

    .line 755
    const/16 v30, 0x3

    move/from16 v0, v30

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto/16 :goto_7

    .line 757
    :cond_1c
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v30, v0

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1d

    .line 758
    const/16 v30, 0x4

    move/from16 v0, v30

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto/16 :goto_7

    .line 760
    :cond_1d
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v30, v0

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1e

    .line 761
    const/16 v30, 0x5

    move/from16 v0, v30

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto/16 :goto_7

    .line 764
    :cond_1e
    const/4 v5, 0x1

    .line 765
    const-string v30, "ImsUtImpl"

    const-string v31, "Bad reason in Query CF response."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 775
    :cond_1f
    const/4 v5, 0x1

    .line 776
    const-string v30, "ImsUtImpl"

    const-string v31, "Bad Timer Values in Query CF response."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 786
    :cond_20
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    move/from16 v30, v0

    move/from16 v0, v30

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 787
    new-instance v30, Ljava/lang/String;

    iget-object v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    iput-object v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 789
    aput-object v6, v7, v21

    .line 728
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_5

    .line 792
    .end local v6    # "callForwardInfo":Landroid/telephony/ims/ImsCallForwardInfo;
    .end local v12    # "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2, v7}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    goto/16 :goto_0

    .line 797
    .end local v5    # "badCfResponse":Z
    .end local v7    # "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    .end local v13    # "cfInfoList":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v21    # "i":I
    :cond_22
    const-string v30, "ImsUtImpl"

    const-string v31, "Null response received for Query CF!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    new-instance v33, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v34, 0x324

    const/16 v35, 0x0

    invoke-direct/range {v33 .. v35}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 806
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 807
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 808
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    if-gez v30, :cond_23

    .line 809
    const-string v30, "ImsUtImpl"

    const-string v31, "Invalid message id received in handleMessage."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 812
    :cond_23
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-eqz v30, :cond_24

    .line 813
    const-string v30, "ImsUtImpl"

    const-string v31, "Query CW error"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    new-instance v33, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v33 .. v35}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 820
    :cond_24
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_28

    .line 821
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [I

    move-object/from16 v18, v30

    check-cast v18, [I

    .line 823
    .local v18, "cwResponse":[I
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v9, v0, [Landroid/telephony/ims/ImsSsInfo;

    .line 824
    .local v9, "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v8, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v8}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 826
    .local v8, "callWaitingInfo":Landroid/telephony/ims/ImsSsInfo;
    const/16 v30, 0x0

    aget v30, v18, v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_26

    .line 827
    const/16 v30, 0x1

    aget v30, v18, v30

    and-int/lit8 v30, v30, 0x1

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_25

    .line 828
    const/16 v30, 0x1

    move/from16 v0, v30

    iput v0, v8, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 846
    :goto_9
    const/16 v30, 0x0

    aput-object v8, v9, v30

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2, v9}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    goto/16 :goto_0

    .line 830
    :cond_25
    const/16 v30, 0x0

    move/from16 v0, v30

    iput v0, v8, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_9

    .line 833
    :cond_26
    const/16 v30, 0x0

    aget v30, v18, v30

    if-nez v30, :cond_27

    .line 834
    const/16 v30, 0x0

    move/from16 v0, v30

    iput v0, v8, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_9

    .line 837
    :cond_27
    const-string v30, "ImsUtImpl"

    const-string v31, "No service status received for CallWaitingInfo."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    new-instance v33, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v34, 0x324

    const/16 v35, 0x0

    invoke-direct/range {v33 .. v35}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 853
    .end local v8    # "callWaitingInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v9    # "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    .end local v18    # "cwResponse":[I
    :cond_28
    const-string v30, "ImsUtImpl"

    const-string v31, "Null response received for Query CW!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    new-instance v33, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v34, 0x324

    const/16 v35, 0x0

    invoke-direct/range {v33 .. v35}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 862
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 863
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 864
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    if-gez v30, :cond_29

    .line 865
    const-string v30, "ImsUtImpl"

    const-string v31, "Invalid message id received in handleMessage."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 868
    :cond_29
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2b

    .line 869
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2a

    .line 870
    const-string v30, "ImsUtImpl"

    const-string v31, "Query CLIR error"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_2a
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    new-instance v33, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v33 .. v35}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 879
    :cond_2b
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    .line 880
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [I

    move-object/from16 v16, v30

    check-cast v16, [I

    .line 881
    .local v16, "clirResp":[I
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 882
    .local v15, "clirInfo":Landroid/os/Bundle;
    const-string v30, "queryClir"

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 883
    const-string v30, "ImsUtImpl"

    const-string v31, "Calling success callback for Query CLIR."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2, v15}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 893
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "clirInfo":Landroid/os/Bundle;
    .end local v16    # "clirResp":[I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 894
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 895
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    if-gez v30, :cond_2c

    .line 896
    const-string v30, "ImsUtImpl"

    const-string v31, "Invalid message id received in handleMessage."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 899
    :cond_2c
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2d

    .line 900
    const-string v30, "ImsUtImpl"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Error for Query Event= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    new-instance v33, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v33 .. v35}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 908
    :cond_2d
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    .line 909
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [I

    move-object/from16 v28, v30

    check-cast v28, [I

    .line 910
    .local v28, "ssInfoArray":[I
    if-eqz v28, :cond_0

    .line 911
    new-instance v27, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct/range {v27 .. v27}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 912
    .restart local v27    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    const/16 v30, 0x0

    aget v30, v28, v30

    move/from16 v0, v30

    move-object/from16 v1, v27

    iput v0, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 913
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 914
    .local v14, "clInfo":Landroid/os/Bundle;
    const-string v30, "imsSsInfo"

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 916
    const-string v30, "ImsUtImpl"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Success callback on Query event= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2, v14}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 925
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "clInfo":Landroid/os/Bundle;
    .end local v27    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v28    # "ssInfoArray":[I
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 926
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 927
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    if-gez v30, :cond_2e

    .line 928
    const-string v30, "ImsUtImpl"

    const-string v31, "Invalid message id received in handleMessage."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 931
    :cond_2e
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2f

    .line 932
    const-string v30, "ImsUtImpl"

    const-string v31, "Query COLP error"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    new-instance v33, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v33 .. v35}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 940
    :cond_2f
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    .line 943
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 944
    .restart local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v30

    if-eqz v30, :cond_30

    .line 945
    const-string v30, "ImsUtImpl"

    const-string v31, "SuppSvcResponse has failure for COLP query."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v20

    .line 947
    .restart local v20    # "failureCause":Ljava/lang/String;
    new-instance v19, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v30, 0x324

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 949
    .restart local v19    # "error":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 955
    .end local v19    # "error":Landroid/telephony/ims/ImsReasonInfo;
    .end local v20    # "failureCause":Ljava/lang/String;
    :cond_30
    new-instance v27, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct/range {v27 .. v27}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 956
    .restart local v27    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 957
    .restart local v14    # "clInfo":Landroid/os/Bundle;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 958
    .restart local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v30

    if-eqz v30, :cond_0

    .line 959
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, v27

    iput v0, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 960
    const-string v30, "ImsUtImpl"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Service= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " status= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v27

    iget v0, v0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const-string v30, "imsSsInfo"

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 965
    const-string v30, "ImsUtImpl"

    const-string v31, "Success callback called for Query COLP."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2, v14}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 979
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "clInfo":Landroid/os/Bundle;
    .end local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .end local v27    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 980
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 981
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    if-gez v30, :cond_31

    .line 982
    const-string v30, "ImsUtImpl"

    const-string v31, "Invalid message id received in handleMessage."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 985
    :cond_31
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    if-eqz v30, :cond_36

    .line 986
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    const/16 v31, 0x6

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_33

    .line 987
    const-string v30, "ImsUtImpl"

    const-string v31, "Update CLIR error"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_32
    :goto_a
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    new-instance v33, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v33 .. v35}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 989
    :cond_33
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_34

    .line 990
    const-string v30, "ImsUtImpl"

    const-string v31, "Update CLIP error"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 992
    :cond_34
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    const/16 v31, 0xa

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_35

    .line 993
    const-string v30, "ImsUtImpl"

    const-string v31, "Update COLR error"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 995
    :cond_35
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    const/16 v31, 0xc

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_32

    .line 996
    const-string v30, "ImsUtImpl"

    const-string v31, "Update COLP error"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1005
    :cond_36
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3a

    .line 1008
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    const/16 v31, 0x7

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_37

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    const/16 v31, 0xb

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_39

    .line 1009
    :cond_37
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 1010
    .restart local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v30

    if-eqz v30, :cond_38

    .line 1011
    const-string v30, "ImsUtImpl"

    const-string v31, "SuppSvcResponse has failure for CLIP/COLP update."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v20

    .line 1013
    .restart local v20    # "failureCause":Ljava/lang/String;
    new-instance v19, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v30, 0x324

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 1015
    .restart local v19    # "error":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1021
    .end local v19    # "error":Landroid/telephony/ims/ImsReasonInfo;
    .end local v20    # "failureCause":Ljava/lang/String;
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    .line 1026
    .end local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    .line 1030
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v31

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
