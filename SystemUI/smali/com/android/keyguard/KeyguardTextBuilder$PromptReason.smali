.class final enum Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

.field public static final enum DeviceAdmin:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

.field public static final enum ItPolicy:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

.field public static final enum NonStrongBiometricTimeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

.field public static final enum Restart:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

.field public static final enum Timeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;


# instance fields
.field private final mPromptReason:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string/jumbo v2, "restart"

    .line 5
    .line 6
    .line 7
    const-string v3, "Restart"

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->Restart:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 13
    .line 14
    new-instance v1, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const-string/jumbo v3, "timeout"

    .line 18
    .line 19
    .line 20
    const-string v4, "Timeout"

    .line 21
    .line 22
    invoke-direct {v1, v4, v2, v3}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->Timeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 26
    .line 27
    new-instance v2, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    const-string/jumbo v4, "nonstrongbiometrictimeout"

    .line 31
    .line 32
    .line 33
    const-string v5, "NonStrongBiometricTimeout"

    .line 34
    .line 35
    invoke-direct {v2, v5, v3, v4}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sput-object v2, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->NonStrongBiometricTimeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 39
    .line 40
    new-instance v3, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 41
    .line 42
    const/4 v4, 0x3

    .line 43
    const-string v5, "deviceadmin"

    .line 44
    .line 45
    const-string v6, "DeviceAdmin"

    .line 46
    .line 47
    invoke-direct {v3, v6, v4, v5}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sput-object v3, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->DeviceAdmin:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 51
    .line 52
    new-instance v4, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 53
    .line 54
    const/4 v5, 0x4

    .line 55
    const-string v6, "itpolicy"

    .line 56
    .line 57
    const-string v7, "ItPolicy"

    .line 58
    .line 59
    invoke-direct {v4, v7, v5, v6}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sput-object v4, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->ItPolicy:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 63
    .line 64
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 69
    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->mPromptReason:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;
    .locals 1

    .line 1
    const-class v0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->mPromptReason:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
