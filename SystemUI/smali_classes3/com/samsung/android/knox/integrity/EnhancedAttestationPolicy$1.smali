.class public final Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-class p1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    .line 5
    .line 6
    invoke-static {p2}, Lcom/samsung/android/knox/integrity/IEnhancedAttestation$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/integrity/IEnhancedAttestation;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/integrity/IEnhancedAttestation;

    .line 11
    .line 12
    const-string p2, "EAPolicy"

    .line 13
    .line 14
    const-string v0, "On onServiceConnected"

    .line 15
    .line 16
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->handlePendingRequest()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-class p1, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->mEnhancedAttestation:Lcom/samsung/android/knox/integrity/IEnhancedAttestation;

    .line 8
    .line 9
    const-string p0, "EAPolicy"

    .line 10
    .line 11
    const-string v0, "On onServiceDisconnected"

    .line 12
    .line 13
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    monitor-exit p1

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method
