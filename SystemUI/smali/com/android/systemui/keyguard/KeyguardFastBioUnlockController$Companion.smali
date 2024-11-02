.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getMODE_CLEAR$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getMODE_FLAG_ENABLED$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getMODE_FLAG_FRAME_COMMIT$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getMODE_FLAG_FRAME_REQUEST$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getMODE_FLAG_STARTED_DISPLAY_DOZE_OR_OFF$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getMODE_FLAG_STARTED_DISPLAY_ON$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static getModeString(I)Ljava/lang/String;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "CLEAR"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->sFlags:[I

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v2, :cond_3

    .line 16
    .line 17
    aget v4, v1, v3

    .line 18
    .line 19
    and-int v5, v4, p0

    .line 20
    .line 21
    if-ne v5, v4, :cond_2

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    const/16 v4, 0x7c

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :cond_1
    sget-object v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->sFlagsStr:[Ljava/lang/String;

    .line 31
    .line 32
    aget-object v4, v4, v3

    .line 33
    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method
