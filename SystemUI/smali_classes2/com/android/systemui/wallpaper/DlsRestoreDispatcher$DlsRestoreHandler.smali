.class public final Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;


# direct methods
.method private constructor <init>(Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler;->this$0:Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler;-><init>(Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    if-nez v1, :cond_5

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler;->this$0:Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;->mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 15
    .line 16
    const-string/jumbo v2, "restore_dls"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->callProvider(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string/jumbo v3, "result"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    :goto_0
    if-eqz v2, :cond_2

    .line 35
    .line 36
    new-instance v0, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler;->this$0:Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;

    .line 46
    .line 47
    iget v2, v1, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;->mRetryCount:I

    .line 48
    .line 49
    const/16 v3, 0x14

    .line 50
    .line 51
    if-ge v2, v3, :cond_3

    .line 52
    .line 53
    new-instance v1, Landroid/os/Message;

    .line 54
    .line 55
    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v2, Landroid/os/Bundle;

    .line 59
    .line 60
    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    .line 64
    .line 65
    iput v0, v1, Landroid/os/Message;->what:I

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher$DlsRestoreHandler;->this$0:Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;

    .line 71
    .line 72
    iget v2, v0, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;->mRetryCount:I

    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    iput v2, v0, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;->mRetryCount:I

    .line 77
    .line 78
    const-wide/16 v2, 0x2bc

    .line 79
    .line 80
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    iget-object v0, v1, Lcom/android/systemui/wallpaper/DlsRestoreDispatcher;->mOnRestoreDlsListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    const-string v1, "onDlsRestored reason = "

    .line 89
    .line 90
    const-string v2, "UNKNOWN"

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    sget-object v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_2
    return-void
.end method
