.class public final Lcom/android/systemui/wallpaper/BackupRestoreReceiver;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBroadcastReceiver:Lcom/android/systemui/wallpaper/BackupRestoreReceiver$2;

.field public final mHandler:Lcom/android/systemui/wallpaper/BackupRestoreReceiver$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$1;-><init>(Lcom/android/systemui/wallpaper/BackupRestoreReceiver;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;->mHandler:Lcom/android/systemui/wallpaper/BackupRestoreReceiver$1;

    .line 10
    .line 11
    new-instance v0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/BackupRestoreReceiver$2;-><init>(Lcom/android/systemui/wallpaper/BackupRestoreReceiver;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;->mBroadcastReceiver:Lcom/android/systemui/wallpaper/BackupRestoreReceiver$2;

    .line 17
    .line 18
    return-void
.end method
