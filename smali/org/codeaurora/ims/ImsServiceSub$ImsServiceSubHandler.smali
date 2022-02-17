.class Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;
.super Landroid/os/Handler;
.source "ImsServiceSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsServiceSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsServiceSubHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0

    .prologue
    .line 712
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    .line 713
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 714
    return-void
.end method

.method private createRegCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p2, "isRegistered"    # Z

    .prologue
    .line 723
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;-><init>(Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;ZLcom/android/ims/internal/IImsRegistrationListener;)V

    .line 737
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "ImsServiceSubRegCallbackThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 738
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 739
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 743
    const-string v8, "ImsServiceSub"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Message received: what = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 840
    const-string v8, "ImsServiceSub"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown message = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 748
    :pswitch_1
    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v8, v8, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 752
    :pswitch_2
    const/4 v5, 0x0

    .line 753
    .local v5, "isRegistered":Z
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 754
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_2

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_2

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    check-cast v8, [I

    array-length v8, v8

    if-lt v8, v12, :cond_2

    .line 756
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v6, v8

    check-cast v6, [I

    .line 757
    .local v6, "responseArray":[I
    const-string v8, "ImsServiceSub"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IMS registration state is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v6, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    aget v8, v6, v11

    if-ne v8, v12, :cond_1

    .line 760
    const/4 v5, 0x1

    .line 766
    .end local v6    # "responseArray":[I
    :cond_1
    :goto_1
    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v8}, Lorg/codeaurora/ims/ImsServiceSub;->access$000(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 767
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/codeaurora/ims/ImsServiceClassTracker;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/ImsServiceClassTracker;

    iget-object v8, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-direct {p0, v8, v5}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->createRegCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;Z)V

    goto :goto_2

    .line 763
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/codeaurora/ims/ImsServiceClassTracker;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v8, "ImsServiceSub"

    const-string v9, "IMS State query failed!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 772
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "isRegistered":Z
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 773
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_0

    .line 774
    const-string v8, "ImsServiceSub"

    const-string v9, "Request turn on/off IMS failed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 778
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    const-string v8, "ImsServiceSub"

    const-string v9, "Received event: EVENT_SRV_STATUS_UPDATE"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 780
    .local v1, "arResult":Landroid/os/AsyncResult;
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_3

    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_3

    .line 781
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    .line 783
    .local v7, "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v8, v7}, Lorg/codeaurora/ims/ImsServiceSub;->access$100(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 785
    .end local v7    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    :cond_3
    const-string v8, "ImsServiceSub"

    const-string v9, "IMS Service Status Update failed!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v8}, Lorg/codeaurora/ims/ImsServiceSub;->access$200(Lorg/codeaurora/ims/ImsServiceSub;)V

    goto/16 :goto_0

    .line 790
    .end local v1    # "arResult":Landroid/os/AsyncResult;
    :pswitch_5
    const-string v8, "ImsServiceSub"

    const-string v9, "Received event: EVENT_GET_STATUS_UPDATE"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 792
    .local v2, "arResultSrv":Landroid/os/AsyncResult;
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_4

    iget-object v8, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_4

    .line 793
    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    .line 795
    .restart local v7    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v8, v7}, Lorg/codeaurora/ims/ImsServiceSub;->access$100(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 797
    .end local v7    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    :cond_4
    const-string v8, "ImsServiceSub"

    const-string v9, "IMS Service Status Update failed!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v8}, Lorg/codeaurora/ims/ImsServiceSub;->access$200(Lorg/codeaurora/ims/ImsServiceSub;)V

    goto/16 :goto_0

    .line 805
    .end local v2    # "arResultSrv":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 806
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v8, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$300(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 809
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 810
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v8, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$300(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 813
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 814
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v8, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$400(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 817
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 818
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v8, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$500(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 821
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 822
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v8, v0}, Lorg/codeaurora/ims/ImsServiceSub;->handleRefreshConfInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 825
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 826
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v8, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$600(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 829
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 830
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_5

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_5

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_5

    .line 831
    iget-object v9, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lorg/codeaurora/ims/CallModify;

    invoke-static {v9, v8}, Lorg/codeaurora/ims/ImsServiceSub;->access$700(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/CallModify;)V

    goto/16 :goto_0

    .line 833
    :cond_5
    const-string v8, "ImsServiceSub"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error EVENT_MODIFY_CALL AsyncResult ar= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 837
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v8, p1}, Lorg/codeaurora/ims/ImsServiceSub;->access$800(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 746
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
