.class final enum Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

.field public static final enum FingerPrintError:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

.field public static final enum Reboot:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

.field public static final enum ShutDown:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;


# instance fields
.field private final mDismissType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 2
    .line 3
    const-string v1, "active"

    .line 4
    .line 5
    const-string v2, "Active"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 12
    .line 13
    const-string/jumbo v2, "shutdown"

    .line 14
    .line 15
    .line 16
    const-string v3, "ShutDown"

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-direct {v1, v3, v4, v2}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 23
    .line 24
    new-instance v2, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 25
    .line 26
    const-string/jumbo v3, "reboot"

    .line 27
    .line 28
    .line 29
    const-string v4, "Reboot"

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    invoke-direct {v2, v4, v5, v3}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 36
    .line 37
    new-instance v3, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 38
    .line 39
    const-string v4, "dex"

    .line 40
    .line 41
    const-string v5, "Dex"

    .line 42
    .line 43
    const/4 v6, 0x3

    .line 44
    invoke-direct {v3, v5, v6, v4}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v4, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 48
    .line 49
    const-string v5, "fingerprinterror"

    .line 50
    .line 51
    const-string v6, "FingerPrintError"

    .line 52
    .line 53
    const/4 v7, 0x4

    .line 54
    invoke-direct {v4, v6, v7, v5}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object v4, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->FingerPrintError:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 58
    .line 59
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 64
    .line 65
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
    iput-object p3, p0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->mDismissType:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->mDismissType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
