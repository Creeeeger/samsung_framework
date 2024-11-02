.class public final Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$basePath:Ljava/lang/String;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$saveKey:Ljava/lang/String;

.field public final synthetic val$securityLevel:I

.field public final synthetic val$source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$basePath:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$source:Ljava/lang/String;

    .line 6
    .line 7
    iput p5, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$securityLevel:I

    .line 8
    .line 9
    iput-object p6, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$saveKey:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const-class v0, Lcom/android/systemui/qs/QSBackupRestoreManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/qs/QSBackupRestoreManager;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$context:Landroid/content/Context;

    .line 10
    .line 11
    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_QUICKPANEL2"

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$basePath:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$source:Ljava/lang/String;

    .line 16
    .line 17
    iget v4, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$securityLevel:I

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$saveKey:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string/jumbo v7, "start restore basePath="

    .line 27
    .line 28
    .line 29
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v7, " source="

    .line 36
    .line 37
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const-string v7, "QSBackupRestoreManager"

    .line 48
    .line 49
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    sget-object v6, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 53
    .line 54
    const-string v7, "/"

    .line 55
    .line 56
    invoke-static {v3, v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    :try_start_0
    invoke-static {p0}, Lcom/android/systemui/qs/QSBackupRestoreManager;->streamCrypt(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v4, v3}, Lcom/android/systemui/qs/QSBackupRestoreManager;->decrypt(ILjava/lang/String;)Ljava/io/File;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSBackupRestoreManager;->loadRestoreFile(Ljava/io/File;)Z

    .line 68
    .line 69
    .line 70
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    if-nez p0, :cond_0

    .line 72
    .line 73
    sget-object p0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    move-object v4, p0

    .line 77
    move v3, v0

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const/4 p0, 0x0

    .line 80
    move v3, p0

    .line 81
    move-object v4, v6

    .line 82
    :goto_0
    const/4 v6, 0x0

    .line 83
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/qs/QSBackupRestoreManager;->sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception p0

    .line 88
    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_QUICKPANEL2"

    .line 89
    .line 90
    const/4 v3, 0x1

    .line 91
    sget-object v4, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 92
    .line 93
    const/4 v6, 0x0

    .line 94
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/qs/QSBackupRestoreManager;->sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-void
.end method
