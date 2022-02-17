.class Lcom/qualcomm/ims/csvt/CsvtCallTracker$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 71
    iput-object p1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$1;->this$0:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 74
    const-string v1, "CsvtCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.codeaurora.ims.csvt.NEW_CSVT_RINGING_CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$1;->this$0:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    iget-object v2, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$1;->this$0:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->sendMessage(Landroid/os/Message;)Z

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.ims.IMS_SERVICE_UP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    const/4 v0, -0x1

    .line 80
    .local v0, "phoneId":I
    const-string v1, "android:phoneid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    const-string v1, "android:phoneid"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 83
    :cond_2
    const-string v1, "CsvtCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : intent phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$1;->this$0:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-static {v3}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->access$000(Lcom/qualcomm/ims/csvt/CsvtCallTracker;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-eq v0, v4, :cond_3

    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$1;->this$0:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-static {v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->access$000(Lcom/qualcomm/ims/csvt/CsvtCallTracker;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$1;->this$0:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-static {v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->access$100(Lcom/qualcomm/ims/csvt/CsvtCallTracker;)V

    .line 86
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$1;->this$0:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-static {v1, v5}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->access$202(Lcom/qualcomm/ims/csvt/CsvtCallTracker;Lcom/android/ims/ImsManager;)Lcom/android/ims/ImsManager;

    .line 87
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$1;->this$0:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-static {v1, v0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->access$002(Lcom/qualcomm/ims/csvt/CsvtCallTracker;I)I

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$1;->this$0:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-static {v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->access$300(Lcom/qualcomm/ims/csvt/CsvtCallTracker;)V

    goto :goto_0

    .line 90
    .end local v0    # "phoneId":I
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$1;->this$0:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-static {v1}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->access$100(Lcom/qualcomm/ims/csvt/CsvtCallTracker;)V

    .line 92
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$1;->this$0:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-static {v1, v5}, Lcom/qualcomm/ims/csvt/CsvtCallTracker;->access$202(Lcom/qualcomm/ims/csvt/CsvtCallTracker;Lcom/android/ims/ImsManager;)Lcom/android/ims/ImsManager;

    goto :goto_0
.end method
