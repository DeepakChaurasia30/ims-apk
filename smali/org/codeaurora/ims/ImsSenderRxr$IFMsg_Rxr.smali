.class Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;
.super Ljava/lang/Object;
.source "ImsSenderRxr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSenderRxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IFMsg_Rxr"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lorg/codeaurora/ims/ImsSenderRxr;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 1

    .prologue
    .line 532
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->buffer:[B

    .line 534
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    .line 537
    const/4 v7, 0x0

    .line 538
    .local v7, "retryCount":I
    const/4 v4, 0x0

    .line 540
    .local v4, "killMe":Z
    sget-object v11, Lorg/codeaurora/ims/ImsSenderRxr;->SOCKET_NAME_IF:[Ljava/lang/String;

    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v12}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v2, v11, v12

    .line 543
    .local v2, "ifSocket":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 545
    :goto_0
    const/4 v8, 0x0

    .line 549
    .local v8, "s":Landroid/net/LocalSocket;
    :try_start_0
    sget-object v11, Lorg/codeaurora/ims/ImsSenderRxr;->SOCKET_NAME_IF:[Ljava/lang/String;

    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v12}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v2, v11, v12
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 552
    :try_start_1
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 553
    .end local v8    # "s":Landroid/net/LocalSocket;
    .local v9, "s":Landroid/net/LocalSocket;
    :try_start_2
    sget-boolean v11, Lorg/codeaurora/ims/ImsSenderRxr;->sTestMode:Z

    if-eqz v11, :cond_3

    .line 554
    new-instance v5, Landroid/net/LocalSocketAddress;

    const-string v11, "imstestrunnersocket"

    invoke-direct {v5, v11}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .line 559
    .local v5, "l":Landroid/net/LocalSocketAddress;
    :goto_1
    invoke-virtual {v9, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 560
    const-string v11, "ImsSenderRxr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connecting to socket "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 595
    const/4 v7, 0x0

    .line 597
    :try_start_3
    iget-object v11, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iput-object v9, v11, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    .line 599
    const-string v11, "ImsSenderRxr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connected to \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v13, v13, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const-string v11, "ImsSenderRxr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "For instance ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v13}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] connected to \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 602
    const/4 v6, 0x0

    .line 604
    .local v6, "length":I
    :try_start_4
    iget-object v11, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v11, v11, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 608
    .local v3, "is":Ljava/io/InputStream;
    :cond_0
    :goto_2
    iget-object v11, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->buffer:[B

    invoke-static {v3, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Ljava/io/InputStream;[B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    move-result v6

    .line 610
    if-gez v6, :cond_6

    .line 628
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_3
    :try_start_5
    const-string v11, "ImsSenderRxr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disconnected from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v11, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v11, v11, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v11, :cond_1

    .line 632
    :try_start_6
    iget-object v11, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v11, v11, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 635
    :goto_4
    :try_start_7
    iget-object v11, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v12, 0x0

    iput-object v12, v11, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    .line 637
    :cond_1
    invoke-static {}, Lorg/codeaurora/ims/IFRequest;->resetSerial()V

    .line 641
    iget-object v11, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lorg/codeaurora/ims/ImsSenderRxr;->access$500(Lorg/codeaurora/ims/ImsSenderRxr;IZ)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 644
    .end local v5    # "l":Landroid/net/LocalSocketAddress;
    .end local v6    # "length":I
    :catch_0
    move-exception v10

    move-object v8, v9

    .line 645
    .end local v9    # "s":Landroid/net/LocalSocket;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    .local v10, "tr":Ljava/lang/Throwable;
    :goto_5
    const-string v11, "ImsSenderRxr"

    const-string v12, "Uncaught exception"

    invoke-static {v11, v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    .end local v8    # "s":Landroid/net/LocalSocket;
    .end local v10    # "tr":Ljava/lang/Throwable;
    :cond_2
    :goto_6
    return-void

    .line 556
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :cond_3
    :try_start_8
    new-instance v5, Landroid/net/LocalSocketAddress;

    sget-object v11, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v5, v2, v11}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .restart local v5    # "l":Landroid/net/LocalSocketAddress;
    goto/16 :goto_1

    .line 562
    .end local v5    # "l":Landroid/net/LocalSocketAddress;
    .end local v9    # "s":Landroid/net/LocalSocket;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v1

    .line 563
    .local v1, "ex":Ljava/io/IOException;
    :goto_7
    :try_start_9
    const-string v11, "ImsSenderRxr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in socket create\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    if-ne v7, v14, :cond_4

    .line 569
    const-string v11, "ImsSenderRxr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "socket after "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " times, continuing to retry silently"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v11, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v11}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 574
    :try_start_a
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 575
    const/4 v4, 0x1

    goto :goto_6

    .line 577
    :catch_2
    move-exception v0

    .line 578
    .local v0, "e":Ljava/io/IOException;
    :try_start_b
    const-string v11, "ImsSenderRxr"

    const-string v12, "IOException"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 644
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v10

    goto :goto_5

    .line 581
    .restart local v1    # "ex":Ljava/io/IOException;
    :cond_4
    if-lez v7, :cond_5

    if-ge v7, v14, :cond_5

    .line 582
    const-string v11, "ImsSenderRxr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "socket; retrying after timeout"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 587
    :cond_5
    const-wide/16 v12, 0xfa0

    :try_start_c
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    .line 591
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 592
    goto/16 :goto_0

    .line 615
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v8    # "s":Landroid/net/LocalSocket;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "l":Landroid/net/LocalSocketAddress;
    .restart local v6    # "length":I
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :cond_6
    :try_start_d
    const-string v11, "ImsSenderRxr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Read packet: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bytes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    if-lez v6, :cond_0

    iget-object v11, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;->buffer:[B

    invoke-virtual {v11, v12, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->processResponse([BI)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_2

    .line 620
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    .line 621
    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_e
    const-string v11, "ImsSenderRxr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket closed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 623
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v10

    .line 624
    .restart local v10    # "tr":Ljava/lang/Throwable;
    const-string v11, "ImsSenderRxr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Uncaught exception read length="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_3

    .line 588
    .end local v5    # "l":Landroid/net/LocalSocketAddress;
    .end local v6    # "length":I
    .end local v9    # "s":Landroid/net/LocalSocket;
    .end local v10    # "tr":Ljava/lang/Throwable;
    .restart local v1    # "ex":Ljava/io/IOException;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :catch_6
    move-exception v11

    goto :goto_8

    .line 633
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v8    # "s":Landroid/net/LocalSocket;
    .restart local v5    # "l":Landroid/net/LocalSocketAddress;
    .restart local v6    # "length":I
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :catch_7
    move-exception v11

    goto/16 :goto_4

    .line 562
    .end local v5    # "l":Landroid/net/LocalSocketAddress;
    .end local v6    # "length":I
    :catch_8
    move-exception v1

    move-object v8, v9

    .end local v9    # "s":Landroid/net/LocalSocket;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_7
.end method
