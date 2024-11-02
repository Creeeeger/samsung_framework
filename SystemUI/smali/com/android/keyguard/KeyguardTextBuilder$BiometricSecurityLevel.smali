.class final enum Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

.field public static final enum IdleTimeout:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

.field public static final enum Strong:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

.field public static final enum Weak:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;


# instance fields
.field private final mBiometricSecurityLevel:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string/jumbo v2, "strong"

    .line 5
    .line 6
    .line 7
    const-string v3, "Strong"

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->Strong:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    .line 13
    .line 14
    new-instance v1, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const-string/jumbo v3, "weak"

    .line 18
    .line 19
    .line 20
    const-string v4, "Weak"

    .line 21
    .line 22
    invoke-direct {v1, v4, v2, v3}, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->Weak:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    .line 26
    .line 27
    new-instance v2, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    const-string v4, "idletimeout"

    .line 31
    .line 32
    const-string v5, "IdleTimeout"

    .line 33
    .line 34
    invoke-direct {v2, v5, v3, v4}, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v2, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->IdleTimeout:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    .line 38
    .line 39
    filled-new-array {v0, v1, v2}, [Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    .line 44
    .line 45
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
    iput-object p3, p0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->mBiometricSecurityLevel:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->mBiometricSecurityLevel:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
