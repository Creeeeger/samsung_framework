.class final enum Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

.field public static final enum AUTH_BIOMETRICS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

.field public static final enum AUTH_SECURITY_MODE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

.field public static final enum AUTH_SKIP_BOUNCER:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

.field public static final enum AUTH_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 2
    .line 3
    const-string v1, "AUTH_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 10
    .line 11
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 12
    .line 13
    const-string v2, "AUTH_SECURITY_MODE"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SECURITY_MODE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 20
    .line 21
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 22
    .line 23
    const-string v3, "AUTH_BIOMETRICS"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_BIOMETRICS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 30
    .line 31
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 32
    .line 33
    const-string v4, "AUTH_EXTEND_LOCK"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 40
    .line 41
    const-string v5, "AUTH_SKIP_BOUNCER"

    .line 42
    .line 43
    const/4 v6, 0x4

    .line 44
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SKIP_BOUNCER:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 48
    .line 49
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->$VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 54
    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->$VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 8
    .line 9
    return-object v0
.end method
