.class Lcom/qualcomm/ims/csvt/CsvtCallTracker$2;
.super Lcom/android/ims/ImsCall$Listener;
.source "CsvtCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/csvt/CsvtCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/csvt/CsvtCallTracker;


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/csvt/CsvtCallTracker;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$2;->this$0:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-direct {p0}, Lcom/android/ims/ImsCall$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallProgressing(Lcom/android/ims/ImsCall;)V
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 524
    const-string v0, "CsvtCallTracker"

    const-string v1, "onCallProgressing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$2;->this$0:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    sget-object v1, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->ALERTING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    invoke-static {v0, p1, v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->access$800(Lcom/qualcomm/ims/csvt/CsvtCallTracker;Lcom/android/ims/ImsCall;Lcom/qualcomm/ims/csvt/CsvtConnection$State;)V

    .line 528
    return-void
.end method

.method public onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 539
    const-string v0, "CsvtCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStartFailed reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$2;->this$0:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-static {v0, p1, p2}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->access$900(Lcom/qualcomm/ims/csvt/CsvtCallTracker;Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 542
    return-void
.end method

.method public onCallStarted(Lcom/android/ims/ImsCall;)V
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 532
    const-string v0, "CsvtCallTracker"

    const-string v1, "onCallStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$2;->this$0:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    sget-object v1, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->ACTIVE:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    invoke-static {v0, p1, v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->access$800(Lcom/qualcomm/ims/csvt/CsvtCallTracker;Lcom/android/ims/ImsCall;Lcom/qualcomm/ims/csvt/CsvtConnection$State;)V

    .line 535
    return-void
.end method

.method public onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 546
    const-string v0, "CsvtCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallTerminated reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$2;->this$0:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-static {v0, p1, p2}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->access$900(Lcom/qualcomm/ims/csvt/CsvtCallTracker;Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 548
    return-void
.end method

.method public onCallUpdated(Lcom/android/ims/ImsCall;)V
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 552
    const-string v0, "CsvtCallTracker"

    const-string v1, "onCallUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-void
.end method
