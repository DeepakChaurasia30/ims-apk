.class public final Lorg/codeaurora/ims/ImsQmiIF$Handover;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Handover"
.end annotation


# static fields
.field public static final HOEXTRA_FIELD_NUMBER:I = 0x4

.field public static final SRCTECH_FIELD_NUMBER:I = 0x2

.field public static final TARGETTECH_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasHoExtra:Z

.field private hasSrcTech:Z

.field private hasTargetTech:Z

.field private hasType:Z

.field private hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

.field private srcTech_:I

.field private targetTech_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 4033
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4038
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->type_:I

    .line 4055
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->srcTech_:I

    .line 4072
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->targetTech_:I

    .line 4089
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 4136
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    .line 4033
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4214
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Handover;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4208
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Handover;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Handover;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Handover;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    .line 4107
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearType()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4108
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearSrcTech()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4109
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearTargetTech()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4110
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4111
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    .line 4112
    return-object p0
.end method

.method public clearHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    .line 4101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra:Z

    .line 4102
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 4103
    return-object p0
.end method

.method public clearSrcTech()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    .line 4064
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech:Z

    .line 4065
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->srcTech_:I

    .line 4066
    return-object p0
.end method

.method public clearTargetTech()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    .line 4081
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech:Z

    .line 4082
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->targetTech_:I

    .line 4083
    return-object p0
.end method

.method public clearType()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4047
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType:Z

    .line 4048
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->type_:I

    .line 4049
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4139
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    if-gez v0, :cond_0

    .line 4141
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getSerializedSize()I

    .line 4143
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    return v0
.end method

.method public getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1

    .prologue
    .line 4091
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4148
    const/4 v0, 0x0

    .line 4149
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4150
    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4153
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4154
    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getSrcTech()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4157
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4158
    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getTargetTech()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4161
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4162
    const/4 v1, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4165
    :cond_3
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    .line 4166
    return v0
.end method

.method public getSrcTech()I
    .locals 1

    .prologue
    .line 4057
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->srcTech_:I

    return v0
.end method

.method public getTargetTech()I
    .locals 1

    .prologue
    .line 4074
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->targetTech_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 4040
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->type_:I

    return v0
.end method

.method public hasHoExtra()Z
    .locals 1

    .prologue
    .line 4090
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra:Z

    return v0
.end method

.method public hasSrcTech()Z
    .locals 1

    .prologue
    .line 4056
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech:Z

    return v0
.end method

.method public hasTargetTech()Z
    .locals 1

    .prologue
    .line 4073
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 4039
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4116
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4030
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4174
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4175
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4179
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4180
    :sswitch_0
    return-object p0

    .line 4185
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    goto :goto_0

    .line 4189
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setSrcTech(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    goto :goto_0

    .line 4193
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setTargetTech(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    goto :goto_0

    .line 4197
    :sswitch_4
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Extra;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Extra;-><init>()V

    .line 4198
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$Extra;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4199
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setHoExtra(Lorg/codeaurora/ims/ImsQmiIF$Extra;)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    goto :goto_0

    .line 4175
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setHoExtra(Lorg/codeaurora/ims/ImsQmiIF$Extra;)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .prologue
    .line 4093
    if-nez p1, :cond_0

    .line 4094
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4096
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra:Z

    .line 4097
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 4098
    return-object p0
.end method

.method public setSrcTech(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4059
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech:Z

    .line 4060
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->srcTech_:I

    .line 4061
    return-object p0
.end method

.method public setTargetTech(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4076
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech:Z

    .line 4077
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->targetTech_:I

    .line 4078
    return-object p0
.end method

.method public setType(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4042
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType:Z

    .line 4043
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->type_:I

    .line 4044
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4122
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4123
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4125
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4126
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getSrcTech()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4128
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4129
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getTargetTech()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4131
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4132
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 4134
    :cond_3
    return-void
.end method
