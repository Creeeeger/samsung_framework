.class public final Lcom/samsung/android/knox/integrity/AttestationPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_KNOX_ATTESTATION_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOX_ATTESTATION_RESULT"

.field public static final ERROR_DEVICE_NOT_SUPPORTED:I = -0x3

.field public static final ERROR_INVALID_NONCE:I = -0x5

.field public static final ERROR_MDM_PERMISSION:I = -0x1

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_TIMA_INTERNAL:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x4

.field public static final EXTRA_ATTESTATION_DATA:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ATTESTATION_DATA"

.field public static final EXTRA_ERROR_MSG:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ERROR_MSG"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.RESULT"

.field public static final KNOX_ATTESTATION_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

.field public static final KNOX_ATTESTATION_PERMISSION_ERROR:Ljava/lang/String; = "Need com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION permission"

.field public static final TAG:Ljava/lang/String; = "AttestationPolicy"

.field public static final TAL_KNOX_KEY_ERROR:I = 0x5a

.field public static final TIMA_ATTESTATION_SUCCESS:I = 0x0

.field public static final TIMA_ERROR_DEVICE_NOT_SUPPORTED:I = 0x4

.field public static final TIMA_INVALID_NONCE:I = 0x5b


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final makeAttestationIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 0

    .line 1
    const-string p1, "AttestationPolicy"

    .line 2
    .line 3
    const-string p2, "V2 Attestation is not supported from S OS. Please use V3 Attestation."

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 p1, -0x3

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x5

    .line 7
    const-string v1, "com.samsung.android.knox.intent.extra.RESULT"

    .line 8
    .line 9
    if-eq p1, v0, :cond_3

    .line 10
    .line 11
    const/4 v0, -0x3

    .line 12
    if-eq p1, v0, :cond_2

    .line 13
    .line 14
    const-string v0, "com.samsung.android.knox.intent.extra.ERROR_MSG"

    .line 15
    .line 16
    const/4 v2, -0x2

    .line 17
    if-eq p1, v2, :cond_1

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    if-eq p1, v2, :cond_0

    .line 21
    .line 22
    const/4 p1, -0x4

    .line 23
    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    if-eqz p2, :cond_4

    .line 27
    .line 28
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    if-eqz p2, :cond_4

    .line 40
    .line 41
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    :cond_4
    :goto_0
    return-object p0
.end method

.method public final startAttestation(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/Thread;

    .line 6
    .line 7
    new-instance v2, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;

    .line 8
    .line 9
    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;-><init>(Lcom/samsung/android/knox/integrity/AttestationPolicy;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
