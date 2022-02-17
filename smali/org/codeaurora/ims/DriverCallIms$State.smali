.class public final enum Lorg/codeaurora/ims/DriverCallIms$State;
.super Ljava/lang/Enum;
.source "DriverCallIms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/DriverCallIms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/codeaurora/ims/DriverCallIms$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codeaurora/ims/DriverCallIms$State;

.field public static final enum ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

.field public static final enum ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

.field public static final enum DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

.field public static final enum END:Lorg/codeaurora/ims/DriverCallIms$State;

.field public static final enum HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

.field public static final enum INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

.field public static final enum WAITING:Lorg/codeaurora/ims/DriverCallIms$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms$State;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 38
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms$State;

    const-string v1, "HOLDING"

    invoke-direct {v0, v1, v4}, Lorg/codeaurora/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 39
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms$State;

    const-string v1, "DIALING"

    invoke-direct {v0, v1, v5}, Lorg/codeaurora/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 40
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms$State;

    const-string v1, "ALERTING"

    invoke-direct {v0, v1, v6}, Lorg/codeaurora/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 41
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms$State;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v7}, Lorg/codeaurora/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 42
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms$State;

    const-string v1, "WAITING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 43
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms$State;

    const-string v1, "END"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    aput-object v2, v0, v1

    sput-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->$VALUES:[Lorg/codeaurora/ims/DriverCallIms$State;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0
.end method

.method public static values()[Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->$VALUES:[Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v0}, [Lorg/codeaurora/ims/DriverCallIms$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0
.end method
