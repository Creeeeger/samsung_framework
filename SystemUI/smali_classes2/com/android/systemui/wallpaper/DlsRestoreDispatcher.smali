.class public final Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mHandler:Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler;

.field public mOnRestoreDlsListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;

.field public final mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

.field public mRetryCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/pluginlock/PluginLockUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;->mRetryCount:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;->mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 8
    .line 9
    return-void
.end method
