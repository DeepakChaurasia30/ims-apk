.class Lorg/codeaurora/ims/IFRequest;
.super Ljava/lang/Object;
.source "ImsSenderRxr.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ImsSenderRxr"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:I

.field private static sPool:Lorg/codeaurora/ims/IFRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sSerialMonitor:Ljava/lang/Object;


# instance fields
.field mData:[B

.field mNext:Lorg/codeaurora/ims/IFRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    sput v1, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/IFRequest;->sSerialMonitor:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/IFRequest;->sPoolSync:Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    .line 81
    sput v1, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;
    .locals 4
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    sget-object v2, Lorg/codeaurora/ims/IFRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    if-eqz v1, :cond_0

    .line 105
    sget-object v0, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    .line 106
    iget-object v1, v0, Lorg/codeaurora/ims/IFRequest;->mNext:Lorg/codeaurora/ims/IFRequest;

    sput-object v1, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    .line 107
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/codeaurora/ims/IFRequest;->mNext:Lorg/codeaurora/ims/IFRequest;

    .line 108
    sget v1, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    .line 110
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-nez v0, :cond_1

    .line 113
    new-instance v0, Lorg/codeaurora/ims/IFRequest;

    .end local v0    # "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {v0}, Lorg/codeaurora/ims/IFRequest;-><init>()V

    .line 116
    .restart local v0    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_1
    sget-object v2, Lorg/codeaurora/ims/IFRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 117
    :try_start_1
    sget v1, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I

    iput v1, v0, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    .line 118
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    iput p0, v0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 120
    iput-object p1, v0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    .line 122
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_2

    .line 123
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Message target must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 118
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 126
    :cond_2
    return-object v0
.end method

.method static resetSerial()V
    .locals 2

    .prologue
    .line 148
    sget-object v1, Lorg/codeaurora/ims/IFRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    const/4 v0, 0x0

    :try_start_0
    sput v0, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I

    .line 150
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .locals 5
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 175
    if-nez p1, :cond_1

    .line 176
    const/4 v1, 0x0

    .line 183
    .local v1, "ex":Ljava/lang/RuntimeException;
    :goto_0
    const-string v2, "ImsSenderRxr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v4}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v2, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, p2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 189
    iget-object v2, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 191
    :cond_0
    return-void

    .line 178
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "errorMsg":Ljava/lang/String;
    new-instance v1, Lorg/codeaurora/ims/ImsRilException;

    invoke-direct {v1, p1, v0}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method release()V
    .locals 3

    .prologue
    .line 134
    sget-object v1, Lorg/codeaurora/ims/IFRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    sget v0, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 136
    sget-object v0, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    iput-object v0, p0, Lorg/codeaurora/ims/IFRequest;->mNext:Lorg/codeaurora/ims/IFRequest;

    .line 137
    sput-object p0, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    .line 138
    sget v0, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    .line 141
    :cond_0
    monitor-exit v1

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method serialString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 158
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget v4, p0, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "sn":Ljava/lang/String;
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "s":I
    :goto_0
    rsub-int/lit8 v4, v1, 0x4

    if-ge v0, v4, :cond_0

    .line 163
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
