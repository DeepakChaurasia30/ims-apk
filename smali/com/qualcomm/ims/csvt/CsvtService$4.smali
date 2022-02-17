.class Lcom/qualcomm/ims/csvt/CsvtService$4;
.super Ljava/lang/Object;
.source "CsvtService.java"

# interfaces
.implements Lcom/qualcomm/ims/csvt/CsvtService$INotifyEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/ims/csvt/CsvtService;->onGetCallWaiting(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/csvt/CsvtService;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/csvt/CsvtService;Z)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/qualcomm/ims/csvt/CsvtService$4;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    iput-boolean p2, p0, Lcom/qualcomm/ims/csvt/CsvtService$4;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lorg/codeaurora/ims/csvt/ICsvtServiceListener;)V
    .locals 1
    .param p1, "l"    # Lorg/codeaurora/ims/csvt/ICsvtServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$4;->val$enabled:Z

    invoke-interface {p1, v0}, Lorg/codeaurora/ims/csvt/ICsvtServiceListener;->onCallWaiting(Z)V

    .line 306
    return-void
.end method
