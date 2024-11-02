.class public final Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;
.super Lcom/android/wm/shell/controlpanel/action/MenuActionType;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public final mClipboardEventListener:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$2;

.field public final mHandler:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$1;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/controlpanel/action/MenuActionType;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->context:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$1;-><init>(Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->mHandler:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$1;

    .line 13
    .line 14
    new-instance v0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$2;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$2;-><init>(Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->mClipboardEventListener:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$2;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->context:Landroid/content/Context;

    .line 22
    .line 23
    return-void
.end method

.method public static createAction(Landroid/content/Context;)Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final doControlAction(Ljava/lang/String;Lcom/android/wm/shell/controlpanel/GridUIManager;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getTopTaskUserId(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1, v1}, Landroid/app/admin/DevicePolicyCache;->isScreenCaptureAllowed(I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const-string v1, "ScreenCaptureAction"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const-string p1, "ScreenCapure is bloked by knox mode"

    .line 21
    .line 22
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const p1, 0x7f1301a8

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 v3, 0x1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    const-string/jumbo p1, "screen capture is blocked by emergency mode"

    .line 44
    .line 45
    .line 46
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const v4, 0x7f13067d

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const v4, 0x7f131152

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    move v2, v3

    .line 87
    :goto_0
    if-nez v2, :cond_2

    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    new-instance p1, Landroid/os/Handler;

    .line 94
    .line 95
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 96
    .line 97
    .line 98
    new-instance p2, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    invoke-direct {p2, p0}, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;)V

    .line 101
    .line 102
    .line 103
    const-wide/16 v0, 0x32

    .line 104
    .line 105
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    .line 107
    .line 108
    return-void
.end method
