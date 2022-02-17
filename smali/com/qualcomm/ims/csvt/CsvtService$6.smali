.class Lcom/qualcomm/ims/csvt/CsvtService$6;
.super Ljava/lang/Object;
.source "CsvtService.java"

# interfaces
.implements Lcom/qualcomm/ims/csvt/CsvtService$INotifyEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/ims/csvt/CsvtService;->notifyPhoneStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/csvt/CsvtService;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/csvt/CsvtService;I)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/qualcomm/ims/csvt/CsvtService$6;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    iput p2, p0, Lcom/qualcomm/ims/csvt/CsvtService$6;->val$state:I

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
    .line 461
    iget v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$6;->val$state:I

    invoke-interface {p1, v0}, Lorg/codeaurora/ims/csvt/ICsvtServiceListener;->onPhoneStateChanged(I)V

    .line 462
    return-void
.end method
