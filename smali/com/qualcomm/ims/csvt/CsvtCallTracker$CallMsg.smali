.class Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;
.super Ljava/lang/Object;
.source "CsvtCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/csvt/CsvtCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallMsg"
.end annotation


# instance fields
.field private call:Lcom/android/ims/ImsCall;

.field private reasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private state:Lcom/qualcomm/ims/csvt/CsvtConnection$State;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/ims/csvt/CsvtCallTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/ims/csvt/CsvtCallTracker$1;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;)Lcom/android/ims/ImsCall;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;->call:Lcom/android/ims/ImsCall;

    return-object v0
.end method

.method static synthetic access$402(Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;->call:Lcom/android/ims/ImsCall;

    return-object p1
.end method

.method static synthetic access$500(Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;)Lcom/qualcomm/ims/csvt/CsvtConnection$State;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;->state:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    return-object v0
.end method

.method static synthetic access$502(Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;Lcom/qualcomm/ims/csvt/CsvtConnection$State;)Lcom/qualcomm/ims/csvt/CsvtConnection$State;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;
    .param p1, "x1"    # Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;->state:Lcom/qualcomm/ims/csvt/CsvtConnection$State;

    return-object p1
.end method

.method static synthetic access$600(Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;->reasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object v0
.end method

.method static synthetic access$602(Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;
    .param p1, "x1"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/qualcomm/ims/csvt/CsvtCallTracker$CallMsg;->reasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object p1
.end method
