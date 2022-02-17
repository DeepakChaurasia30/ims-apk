.class public Lorg/codeaurora/ims/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# static fields
.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_DOMAIN_UNKNOWN:I = 0xb

.field public static final CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final CALL_TYPE_SMS:I = 0x5

.field public static final CALL_TYPE_UNKNOWN:I = 0xa

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VT:I = 0x3

.field public static final CALL_TYPE_VT_NODIR:I = 0x4

.field public static final CALL_TYPE_VT_PAUSE:I = 0x6

.field public static final CALL_TYPE_VT_RESUME:I = 0x7

.field public static final CALL_TYPE_VT_RX:I = 0x2

.field public static final CALL_TYPE_VT_TX:I = 0x1

.field public static final EXTRAS_CODEC:Ljava/lang/String; = "Codec"

.field public static final EXTRAS_HANDOVER_INFORMATION:Ljava/lang/String; = "handoverInfo"

.field public static final EXTRAS_IS_CONFERENCE_URI:Ljava/lang/String; = "isConferenceUri"

.field public static final EXTRAS_PARENT_CALL_ID:Ljava/lang/String; = "parentCallId"

.field public static final EXTRA_TYPE_LTE_TO_IWLAN_HO_FAIL:I = 0x1

.field public static final MEDIA_ID_UNKNOWN:I = -0x1

.field public static final VIDEO_PAUSE_STATE_PAUSED:I = 0x1

.field public static final VIDEO_PAUSE_STATE_RESUMED:I = 0x2


# instance fields
.field public callMediaId:I

.field public call_domain:I

.field public call_type:I

.field public callsubstate:I

.field public extras:[Ljava/lang/String;

.field public localAbility:[Lorg/codeaurora/ims/ServiceStatus;

.field private mVideoPauseState:I

.field public peerAbility:[Lorg/codeaurora/ims/ServiceStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 158
    const/4 v0, 0x2

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    .line 164
    const/16 v0, 0xa

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 165
    const/4 v0, 0x4

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 167
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "callDomain"    # I
    .param p3, "extraparams"    # [Ljava/lang/String;

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 158
    const/4 v0, 0x2

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    .line 170
    iput p1, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 171
    iput p2, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 172
    iput-object p3, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 173
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/CallDetails;)V
    .locals 1
    .param p1, "srcCall"    # Lorg/codeaurora/ims/CallDetails;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 158
    const/4 v0, 0x2

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    .line 176
    if-eqz p1, :cond_0

    .line 177
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 178
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 179
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 180
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 181
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 182
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 183
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 185
    :cond_0
    return-void
.end method

.method private addExtra(Ljava/lang/String;)V
    .locals 3
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 233
    iget-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 237
    :cond_0
    return-void
.end method

.method public static getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 242
    .local v1, "extras":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 243
    const/4 v4, 0x0

    .line 256
    :goto_0
    return-object v4

    .line 248
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 250
    if-eqz v1, :cond_1

    .line 251
    const/4 v2, 0x0

    .line 252
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 253
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    goto :goto_1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object v4, v1

    .line 256
    goto :goto_0
.end method


# virtual methods
.method public getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "extras"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 278
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 279
    aget-object v2, p1, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "currKey":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 285
    .end local v0    # "currKey":[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 277
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getVideoPauseState()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    return v0
.end method

.method public hasMediaIdValid()Z
    .locals 2

    .prologue
    .line 306
    iget v0, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExtras([Ljava/lang/String;)V
    .locals 0
    .param p1, "extraparams"    # [Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setExtrasFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/codeaurora/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setValueForKeyInExtras([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "extras"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 289
    if-eqz p1, :cond_1

    .line 290
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 291
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 292
    aget-object v2, p1, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "currKey":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    const/4 v2, 0x1

    aput-object p3, v0, v2

    .line 290
    .end local v0    # "currKey":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "i":I
    :cond_1
    return-object p1
.end method

.method public setVideoPauseState(I)V
    .locals 0
    .param p1, "videoPauseState"    # I

    .prologue
    .line 265
    packed-switch p1, :pswitch_data_0

    .line 270
    :goto_0
    return-void

    .line 268
    :pswitch_0
    iput p1, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    .line 314
    const-string v3, ""

    .local v3, "extrasResult":Ljava/lang/String;
    const-string v8, ""

    .local v8, "localSrvAbility":Ljava/lang/String;
    const-string v9, ""

    .line 315
    .local v9, "peerSrvAbility":Ljava/lang/String;
    iget-object v12, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 316
    iget-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v10, v0, v4

    .line 317
    .local v10, "s":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 316
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 321
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v10    # "s":Ljava/lang/String;
    :cond_0
    iget-object v12, p0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v12, :cond_2

    .line 322
    iget-object v0, p0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .local v0, "arr$":[Lorg/codeaurora/ims/ServiceStatus;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    move v5, v4

    .end local v0    # "arr$":[Lorg/codeaurora/ims/ServiceStatus;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v11, v0, v5

    .line 323
    .local v11, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v11, :cond_1

    .line 324
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "isValid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v11, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " type = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v11, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " status = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v11, Lorg/codeaurora/ims/ServiceStatus;->status:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 326
    iget-object v12, v11, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v12, :cond_1

    .line 327
    iget-object v1, v11, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .local v1, "arr$":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v7, :cond_1

    aget-object v2, v1, v4

    .line 328
    .local v2, "at":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " accTechStatus "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 327
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 322
    .end local v1    # "arr$":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v2    # "at":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :cond_1
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_1

    .line 335
    .end local v5    # "i$":I
    .end local v11    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_2
    iget-object v12, p0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v12, :cond_4

    .line 336
    iget-object v0, p0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .restart local v0    # "arr$":[Lorg/codeaurora/ims/ServiceStatus;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    move v5, v4

    .end local v0    # "arr$":[Lorg/codeaurora/ims/ServiceStatus;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v6, :cond_4

    aget-object v11, v0, v5

    .line 337
    .restart local v11    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v11, :cond_3

    .line 338
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "isValid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v11, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " type = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v11, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " status = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v11, Lorg/codeaurora/ims/ServiceStatus;->status:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 340
    iget-object v12, v11, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v12, :cond_3

    .line 341
    iget-object v1, v11, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .restart local v1    # "arr$":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    array-length v7, v1

    .restart local v7    # "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_4
    if-ge v4, v7, :cond_3

    aget-object v2, v1, v4

    .line 342
    .restart local v2    # "at":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " accTechStatus "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 341
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 336
    .end local v1    # "arr$":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v2    # "at":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :cond_3
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_3

    .line 349
    .end local v5    # "i$":I
    .end local v11    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " callSubState "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " videoPauseState"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mediaId"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Local Ability "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Peer Ability "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method public update(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 9
    .param p1, "update"    # Lorg/codeaurora/ims/CallDetails;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, "hasChanged":Z
    if-nez p1, :cond_0

    .line 225
    :goto_0
    return v4

    .line 192
    :cond_0
    iget v5, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget v6, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-eq v5, v6, :cond_1

    .line 193
    iget v5, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iput v5, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 194
    const/4 v1, 0x1

    .line 196
    :cond_1
    iget v5, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    iget v6, p1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    if-eq v5, v6, :cond_2

    .line 197
    iget v5, p1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    iput v5, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 198
    const/4 v1, 0x1

    .line 200
    :cond_2
    iget v5, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    iget v6, p1, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    if-eq v5, v6, :cond_3

    .line 201
    iget v5, p1, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    iput v5, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 202
    const/4 v1, 0x1

    .line 205
    :cond_3
    iget-object v5, p1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    iput-object v5, p0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 206
    iget-object v5, p1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    iput-object v5, p0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 208
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_6

    .line 209
    iget-object v5, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "currKeyValuePair":[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 211
    iget-object v5, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v6, v0, v4

    invoke-virtual {p0, v5, v6}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "oldVal":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 213
    aget-object v5, v0, v8

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 214
    iget-object v5, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v6, v0, v4

    aget-object v7, v0, v8

    invoke-virtual {p0, v5, v6, v7}, Lorg/codeaurora/ims/CallDetails;->setValueForKeyInExtras([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 216
    const/4 v1, 0x1

    .line 208
    .end local v3    # "oldVal":Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 219
    .restart local v3    # "oldVal":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x1

    .line 220
    iget-object v5, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/CallDetails;->addExtra(Ljava/lang/String;)V

    goto :goto_2

    .line 224
    .end local v0    # "currKeyValuePair":[Ljava/lang/String;
    .end local v3    # "oldVal":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getVideoPauseState()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/CallDetails;->setVideoPauseState(I)V

    move v4, v1

    .line 225
    goto :goto_0
.end method
