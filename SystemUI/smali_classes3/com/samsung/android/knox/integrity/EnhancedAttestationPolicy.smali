.class public final Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;
    }
.end annotation


# static fields
.field public static final EA_BIND_ACTION:Ljava/lang/String; = "com.samsung.android.knox.intent.action.BIND_KNOX_EA_SERVICE"

.field public static final EA_PACKAGE_CLASS:Ljava/lang/String; = "com.samsung.android.knox.attestation.controller.EnhancedAttestation"

.field public static final EA_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.attestation"

.field public static final TAG:Ljava/lang/String; = "EAPolicy"

.field public static mEaPolicy:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;


# instance fields
.field public conn:Landroid/content/ServiceConnection;

.field public mContext:Landroid/content/Context;

.field public mEnhancedAttestation:Lcom/samsung/android/knox/integrity/IEnhancedAttestation;

.field public mProcessPendingRequest:Z

.field public final mTrackOpsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$1;-><init>(Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->conn:Landroid/content/ServiceConnection;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/integrity/IEnhancedAttestation;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    .line 29
    .line 30
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "EAPolicy"

    const-string v1, "context is null"

    .line 1
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    .line 5
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getKnoxVersion()I
    .locals 1

    .line 1
    const-string v0, "37"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x5

    .line 8
    .line 9
    return v0
.end method


# virtual methods
.method public final declared-synchronized addToTrackMap(Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;)Z
    .locals 2

    .line 1
    const-string v0, "addToTrackMap:  "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string p1, "EAPolicy"

    .line 13
    .line 14
    const-string p2, "same nonce onProcessing"

    .line 15
    .line 16
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p1, "EAPolicy"

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getTrackMapSize()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    monitor-exit p0

    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    monitor-exit p0

    .line 53
    throw p1
.end method

.method public final bindService()Z
    .locals 6

    .line 1
    const-string v0, "bindService: "

    .line 2
    .line 3
    const-string v1, "bindService: "

    .line 4
    .line 5
    const-class v2, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    const-string v3, "EAPolicy"

    .line 9
    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/integrity/IEnhancedAttestation;

    .line 16
    .line 17
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/integrity/IEnhancedAttestation;

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 37
    .line 38
    .line 39
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    :try_start_2
    monitor-exit v2

    .line 43
    return v1

    .line 44
    :catch_0
    move-exception v3

    .line 45
    const-string v4, "EAPolicy"

    .line 46
    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    new-instance v0, Landroid/content/Intent;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v2, "com.samsung.android.knox.attestation"

    .line 73
    .line 74
    const-string v3, "com.samsung.android.knox.attestation.controller.EnhancedAttestation"

    .line 75
    .line 76
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    const-string v2, "com.samsung.android.knox.intent.action.BIND_KNOX_EA_SERVICE"

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->conn:Landroid/content/ServiceConnection;

    .line 87
    .line 88
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v0, p0, v1, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    const-string v0, "EAPolicy"

    .line 97
    .line 98
    const-string v1, "bind service:"

    .line 99
    .line 100
    invoke-static {v1, p0, v0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return p0

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    throw p0
.end method

.method public final declared-synchronized clearTrackMap()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public final getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;
    .locals 1

    .line 1
    new-instance p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->errorCode:I

    .line 7
    .line 8
    new-instance p2, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "dataFieldUniqueId"

    .line 14
    .line 15
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    .line 19
    .line 20
    return-object p0
.end method

.method public final declared-synchronized getTrackMapSize()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final handlePendingRequest()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getTrackMapSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-class v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->clearTrackMap()V

    .line 20
    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    .line 23
    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/util/Map$Entry;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;

    .line 56
    .line 57
    const-string v3, "EAPolicy"

    .line 58
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v5, "process pending request: nonce len: "

    .line 62
    .line 63
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    iget-object v2, v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mAuk:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v3, v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mNonce:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v4, v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mCb:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;

    .line 85
    .line 86
    iget-boolean v1, v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mOnPrem:Z

    .line 87
    .line 88
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    const-class v1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    .line 93
    .line 94
    monitor-enter v1

    .line 95
    const/4 v0, 0x0

    .line 96
    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    .line 97
    .line 98
    monitor-exit v1

    .line 99
    return-void

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    throw p0

    .line 103
    :catchall_1
    move-exception p0

    .line 104
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    throw p0
.end method

.method public final isDongleDevice()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isEaSupportedFromSepLite()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isJdmDevice()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isKnoxVersionSupported()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getKnoxVersion()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x18

    .line 6
    .line 7
    if-lt p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final isMposSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isSepLiteDevice()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isSupported()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->isKnoxVersionSupported()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x1

    .line 10
    return p0
.end method

.method public final logApiUsage(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v0, "logApiUsage exception : "

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "EAPolicy"

    .line 34
    .line 35
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final declared-synchronized removeFromTrackMap(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "removeFromTrackMap: size: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    const-string p1, "EAPolicy"

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", pending: "

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mTrackOpsHash:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    iget-boolean p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mProcessPendingRequest:Z

    .line 51
    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    const-string p1, "EAPolicy"

    .line 55
    .line 56
    const-string v0, "Map is empty, call unBindService: "

    .line 57
    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/integrity/IEnhancedAttestation;

    .line 63
    .line 64
    iget-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->conn:Landroid/content/ServiceConnection;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    :cond_0
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    monitor-exit p0

    .line 75
    throw p1
.end method

.method public final startAttestation(Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;)V
    .locals 2

    const-string v0, "EAPolicy"

    const-string v1, "startAttestation on-prem"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EnhancedAttestationPolicy.START_ATTESTATION_OnPREM"

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->logApiUsage(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;Z)V

    return-void
.end method

.method public final startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;)V
    .locals 2

    const-string v0, "EAPolicy"

    const-string v1, "startAttestation"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EnhancedAttestationPolicy.START_ATTESTATION"

    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->logApiUsage(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;Z)V

    return-void
.end method

.method public final startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;Z)V
    .locals 4

    const-string v0, "EAPolicy"

    if-nez p3, :cond_0

    const-string p0, "startAttestation: cb == null"

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->isSupported()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "EA is not supported"

    .line 9
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x4

    .line 10
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    :cond_2
    if-nez p4, :cond_3

    const-string p1, "auk is null"

    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x6

    .line 13
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V

    return-void

    :cond_3
    const/4 v1, -0x5

    if-eqz p2, :cond_8

    .line 14
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x80

    if-le v2, v3, :cond_4

    goto :goto_0

    .line 15
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->bindService()Z

    move-result v2

    if-nez v2, :cond_5

    const-string p1, "bind request fail"

    .line 16
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x7

    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V

    return-void

    .line 18
    :cond_5
    new-instance v2, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;Z)V

    .line 19
    invoke-virtual {p0, p2, v2}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->addToTrackMap(Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 20
    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V

    return-void

    .line 21
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/integrity/IEnhancedAttestation;

    if-eqz p1, :cond_7

    .line 22
    iget-object p4, v2, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mNonce:Ljava/lang/String;

    iget-object v1, v2, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mAuk:Ljava/lang/String;

    iget-object v3, v2, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mCb:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;

    .line 23
    invoke-virtual {v3, p2}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->getEaAttestationCb(Ljava/lang/String;)Lcom/samsung/android/knox/integrity/IEnhancedAttestationPolicyCallback;

    move-result-object v3

    iget-boolean v2, v2, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mOnPrem:Z

    .line 24
    invoke-interface {p1, p4, v1, v3, v2}, Lcom/samsung/android/knox/integrity/IEnhancedAttestation;->enhancedAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/integrity/IEnhancedAttestationPolicyCallback;Z)V

    :cond_7
    const-string p1, "enhancedAttestation requested"

    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 26
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "startAttestation: "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->removeFromTrackMap(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 29
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V

    return-void

    .line 30
    :cond_8
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "nonce len: "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_9

    const-string p4, "null"

    goto :goto_1

    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :goto_1
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getErrorResult(Ljava/lang/String;I)Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V

    return-void
.end method
