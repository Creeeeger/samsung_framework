.class public final Lcom/android/keyguard/SecFpMsg;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public arg:I

.field public msgString:Ljava/lang/CharSequence;

.field public result:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

.field public sequence:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/SecFpMsg;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/keyguard/SecFpMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/keyguard/SecFpMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p0, v0, Lcom/android/keyguard/SecFpMsg;->type:I

    .line 7
    .line 8
    iput p1, v0, Lcom/android/keyguard/SecFpMsg;->sequence:I

    .line 9
    .line 10
    iput p2, v0, Lcom/android/keyguard/SecFpMsg;->arg:I

    .line 11
    .line 12
    iput-object p3, v0, Lcom/android/keyguard/SecFpMsg;->msgString:Ljava/lang/CharSequence;

    .line 13
    .line 14
    iput-object p4, v0, Lcom/android/keyguard/SecFpMsg;->result:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .line 15
    .line 16
    return-object v0
.end method
