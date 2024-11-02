.class final enum Lcom/android/keyguard/KeyguardTextBuilder$Biometric;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardTextBuilder$Biometric;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

.field public static final enum Face:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

.field public static final enum FaceFingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

.field public static final enum Fingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

.field public static final enum MultiBiometrics:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;


# instance fields
.field private final mBiometric:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "fingerprint"

    .line 5
    .line 6
    const-string v3, "Fingerprint"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 12
    .line 13
    new-instance v1, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "face"

    .line 17
    .line 18
    const-string v4, "Face"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v3}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->Face:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 24
    .line 25
    new-instance v2, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const-string/jumbo v4, "multi"

    .line 29
    .line 30
    .line 31
    const-string v5, "MultiBiometrics"

    .line 32
    .line 33
    invoke-direct {v2, v5, v3, v4}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v2, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 37
    .line 38
    new-instance v3, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 39
    .line 40
    const/4 v4, 0x3

    .line 41
    const-string v5, "facefingerprint"

    .line 42
    .line 43
    const-string v6, "FaceFingerprint"

    .line 44
    .line 45
    invoke-direct {v3, v6, v4, v5}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sput-object v3, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->FaceFingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 49
    .line 50
    filled-new-array {v0, v1, v2, v3}, [Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 55
    .line 56
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
    iput-object p3, p0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->mBiometric:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardTextBuilder$Biometric;
    .locals 1

    .line 1
    const-class v0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardTextBuilder$Biometric;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->mBiometric:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
