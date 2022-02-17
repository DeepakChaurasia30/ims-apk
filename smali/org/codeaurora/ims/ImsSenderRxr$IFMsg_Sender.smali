.class Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;
.super Landroid/os/Handler;
.source "ImsSenderRxr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSenderRxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IFMsg_Sender"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSenderRxr;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 325
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 326
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 327
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 338
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lorg/codeaurora/ims/IFRequest;

    move-object v7, v9

    check-cast v7, Lorg/codeaurora/ims/IFRequest;

    .line 339
    .local v7, "rr":Lorg/codeaurora/ims/IFRequest;
    const/4 v6, 0x0

    .line 341
    .local v6, "req":Lorg/codeaurora/ims/IFRequest;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 348
    :pswitch_0
    const/4 v1, 0x0

    .line 351
    .local v1, "alreadySubtracted":Z
    :try_start_0
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v8, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    .line 353
    .local v8, "s":Landroid/net/LocalSocket;
    if-nez v8, :cond_2

    .line 354
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 355
    invoke-virtual {v7}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 356
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    if-lez v9, :cond_1

    .line 357
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v10, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 358
    :cond_1
    const/4 v1, 0x1

    .line 402
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v9}, Lorg/codeaurora/ims/ImsSenderRxr;->access$100(Lorg/codeaurora/ims/ImsSenderRxr;)V

    goto :goto_0

    .line 362
    :cond_2
    :try_start_1
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v10, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 363
    :try_start_2
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v11, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 365
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    :try_start_3
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    if-lez v9, :cond_3

    .line 368
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v10, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 369
    :cond_3
    const/4 v1, 0x1

    .line 371
    iget-object v9, v7, Lorg/codeaurora/ims/IFRequest;->mData:[B

    array-length v9, v9

    const/16 v10, 0x2000

    if-le v9, v10, :cond_8

    .line 372
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Message is larger than max bytes allowed! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lorg/codeaurora/ims/IFRequest;->mData:[B

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 379
    .end local v8    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v3

    .line 380
    .local v3, "ex":Ljava/io/IOException;
    :try_start_4
    const-string v9, "ImsSenderRxr"

    const-string v10, "IOException"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v10, v7, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-static {v9, v10}, Lorg/codeaurora/ims/ImsSenderRxr;->access$000(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v6

    .line 384
    if-nez v6, :cond_4

    if-nez v1, :cond_5

    .line 385
    :cond_4
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 386
    invoke-virtual {v7}, Lorg/codeaurora/ims/IFRequest;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 402
    :cond_5
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v9}, Lorg/codeaurora/ims/ImsSenderRxr;->access$100(Lorg/codeaurora/ims/ImsSenderRxr;)V

    .line 405
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_1
    if-nez v1, :cond_0

    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    if-lez v9, :cond_0

    .line 406
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v10, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    goto/16 :goto_0

    .line 365
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v9

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 388
    .end local v8    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v4

    .line 389
    .local v4, "exc":Ljava/lang/RuntimeException;
    :try_start_7
    const-string v9, "ImsSenderRxr"

    const-string v10, "Uncaught exception "

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v10, v7, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-static {v9, v10}, Lorg/codeaurora/ims/ImsSenderRxr;->access$000(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v6

    .line 393
    if-nez v6, :cond_6

    if-nez v1, :cond_7

    .line 394
    :cond_6
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 395
    invoke-virtual {v7}, Lorg/codeaurora/ims/IFRequest;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 402
    :cond_7
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v9}, Lorg/codeaurora/ims/ImsSenderRxr;->access$100(Lorg/codeaurora/ims/ImsSenderRxr;)V

    goto :goto_1

    .line 377
    .end local v4    # "exc":Ljava/lang/RuntimeException;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :cond_8
    :try_start_8
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    iget-object v10, v7, Lorg/codeaurora/ims/IFRequest;->mData:[B

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 402
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v9}, Lorg/codeaurora/ims/ImsSenderRxr;->access$100(Lorg/codeaurora/ims/ImsSenderRxr;)V

    goto :goto_1

    .end local v8    # "s":Landroid/net/LocalSocket;
    :catchall_1
    move-exception v9

    iget-object v10, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v10}, Lorg/codeaurora/ims/ImsSenderRxr;->access$100(Lorg/codeaurora/ims/ImsSenderRxr;)V

    throw v9

    .line 414
    .end local v1    # "alreadySubtracted":Z
    :pswitch_1
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v10, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v10

    .line 415
    :try_start_9
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 426
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-eqz v9, :cond_a

    .line 427
    const-string v9, "ImsSenderRxr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NOTE: mReqWaiting is NOT 0 but"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v12, v12, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " at TIMEOUT, reset!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " There still msg waitng for response"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v11, 0x0

    iput v11, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 434
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v11, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 435
    :try_start_a
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 436
    .local v2, "count":I
    const-string v9, "ImsSenderRxr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v2, :cond_9

    .line 440
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/codeaurora/ims/IFRequest;

    move-object v7, v0

    .line 441
    const-string v9, "ImsSenderRxr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v13}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 444
    :cond_9
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 456
    .end local v2    # "count":I
    .end local v5    # "i":I
    :cond_a
    :try_start_b
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    if-eqz v9, :cond_b

    .line 457
    const-string v9, "ImsSenderRxr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ERROR: mReqPending is NOT 0 but"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v12, v12, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " at TIMEOUT, reset!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v11, 0x0

    iput v11, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 462
    :cond_b
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 464
    :cond_c
    monitor-exit v10

    goto/16 :goto_0

    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v9

    .line 444
    :catchall_3
    move-exception v9

    :try_start_c
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 333
    return-void
.end method
