.class public final synthetic Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/ShellTaskOrganizer$1;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/ShellTaskOrganizer$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/ShellTaskOrganizer$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/wm/shell/ShellTaskOrganizer$1;->this$0:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mForcedResizableController:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-wide v3, v0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mLastShowingTime:J

    .line 17
    .line 18
    sub-long v3, v1, v3

    .line 19
    .line 20
    const-wide/16 v5, 0x1388

    .line 21
    .line 22
    cmp-long v3, v3, v5

    .line 23
    .line 24
    if-gez v3, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-virtual {v3, p0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    :cond_1
    const/4 p0, 0x0

    .line 56
    :goto_0
    if-eqz p0, :cond_2

    .line 57
    .line 58
    const v3, 0x7f130bd9

    .line 59
    .line 60
    .line 61
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v4, v3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const p0, 0x7f130bd8

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    :goto_1
    const/4 v3, 0x1

    .line 78
    invoke-static {v4, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 83
    .line 84
    .line 85
    iput-wide v1, v0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mLastShowingTime:J

    .line 86
    .line 87
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 88
    .line 89
    if-eqz p0, :cond_3

    .line 90
    .line 91
    const-string p0, "1005"

    .line 92
    .line 93
    const-string v0, "Switch to MW-incompatible app"

    .line 94
    .line 95
    invoke-static {p0, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_2
    return-void
.end method
