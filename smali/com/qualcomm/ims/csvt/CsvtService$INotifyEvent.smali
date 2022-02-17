.class interface abstract Lcom/qualcomm/ims/csvt/CsvtService$INotifyEvent;
.super Ljava/lang/Object;
.source "CsvtService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/csvt/CsvtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "INotifyEvent"
.end annotation


# virtual methods
.method public abstract onNotify(Lorg/codeaurora/ims/csvt/ICsvtServiceListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
