.class public Lorg/codeaurora/ims/ImsUtImpl;
.super Lcom/android/ims/internal/IImsUt$Stub;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;
    }
.end annotation


# static fields
.field static final CF_REASON_ALL:I = 0x4

.field static final CF_REASON_ALL_CONDITIONAL:I = 0x5

.field static final CF_REASON_BUSY:I = 0x1

.field static final CF_REASON_NOT_REACHABLE:I = 0x3

.field static final CF_REASON_NO_REPLY:I = 0x2

.field static final CF_REASON_UNCONDITIONAL:I = 0x0

.field private static final EVENT_QUERY_CB:I = 0xd

.field private static final EVENT_QUERY_CF:I = 0x1

.field private static final EVENT_QUERY_CLIP:I = 0x7

.field private static final EVENT_QUERY_CLIR:I = 0x5

.field private static final EVENT_QUERY_COLP:I = 0xb

.field private static final EVENT_QUERY_COLR:I = 0x9

.field private static final EVENT_QUERY_CW:I = 0x3

.field private static final EVENT_UPDATE_CB:I = 0xe

.field private static final EVENT_UPDATE_CF:I = 0x2

.field private static final EVENT_UPDATE_CLIP:I = 0x8

.field private static final EVENT_UPDATE_CLIR:I = 0x6

.field private static final EVENT_UPDATE_COLP:I = 0xc

.field private static final EVENT_UPDATE_COLR:I = 0xa

.field private static final EVENT_UPDATE_CW:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "ImsUtImpl"

.field private static final MAX_REQUESTS_PENDING:I = 0x32

.field static final SERVICE_CLASS_DATA:I = 0x2

.field static final SERVICE_CLASS_DATA_ASYNC:I = 0x20

.field static final SERVICE_CLASS_DATA_SYNC:I = 0x10

.field static final SERVICE_CLASS_FAX:I = 0x4

.field static final SERVICE_CLASS_MAX:I = 0x80

.field static final SERVICE_CLASS_NONE:I = 0x0

.field static final SERVICE_CLASS_PACKET:I = 0x40

.field static final SERVICE_CLASS_PAD:I = 0x80

.field static final SERVICE_CLASS_SMS:I = 0x8

.field static final SERVICE_CLASS_VOICE:I = 0x1

.field private static requestId:I

.field private static sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;


# instance fields
.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mHandler:Landroid/os/Handler;

.field private mListenerProxy:Lorg/codeaurora/ims/ImsUtListenerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, -0x1

    sput v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    return-void
.end method

.method private constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 1
    .param p1, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/ims/internal/IImsUt$Stub;-><init>()V

    .line 81
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsUtListenerProxy;

    .line 82
    new-instance v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;-><init>(Lorg/codeaurora/ims/ImsUtImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsUtImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsUtListenerProxy;

    return-object v0
.end method

.method public static createUtInterface(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 2
    .param p0, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .prologue
    .line 96
    if-nez p0, :cond_1

    .line 97
    const-string v0, "ImsUtImpl"

    const-string v1, "senderRxr value is null in createUtInterface()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    sget-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lorg/codeaurora/ims/ImsUtImpl;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsUtImpl;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    sput-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    goto :goto_0
.end method

.method private getFacilityFromCbType(I)I
    .locals 6
    .param p1, "cbType"    # I

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x4

    const/4 v0, 0x3

    .line 156
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 187
    :goto_0
    return v0

    .line 159
    :cond_0
    if-ne p1, v0, :cond_1

    move v0, v1

    .line 160
    goto :goto_0

    .line 162
    :cond_1
    if-ne p1, v1, :cond_2

    move v0, v2

    .line 163
    goto :goto_0

    .line 165
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    move v0, v3

    .line 166
    goto :goto_0

    .line 168
    :cond_3
    if-ne p1, v2, :cond_4

    move v0, v4

    .line 169
    goto :goto_0

    .line 171
    :cond_4
    if-ne p1, v4, :cond_5

    .line 172
    const/16 v0, 0x8

    goto :goto_0

    .line 174
    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    .line 175
    const/16 v0, 0x9

    goto :goto_0

    .line 177
    :cond_6
    const/16 v0, 0x9

    if-ne p1, v0, :cond_7

    .line 178
    const/16 v0, 0xa

    goto :goto_0

    .line 180
    :cond_7
    const/16 v0, 0xa

    if-ne p1, v0, :cond_8

    .line 181
    const/16 v0, 0xb

    goto :goto_0

    .line 183
    :cond_8
    if-ne p1, v3, :cond_9

    .line 184
    const/16 v0, 0xc

    goto :goto_0

    .line 187
    :cond_9
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getIdForRequest()I
    .locals 2

    .prologue
    .line 499
    sget v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 500
    sget v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 501
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 503
    :cond_0
    sget v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    return v0
.end method

.method public static getUtInterface()Lorg/codeaurora/ims/ImsUtImpl;
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    if-nez v0, :cond_0

    .line 107
    const-string v0, "ImsUtImpl"

    const-string v1, "sUtImpl is null in getUtInterface()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 117
    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsUtListenerProxy;

    .line 118
    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 119
    return-void
.end method

.method public getIcbAction(I)I
    .locals 2
    .param p1, "action"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x1

    .line 327
    if-nez p1, :cond_1

    .line 328
    const/4 v0, 0x2

    .line 336
    :cond_0
    :goto_0
    return v0

    .line 329
    :cond_1
    if-eq p1, v0, :cond_0

    .line 331
    if-ne p1, v1, :cond_2

    .line 332
    const/4 v0, 0x5

    goto :goto_0

    .line 333
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    move v0, v1

    .line 334
    goto :goto_0

    .line 336
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public queryCLIP()I
    .locals 5

    .prologue
    .line 273
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 274
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 275
    const-string v1, "ImsUtImpl"

    const-string v2, "Invalid request id for queryCLIP."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, -0x1

    .line 280
    .end local v0    # "id":I
    :goto_0
    return v0

    .line 279
    .restart local v0    # "id":I
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCLIP(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public queryCLIR()I
    .locals 5

    .prologue
    .line 259
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 260
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 261
    const-string v1, "ImsUtImpl"

    const-string v2, "Invalid request id for queryCLIR."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v0, -0x1

    .line 266
    .end local v0    # "id":I
    :goto_0
    return v0

    .line 265
    .restart local v0    # "id":I
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->getCLIR(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public queryCOLP()I
    .locals 6

    .prologue
    .line 301
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 302
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 303
    const-string v1, "ImsUtImpl"

    const-string v2, "Invalid request id for queryCLIP."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v0, -0x1

    .line 309
    .end local v0    # "id":I
    :goto_0
    return v0

    .line 307
    .restart local v0    # "id":I
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v2, "COLP"

    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->getSuppSvc(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public queryCOLR()I
    .locals 5

    .prologue
    .line 287
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 288
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 289
    const-string v1, "ImsUtImpl"

    const-string v2, "Invalid request id for queryCOLR."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v0, -0x1

    .line 294
    .end local v0    # "id":I
    :goto_0
    return v0

    .line 293
    .restart local v0    # "id":I
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->getCOLR(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public queryCallBarring(I)I
    .locals 9
    .param p1, "cbType"    # I

    .prologue
    const/16 v8, 0xd

    const/4 v1, 0x3

    const/4 v7, 0x0

    const/4 v0, -0x1

    .line 125
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v6

    .line 126
    .local v6, "id":I
    if-gez v6, :cond_0

    .line 127
    const-string v1, "ImsUtImpl"

    const-string v3, "Invalid request id for queryCallBarring."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    .line 150
    .end local v6    # "id":I
    :goto_0
    return v6

    .line 132
    .restart local v6    # "id":I
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getFacilityFromCbType(I)I

    move-result v2

    .line 133
    .local v2, "facility":I
    if-ne v2, v0, :cond_1

    .line 134
    const-string v1, "ImsUtImpl"

    const-string v3, "Unsupported call barring facility code in queryCallBarring."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    .line 135
    goto :goto_0

    .line 138
    :cond_1
    const/16 v0, 0xb

    if-ne v2, v0, :cond_2

    .line 139
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8, v6, v7, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 145
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8, v6, v7, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 6
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x1

    .line 195
    const/4 v1, -0x1

    .line 197
    .local v1, "reason":I
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 198
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 199
    const-string v3, "ImsUtImpl"

    const-string v4, "Invalid request id for queryCallForward."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 238
    .end local v0    # "id":I
    :goto_0
    return v0

    .line 204
    .restart local v0    # "id":I
    :cond_0
    if-nez p1, :cond_1

    .line 205
    const/4 v1, 0x0

    .line 234
    :goto_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v1, v5, p2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 207
    :cond_1
    if-ne p1, v5, :cond_2

    .line 208
    const/4 v1, 0x1

    goto :goto_1

    .line 210
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 211
    const/4 v1, 0x2

    goto :goto_1

    .line 213
    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 214
    const/4 v1, 0x3

    goto :goto_1

    .line 216
    :cond_4
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    .line 217
    const/4 v1, 0x4

    goto :goto_1

    .line 219
    :cond_5
    const/4 v3, 0x5

    if-ne p1, v3, :cond_6

    .line 220
    const/4 v1, 0x5

    goto :goto_1

    .line 222
    :cond_6
    const/4 v3, 0x6

    if-ne p1, v3, :cond_7

    .line 227
    const/4 v1, -0x1

    goto :goto_1

    .line 230
    :cond_7
    const-string v3, "ImsUtImpl"

    const-string v4, "Invalid condition for queryCallForward."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 231
    goto :goto_0
.end method

.method public queryCallWaiting()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 245
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 246
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 247
    const-string v1, "ImsUtImpl"

    const-string v2, "Invalid request id for queryCallWaiting."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v0, -0x1

    .line 252
    .end local v0    # "id":I
    :goto_0
    return v0

    .line 250
    .restart local v0    # "id":I
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallWaiting(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/internal/IImsUtListener;

    .prologue
    .line 489
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsUtListenerProxy;

    iput-object p1, v0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 490
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .prologue
    .line 317
    const-string v0, "ImsUtImpl"

    const-string v1, "Unsupported API transact() called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v0, -0x1

    return v0
.end method

.method public updateCLIP(Z)I
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 445
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 446
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 447
    const-string v1, "ImsUtImpl"

    const-string v2, "Invalid request id for updateCLIP."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v0, -0x1

    .line 453
    .end local v0    # "id":I
    :goto_0
    return v0

    .line 450
    .restart local v0    # "id":I
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v2, "CLIP"

    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public updateCLIR(I)I
    .locals 5
    .param p1, "clirMode"    # I

    .prologue
    .line 431
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 432
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 433
    const-string v1, "ImsUtImpl"

    const-string v2, "Invalid request id for updateCLIR."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v0, -0x1

    .line 438
    .end local v0    # "id":I
    :goto_0
    return v0

    .line 436
    .restart local v0    # "id":I
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCLIR(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public updateCOLP(Z)I
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 474
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 475
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 476
    const-string v1, "ImsUtImpl"

    const-string v2, "Invalid request id for updateCOLP."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v0, -0x1

    .line 482
    .end local v0    # "id":I
    :goto_0
    return v0

    .line 479
    .restart local v0    # "id":I
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v2, "COLP"

    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public updateCOLR(I)I
    .locals 5
    .param p1, "presentation"    # I

    .prologue
    .line 460
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 461
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 462
    const-string v1, "ImsUtImpl"

    const-string v2, "Invalid request id for updateCOLR."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v0, -0x1

    .line 467
    .end local v0    # "id":I
    :goto_0
    return v0

    .line 465
    .restart local v0    # "id":I
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCOLR(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 8
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;

    .prologue
    const/16 v7, 0xe

    const/4 v5, 0x0

    const/4 v0, -0x1

    .line 343
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v6

    .line 344
    .local v6, "id":I
    if-gez v6, :cond_0

    .line 345
    const-string v3, "ImsUtImpl"

    const-string v4, "Invalid request id for updateCallBarring."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    .line 370
    .end local v6    # "id":I
    :goto_0
    return v6

    .line 350
    .restart local v6    # "id":I
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getFacilityFromCbType(I)I

    move-result v2

    .line 351
    .local v2, "facility":I
    if-ne v2, v0, :cond_1

    .line 352
    const-string v3, "ImsUtImpl"

    const-string v4, "Unsupported call barring facility code in updateCallBarring."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    .line 353
    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsUtImpl;->getIcbAction(I)I

    move-result v1

    .line 358
    .local v1, "cbAction":I
    const/16 v0, 0xb

    if-ne v2, v0, :cond_2

    .line 359
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v4, 0x1

    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7, v6, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 365
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7, v6, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 8
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .prologue
    .line 378
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v7

    .line 379
    .local v7, "id":I
    if-gez v7, :cond_0

    .line 380
    const-string v0, "ImsUtImpl"

    const-string v1, "Invalid request id for updateCallForward."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v7, -0x1

    .line 390
    .end local v7    # "id":I
    :goto_0
    return v7

    .line 384
    .restart local v7    # "id":I
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v7, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v1, p1

    move v2, p2

    move v3, p4

    move-object v4, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I
    .locals 11
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "number"    # Ljava/lang/String;

    .prologue
    .line 398
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v10

    .line 399
    .local v10, "id":I
    if-gez v10, :cond_0

    .line 400
    const-string v0, "ImsUtImpl"

    const-string v1, "Invalid request id for updateCallForwardUncondTimer."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v10, -0x1

    .line 409
    .end local v10    # "id":I
    :goto_0
    return v10

    .line 404
    .restart local v10    # "id":I
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v7, 0x1

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v10, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public updateCallWaiting(ZI)I
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .prologue
    .line 416
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 417
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 418
    const-string v1, "ImsUtImpl"

    const-string v2, "Invalid request id for updateCallForward."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v0, -0x1

    .line 424
    .end local v0    # "id":I
    :goto_0
    return v0

    .line 421
    .restart local v0    # "id":I
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_0
.end method
