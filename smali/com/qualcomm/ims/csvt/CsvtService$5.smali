.class Lcom/qualcomm/ims/csvt/CsvtService$5;
.super Ljava/lang/Object;
.source "CsvtService.java"

# interfaces
.implements Lcom/qualcomm/ims/csvt/CsvtService$INotifyEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/ims/csvt/CsvtService;->notifyCallForwardingOptions(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/csvt/CsvtService;

.field final synthetic val$cfl:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/csvt/CsvtService;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/qualcomm/ims/csvt/CsvtService$5;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    iput-object p2, p0, Lcom/qualcomm/ims/csvt/CsvtService$5;->val$cfl:Ljava/util/List;

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
    .line 452
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$5;->val$cfl:Ljava/util/List;

    invoke-interface {p1, v0}, Lorg/codeaurora/ims/csvt/ICsvtServiceListener;->onCallForwardingOptions(Ljava/util/List;)V

    .line 453
    return-void
.end method
