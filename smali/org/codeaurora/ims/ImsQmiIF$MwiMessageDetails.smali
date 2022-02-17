.class public final Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MwiMessageDetails"
.end annotation


# static fields
.field public static final DATE_FIELD_NUMBER:I = 0x4

.field public static final FROMADDRESS_FIELD_NUMBER:I = 0x2

.field public static final MESSAGEID_FIELD_NUMBER:I = 0x6

.field public static final MESSAGETYPE_FIELD_NUMBER:I = 0x7

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5

.field public static final SUBJECT_FIELD_NUMBER:I = 0x3

.field public static final TOADDRESS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private date_:Ljava/lang/String;

.field private fromAddress_:Ljava/lang/String;

.field private hasDate:Z

.field private hasFromAddress:Z

.field private hasMessageId:Z

.field private hasMessageType:Z

.field private hasPriority:Z

.field private hasSubject:Z

.field private hasToAddress:Z

.field private messageId_:Ljava/lang/String;

.field private messageType_:I

.field private priority_:I

.field private subject_:Ljava/lang/String;

.field private toAddress_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 6907
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6912
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    .line 6929
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    .line 6946
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    .line 6963
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    .line 6980
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    .line 6997
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    .line 7014
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    .line 7070
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    .line 6907
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7170
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7164
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7029
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearToAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7030
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearFromAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7031
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearSubject()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7032
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearDate()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7033
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearPriority()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7034
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearMessageId()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7035
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearMessageType()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7036
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    .line 7037
    return-object p0
.end method

.method public clearDate()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 6972
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate:Z

    .line 6973
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    .line 6974
    return-object p0
.end method

.method public clearFromAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 6938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress:Z

    .line 6939
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    .line 6940
    return-object p0
.end method

.method public clearMessageId()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7006
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId:Z

    .line 7007
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    .line 7008
    return-object p0
.end method

.method public clearMessageType()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7023
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType:Z

    .line 7024
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    .line 7025
    return-object p0
.end method

.method public clearPriority()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 6989
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority:Z

    .line 6990
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    .line 6991
    return-object p0
.end method

.method public clearSubject()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 6955
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject:Z

    .line 6956
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    .line 6957
    return-object p0
.end method

.method public clearToAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 6921
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress:Z

    .line 6922
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    .line 6923
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7073
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 7075
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getSerializedSize()I

    .line 7077
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6964
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6930
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6998
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 7016
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 6982
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7082
    const/4 v0, 0x0

    .line 7083
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7084
    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getToAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7087
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7088
    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getFromAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7091
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7092
    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7095
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7096
    const/4 v1, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7099
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7100
    const/4 v1, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getPriority()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7103
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7104
    const/4 v1, 0x6

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7107
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7108
    const/4 v1, 0x7

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7111
    :cond_6
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    .line 7112
    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6947
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6913
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDate()Z
    .locals 1

    .prologue
    .line 6965
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate:Z

    return v0
.end method

.method public hasFromAddress()Z
    .locals 1

    .prologue
    .line 6931
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress:Z

    return v0
.end method

.method public hasMessageId()Z
    .locals 1

    .prologue
    .line 6999
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId:Z

    return v0
.end method

.method public hasMessageType()Z
    .locals 1

    .prologue
    .line 7015
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType:Z

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 6981
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority:Z

    return v0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 6948
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject:Z

    return v0
.end method

.method public hasToAddress()Z
    .locals 1

    .prologue
    .line 6914
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7041
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
    .line 6904
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7120
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7121
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7125
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7126
    :sswitch_0
    return-object p0

    .line 7131
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setToAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7135
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setFromAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7139
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setSubject(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7143
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setDate(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7147
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setPriority(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7151
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setMessageId(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7155
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setMessageType(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7121
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public setDate(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6967
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate:Z

    .line 6968
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    .line 6969
    return-object p0
.end method

.method public setFromAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6933
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress:Z

    .line 6934
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    .line 6935
    return-object p0
.end method

.method public setMessageId(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7001
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId:Z

    .line 7002
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    .line 7003
    return-object p0
.end method

.method public setMessageType(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7018
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType:Z

    .line 7019
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    .line 7020
    return-object p0
.end method

.method public setPriority(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6984
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority:Z

    .line 6985
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    .line 6986
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject:Z

    .line 6951
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    .line 6952
    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6916
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress:Z

    .line 6917
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    .line 6918
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
    .line 7047
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7048
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getToAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7050
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7051
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getFromAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7053
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7054
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7056
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7057
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7059
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7060
    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7062
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7063
    const/4 v0, 0x6

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7065
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7066
    const/4 v0, 0x7

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7068
    :cond_6
    return-void
.end method
