.class public final Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isEnable()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "aod_show_state"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    move v1, v0

    .line 22
    :cond_0
    return v1
.end method

.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 2
    .line 3
    iget-boolean p1, p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mTransparent:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->isEnable()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->updateBackground(Landroid/view/Window;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->isEnable()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 37
    .line 38
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->updateMargin(Landroid/view/WindowInsets;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->addTouchInsector()V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isTouchable()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    sget p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->$r8$clinit:I

    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v0, " AOD_SHOW_STATE changed "

    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->isEnable()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string v0, "EdgeLightingDialog"

    .line 85
    .line 86
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const/16 p1, 0x10

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    .line 98
    .line 99
    .line 100
    :cond_2
    return-void
.end method
