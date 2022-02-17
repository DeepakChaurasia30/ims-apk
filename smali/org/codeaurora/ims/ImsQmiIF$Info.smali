.class public final Lorg/codeaurora/ims/ImsQmiIF$Info;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation


# static fields
.field public static final ACCTECHSTATUS_FIELD_NUMBER:I = 0x7

.field public static final CALLTYPE_FIELD_NUMBER:I = 0x3

.field public static final ISVALID_FIELD_NUMBER:I = 0x1

.field public static final RESTRICTCAUSE_FIELD_NUMBER:I = 0x6

.field public static final STATUS_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field public static final USERDATA_FIELD_NUMBER:I = 0x5


# instance fields
.field private accTechStatus_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private callType_:I

.field private hasCallType:Z

.field private hasIsValid:Z

.field private hasRestrictCause:Z

.field private hasStatus:Z

.field private hasType:Z

.field private hasUserdata:Z

.field private isValid_:Z

.field private restrictCause_:I

.field private status_:I

.field private type_:I

.field private userdata_:Lcom/google/protobuf/micro/ByteStringMicro;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 812
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 817
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->isValid_:Z

    .line 834
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->type_:I

    .line 851
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->callType_:I

    .line 868
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->status_:I

    .line 885
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->userdata_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 902
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->restrictCause_:I

    .line 918
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    .line 991
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    .line 812
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1093
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1087
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    return-object v0
.end method


# virtual methods
.method public addAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .prologue
    .line 935
    if-nez p1, :cond_0

    .line 936
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 938
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    .line 941
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    return-object p0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .prologue
    .line 950
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearIsValid()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 951
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearType()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 952
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearCallType()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 953
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 954
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearUserdata()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 955
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearRestrictCause()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 956
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearAccTechStatus()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 957
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    .line 958
    return-object p0
.end method

.method public clearAccTechStatus()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .prologue
    .line 945
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    .line 946
    return-object p0
.end method

.method public clearCallType()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 860
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType:Z

    .line 861
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->callType_:I

    .line 862
    return-object p0
.end method

.method public clearIsValid()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 826
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid:Z

    .line 827
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->isValid_:Z

    .line 828
    return-object p0
.end method

.method public clearRestrictCause()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 911
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause:Z

    .line 912
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->restrictCause_:I

    .line 913
    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 877
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus:Z

    .line 878
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->status_:I

    .line 879
    return-object p0
.end method

.method public clearType()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .prologue
    .line 843
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType:Z

    .line 844
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->type_:I

    .line 845
    return-object p0
.end method

.method public clearUserdata()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .prologue
    .line 894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata:Z

    .line 895
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->userdata_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 896
    return-object p0
.end method

.method public getAccTechStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 925
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    return-object v0
.end method

.method public getAccTechStatusCount()I
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAccTechStatusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;",
            ">;"
        }
    .end annotation

    .prologue
    .line 921
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 994
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    if-gez v0, :cond_0

    .line 996
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getSerializedSize()I

    .line 998
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 853
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->callType_:I

    return v0
.end method

.method public getIsValid()Z
    .locals 1

    .prologue
    .line 818
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->isValid_:Z

    return v0
.end method

.method public getRestrictCause()I
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->restrictCause_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1003
    const/4 v2, 0x0

    .line 1004
    .local v2, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1005
    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getIsValid()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1008
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1009
    const/4 v3, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1012
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1013
    const/4 v3, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getCallType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1016
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1017
    const/4 v3, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1020
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1021
    const/4 v3, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1024
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1025
    const/4 v3, 0x6

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getRestrictCause()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1028
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatusList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 1029
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1031
    goto :goto_0

    .line 1032
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    :cond_6
    iput v2, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    .line 1033
    return v2
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 870
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->status_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 836
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->type_:I

    return v0
.end method

.method public getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->userdata_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public hasCallType()Z
    .locals 1

    .prologue
    .line 852
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType:Z

    return v0
.end method

.method public hasIsValid()Z
    .locals 1

    .prologue
    .line 819
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid:Z

    return v0
.end method

.method public hasRestrictCause()Z
    .locals 1

    .prologue
    .line 904
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 869
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 835
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType:Z

    return v0
.end method

.method public hasUserdata()Z
    .locals 1

    .prologue
    .line 887
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 962
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
    .line 809
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1041
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1042
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1046
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1047
    :sswitch_0
    return-object p0

    .line 1052
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setIsValid(Z)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    .line 1056
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    .line 1060
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    .line 1064
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    .line 1068
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setUserdata(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    .line 1072
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setRestrictCause(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    .line 1076
    :sswitch_7
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;-><init>()V

    .line 1077
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1078
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->addAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    .line 1042
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x35 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public setAccTechStatus(ILorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .prologue
    .line 928
    if-nez p2, :cond_0

    .line 929
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 931
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 932
    return-object p0
.end method

.method public setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 855
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType:Z

    .line 856
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->callType_:I

    .line 857
    return-object p0
.end method

.method public setIsValid(Z)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid:Z

    .line 822
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->isValid_:Z

    .line 823
    return-object p0
.end method

.method public setRestrictCause(I)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause:Z

    .line 907
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->restrictCause_:I

    .line 908
    return-object p0
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 872
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus:Z

    .line 873
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->status_:I

    .line 874
    return-object p0
.end method

.method public setType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType:Z

    .line 839
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->type_:I

    .line 840
    return-object p0
.end method

.method public setUserdata(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 889
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata:Z

    .line 890
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->userdata_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 891
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 968
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 969
    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getIsValid()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 971
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 972
    const/4 v2, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 974
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 975
    const/4 v2, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getCallType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 977
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 978
    const/4 v2, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 980
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 981
    const/4 v2, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 983
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 984
    const/4 v2, 0x6

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getRestrictCause()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 986
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatusList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 987
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 989
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    :cond_6
    return-void
.end method
