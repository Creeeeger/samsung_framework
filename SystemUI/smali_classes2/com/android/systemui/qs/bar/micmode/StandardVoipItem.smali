.class public final Lcom/android/systemui/qs/bar/micmode/StandardVoipItem;
.super Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final loggingId:Ljava/lang/String;

.field public final loggingValue:Ljava/lang/String;

.field public final micMode:I

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/qs/bar/micmode/StandardVoipItem;->text:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/android/systemui/qs/bar/micmode/StandardVoipItem;->micMode:I

    .line 5
    iput-object p3, p0, Lcom/android/systemui/qs/bar/micmode/StandardVoipItem;->loggingId:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/qs/bar/micmode/StandardVoipItem;->loggingValue:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const-string p3, "ASMM1030"

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const-string p4, "STANDARD"

    .line 1
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/bar/micmode/StandardVoipItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getLoggingId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/StandardVoipItem;->loggingId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLoggingValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/StandardVoipItem;->loggingValue:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMicMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/bar/micmode/StandardVoipItem;->micMode:I

    .line 2
    .line 3
    return p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/StandardVoipItem;->text:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
