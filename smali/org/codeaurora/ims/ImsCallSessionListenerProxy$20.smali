.class Lorg/codeaurora/ims/ImsCallSessionListenerProxy$20;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$20;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$20;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->access$100(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;)V

    .line 476
    return-void
.end method
