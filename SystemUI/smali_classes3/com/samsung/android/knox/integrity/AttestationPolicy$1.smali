.class public final Lcom/samsung/android/knox/integrity/AttestationPolicy$1;
.super Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/integrity/AttestationPolicy;->startAttestation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/integrity/AttestationPolicy;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;->nonce:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;->callingUid:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeAttestationIntent(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "com.samsung.android.knox.intent.action.KNOX_ATTESTATION_RESULT"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget v2, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;->callingUid:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget v2, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;->callingUid:I

    .line 33
    .line 34
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    array-length v3, v1

    .line 39
    const/4 v4, 0x0

    .line 40
    :goto_0
    if-ge v4, v3, :cond_0

    .line 41
    .line 42
    aget-object v5, v1, v4

    .line 43
    .line 44
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    iget-object v5, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;

    .line 48
    .line 49
    iget-object v5, v5, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    new-instance v6, Landroid/os/UserHandle;

    .line 52
    .line 53
    invoke-direct {v6, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method
