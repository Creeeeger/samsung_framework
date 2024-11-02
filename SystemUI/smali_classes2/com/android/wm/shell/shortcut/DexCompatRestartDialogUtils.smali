.class public final Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsDisableDialog:Z

.field public final mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->mMainHandler:Landroid/os/Handler;

    .line 7
    .line 8
    return-void
.end method

.method public static isDexCompatEnabled(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget p0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method


# virtual methods
.method public final toggleFreeformForDexCompatApp(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->mIsDisableDialog:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "disable_dexcompat_restart_dialog"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->mIsDisableDialog:Z

    .line 22
    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->mIsDisableDialog:Z

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v2, "toggleFreeformForDexCompatApp: t#"

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, ", isRestartDialogDisabled="

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "DexCompatRestartDialogUtils"

    .line 49
    .line 50
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    sget p0, Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity;->$r8$clinit:I

    .line 56
    .line 57
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->toggleFreeformForDexCompatApp(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    new-instance v0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;I)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->mMainHandler:Landroid/os/Handler;

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method
