.class Lcom/qualcomm/ims/csvt/CsvtService$2;
.super Landroid/os/Handler;
.source "CsvtService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/ims/csvt/CsvtService;->createHandler()V
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
    .line 167
    iput-object p1, p0, Lcom/qualcomm/ims/csvt/CsvtService$2;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtService$2;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/csvt/CsvtService;->handleMessage(Landroid/os/Message;)V

    .line 171
    return-void
.end method
