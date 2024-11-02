.class public final Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$basePath:Ljava/lang/String;

.field public final synthetic val$blockList:Ljava/util/List;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$saveKey:Ljava/lang/String;

.field public final synthetic val$securityLevel:I

.field public final synthetic val$source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$basePath:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$source:Ljava/lang/String;

    .line 6
    .line 7
    iput p5, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$securityLevel:I

    .line 8
    .line 9
    iput-object p6, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$saveKey:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$blockList:Ljava/util/List;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const-class v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$context:Landroid/content/Context;

    .line 11
    .line 12
    const-string v3, "com.samsung.android.intent.action.RESPONSE_BACKUP_NOTIFICATION"

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$basePath:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v5, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$source:Ljava/lang/String;

    .line 17
    .line 18
    iget v6, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$securityLevel:I

    .line 19
    .line 20
    const-string v7, ""

    .line 21
    .line 22
    iget-object v8, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$saveKey:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v9, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$blockList:Ljava/util/List;

    .line 25
    .line 26
    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
