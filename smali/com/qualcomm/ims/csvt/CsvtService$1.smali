.class Lcom/qualcomm/ims/csvt/CsvtService$1;
.super Landroid/telephony/PhoneStateListener;
.source "CsvtService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/ims/csvt/CsvtService;->createPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/csvt/CsvtService;


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/csvt/CsvtService;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 126
    iput-object p1, p0, Lcom/qualcomm/ims/csvt/CsvtService$1;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "s"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 129
    iget v1, p0, Lcom/qualcomm/ims/csvt/CsvtService$1;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 130
    .local v0, "phoneId":I
    const-string v1, "CsvtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneStateListener: CallState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/ims/csvt/CsvtService$1;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtService$1;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-static {v1}, Lcom/qualcomm/ims/csvt/CsvtService;->access$000(Lcom/qualcomm/ims/csvt/CsvtService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/qualcomm/ims/csvt/CsvtService$1;->this$0:Lcom/qualcomm/ims/csvt/CsvtService;

    invoke-static {v1}, Lcom/qualcomm/ims/csvt/CsvtService;->access$000(Lcom/qualcomm/ims/csvt/CsvtService;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    return-void
.end method
