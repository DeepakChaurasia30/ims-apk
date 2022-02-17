.class Lcom/qualcomm/ims/csvt/CsvtCallTracker$3;
.super Lcom/android/ims/ImsConnectionStateListener;
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
    .line 562
    iput-object p1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$3;->this$0:Lcom/qualcomm/ims/csvt/CsvtCallTracker;

    invoke-direct {p0}, Lcom/android/ims/ImsConnectionStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onImsConnected()V
    .locals 2

    .prologue
    .line 565
    const-string v0, "CsvtCallTracker"

    const-string v1, "onImsConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-void
.end method

.method public onImsDisconnected()V
    .locals 2

    .prologue
    .line 570
    const-string v0, "CsvtCallTracker"

    const-string v1, "onImsDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void
.end method

.method public onImsResumed()V
    .locals 2

    .prologue
    .line 575
    const-string v0, "CsvtCallTracker"

    const-string v1, "onImsResumed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-void
.end method

.method public onImsSuspended()V
    .locals 2

    .prologue
    .line 580
    const-string v0, "CsvtCallTracker"

    const-string v1, "onImsSuspended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-void
.end method
