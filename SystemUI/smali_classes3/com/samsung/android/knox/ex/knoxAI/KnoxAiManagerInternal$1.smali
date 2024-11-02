.class public final Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

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
    iget-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 5
    .line 6
    invoke-static {p2}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 11
    .line 12
    sget-object p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "KFAService connected"

    .line 15
    .line 16
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mConnLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mConnLock:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 29
    .line 30
    .line 31
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    :try_start_4
    throw p0

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 39
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    .line 8
    .line 9
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "KFAService disconnected"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mConnLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mConnLock:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 26
    .line 27
    .line 28
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    .line 32
    .line 33
    .line 34
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    :try_start_4
    throw p0

    .line 39
    :catchall_1
    move-exception p0

    .line 40
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 41
    throw p0
.end method
