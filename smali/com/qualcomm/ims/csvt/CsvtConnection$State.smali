.class public final enum Lcom/qualcomm/ims/csvt/CsvtConnection$State;
.super Ljava/lang/Enum;
.source "CsvtConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/csvt/CsvtConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/ims/csvt/CsvtConnection$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/ims/csvt/CsvtConnection$State;

.field public static final enum ACTIVE:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

.field public static final enum ALERTING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

.field public static final enum DIALING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

.field public static final enum DISCONNECTED:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

.field public static final enum DISCONNECTING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

.field public static final enum IDLE:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

.field public static final enum INCOMING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

.field public static final enum WAITING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/qualcomm/ims/csvt/CsvtConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->IDLE:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    new-instance v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/qualcomm/ims/csvt/CsvtConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->ACTIVE:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    new-instance v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    const-string v1, "DIALING"

    invoke-direct {v0, v1, v5}, Lcom/qualcomm/ims/csvt/CsvtConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->DIALING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    new-instance v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    const-string v1, "ALERTING"

    invoke-direct {v0, v1, v6}, Lcom/qualcomm/ims/csvt/CsvtConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->ALERTING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    new-instance v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v7}, Lcom/qualcomm/ims/csvt/CsvtConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->INCOMING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    new-instance v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    const-string v1, "WAITING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/ims/csvt/CsvtConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->WAITING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    new-instance v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/ims/csvt/CsvtConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->DISCONNECTED:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    new-instance v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    const-string v1, "DISCONNECTING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/ims/csvt/CsvtConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->DISCONNECTING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    .line 19
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    sget-object v1, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->IDLE:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->ACTIVE:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->DIALING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->ALERTING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->INCOMING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->WAITING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->DISCONNECTED:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->DISCONNECTING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->$VALUES:[Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/ims/csvt/CsvtConnection$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/ims/csvt/CsvtConnection$State;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->$VALUES:[Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    invoke-virtual {v0}, [Lcom/qualcomm/ims/csvt/CsvtConnection$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    return-object v0
.end method


# virtual methods
.method public isAlive()Z
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->IDLE:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->DISCONNECTED:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->DISCONNECTING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->INCOMING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/qualcomm/ims/csvt/CsvtConnection$State;->WAITING:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
