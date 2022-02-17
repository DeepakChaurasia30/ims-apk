.class Lcom/qualcomm/ims/csvt/CsvtService$8;
.super Lorg/codeaurora/ims/csvt/ICsvtService$Stub;
.source "CsvtService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/csvt/CsvtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/csvt/CsvtService;


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/csvt/CsvtService;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/qualcomm/ims/csvt/CsvtService$8;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-direct {p0}, Lorg/codeaurora/ims/csvt/ICsvtService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$8;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-virtual {v0}, Lcom/qualcomm/ims/csvt/CsvtService;->acceptCall()V

    .line 612
    return-void
.end method

.method public dial(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$8;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/csvt/CsvtService;->dial(Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method public fallBack()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$8;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-virtual {v0}, Lcom/qualcomm/ims/csvt/CsvtService;->fallback()V

    .line 630
    return-void
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$8;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/ims/csvt/CsvtService;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 674
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 714
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$8;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/csvt/CsvtService;->getCallWaiting(Landroid/os/Message;)V

    .line 715
    return-void
.end method

.method public hangup()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$8;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-virtual {v0}, Lcom/qualcomm/ims/csvt/CsvtService;->hangup()V

    .line 603
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$8;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-virtual {v0}, Lcom/qualcomm/ims/csvt/CsvtService;->isActive()Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$8;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-virtual {v0}, Lcom/qualcomm/ims/csvt/CsvtService;->isIdle()Z

    move-result v0

    return v0
.end method

.method public isNonCsvtIdle()Z
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$8;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-virtual {v0}, Lcom/qualcomm/ims/csvt/CsvtService;->isNonCsvtIdle()Z

    move-result v0

    return v0
.end method

.method public registerListener(Lorg/codeaurora/ims/csvt/ICsvtServiceListener;)V
    .locals 1
    .param p1, "l"    # Lorg/codeaurora/ims/csvt/ICsvtServiceListener;

    .prologue
    .line 732
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$8;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/csvt/CsvtService;->registerListener(Lorg/codeaurora/ims/csvt/ICsvtServiceListener;)V

    .line 733
    return-void
.end method

.method public rejectCall()V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$8;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-virtual {v0}, Lcom/qualcomm/ims/csvt/CsvtService;->rejectCall()V

    .line 621
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "commandInterfaceCFAction"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 698
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$8;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/qualcomm/ims/csvt/CsvtService;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 701
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 728
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$8;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/ims/csvt/CsvtService;->setCallWaiting(ZLandroid/os/Message;)V

    .line 729
    return-void
.end method

.method public unregisterListener(Lorg/codeaurora/ims/csvt/ICsvtServiceListener;)V
    .locals 1
    .param p1, "l"    # Lorg/codeaurora/ims/csvt/ICsvtServiceListener;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$8;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/csvt/CsvtService;->unregisterListener(Lorg/codeaurora/ims/csvt/ICsvtServiceListener;)V

    .line 737
    return-void
.end method
