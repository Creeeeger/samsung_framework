.class public final Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$1;
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
    iput-object p2, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$1;->val$context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$1;->val$basePath:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$1;->val$source:Ljava/lang/String;

    .line 6
    .line 7
    iput p5, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$1;->val$securityLevel:I

    .line 8
    .line 9
    iput-object p6, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$1;->val$saveKey:Ljava/lang/String;

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
    .locals 11

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
    iget-object v1, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$1;->val$context:Landroid/content/Context;

    .line 10
    .line 11
    const-string v2, "com.samsung.android.intent.action.RESPONSE_BACKUP_QUICKPANEL2"

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$1;->val$basePath:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$1;->val$source:Ljava/lang/String;

    .line 16
    .line 17
    iget v4, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$1;->val$securityLevel:I

    .line 18
    .line 19
    const-string v6, ""

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$1;->val$saveKey:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const-string/jumbo v7, "resultCode="

    .line 27
    .line 28
    .line 29
    new-instance v8, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string/jumbo v9, "start backup basePath="

    .line 32
    .line 33
    .line 34
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v9, " source="

    .line 41
    .line 42
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    const-string v9, "QSBackupRestoreManager"

    .line 53
    .line 54
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    sget-object v8, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 58
    .line 59
    const-string v10, "/"

    .line 60
    .line 61
    invoke-static {v3, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    :try_start_0
    invoke-static {p0}, Lcom/android/systemui/qs/QSBackupRestoreManager;->streamCrypt(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/qs/QSBackupRestoreManager;->createBackupFile(ILjava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    const/4 p0, 0x1

    .line 88
    if-ne v3, p0, :cond_0

    .line 89
    .line 90
    sget-object p0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 91
    .line 92
    move-object v4, p0

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    move-object v4, v8

    .line 95
    :goto_0
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/qs/QSBackupRestoreManager;->sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception p0

    .line 100
    const-string v2, "com.samsung.android.intent.action.RESPONSE_BACKUP_QUICKPANEL2"

    .line 101
    .line 102
    const/4 v3, 0x1

    .line 103
    sget-object v4, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 104
    .line 105
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/qs/QSBackupRestoreManager;->sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    :goto_1
    return-void
.end method
