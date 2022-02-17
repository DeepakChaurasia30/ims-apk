.class Lcom/qualcomm/ims/csvt/CsvtService$7;
.super Ljava/lang/Object;
.source "CsvtService.java"

# interfaces
.implements Lcom/qualcomm/ims/csvt/CsvtService$INotifyEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/ims/csvt/CsvtService;->notifyCallStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/csvt/CsvtService;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/csvt/CsvtService;I)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/qualcomm/ims/csvt/CsvtService$7;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    iput p2, p0, Lcom/qualcomm/ims/csvt/CsvtService$7;->val$status:I

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
    .line 470
    iget v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$7;->val$status:I

    invoke-interface {p1, v0}, Lorg/codeaurora/ims/csvt/ICsvtServiceListener;->onCallStatus(I)V

    .line 471
    return-void
.end method
