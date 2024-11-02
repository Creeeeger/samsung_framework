.class public final Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;
.super Landroid/app/Dialog;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAODShowState:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;

.field public mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

.field public mDialogMain:Landroid/widget/RelativeLayout;

.field public mDozeDraw:Z

.field public final mEdgeAnimationListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

.field public final mHandler:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;

.field public mIsUsingELPlusEffect:Z

.field public mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

.field public mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

.field public mPlusEffectBundle:Landroid/os/Bundle;

.field public mTransparent:Z

.field public mUsingBlackBG:Z

.field public mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

.field public final mWindowType:I


# direct methods
.method public static -$$Nest$mdismissInternal(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mAODShowState:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mAODShowState:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mAODShowState:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string v0, "EdgeLightingDialog"

    .line 29
    .line 30
    const-string v2, "dismissInternal "

    .line 31
    .line 32
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 56
    .line 57
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 67
    .line 68
    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method public static -$$Nest$mselfDismissWindow(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onDismissEdgeWindow()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-boolean v2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const/high16 v2, -0x40800000    # -1.0f

    .line 23
    .line 24
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mHandler:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mHandler:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;

    .line 36
    .line 37
    const-wide/16 v2, 0x1f4

    .line 38
    .line 39
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x1030011

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mTransparent:Z

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDozeDraw:Z

    const/16 v0, 0x8b4

    .line 5
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowType:I

    .line 6
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mIsUsingELPlusEffect:Z

    .line 7
    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;-><init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mHandler:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;

    .line 8
    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;-><init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const v0, 0x1030011

    .line 9
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 11
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mTransparent:Z

    .line 12
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDozeDraw:Z

    const/16 v0, 0x8b4

    .line 13
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowType:I

    .line 14
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mIsUsingELPlusEffect:Z

    .line 15
    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;-><init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mHandler:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;

    .line 16
    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;-><init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 17
    iput p2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowType:I

    return-void
.end method


# virtual methods
.method public final isUsingELPlusEffect()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mIsUsingELPlusEffect:Z

    .line 2
    .line 3
    return p0
.end method

.method public final makeEffectType(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Z)Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectType:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :pswitch_0
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :pswitch_1
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :pswitch_2
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :pswitch_3
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :pswitch_4
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :pswitch_5
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationBubbleEffect;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :pswitch_6
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationWaveEffect;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :pswitch_7
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :pswitch_8
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationGlowEffect;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationGlowEffect;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :pswitch_9
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationLineGradationEffect;

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const/4 v2, 0x2

    .line 115
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/edgelighting/effect/container/NotificationLineGradationEffect;-><init>(Landroid/content/Context;I)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :pswitch_a
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;-><init>(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    .line 130
    .line 131
    const/4 v2, 0x1

    .line 132
    iput-boolean v2, v1, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsNoFrame:Z

    .line 133
    .line 134
    :goto_1
    iget v1, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectType:I

    .line 135
    .line 136
    const/16 v2, 0x64

    .line 137
    .line 138
    if-ne v1, v2, :cond_1

    .line 139
    .line 140
    iget-object v1, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPlusEffectBundle:Landroid/os/Bundle;

    .line 141
    .line 142
    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mPlusEffectBundle:Landroid/os/Bundle;

    .line 143
    .line 144
    const-string v2, "isUsingCustomEffect"

    .line 145
    .line 146
    const/4 v3, 0x0

    .line 147
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mIsUsingELPlusEffect:Z

    .line 152
    .line 153
    if-eqz p2, :cond_1

    .line 154
    .line 155
    if-eqz v1, :cond_0

    .line 156
    .line 157
    new-instance p2, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;

    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mPlusEffectBundle:Landroid/os/Bundle;

    .line 164
    .line 165
    invoke-direct {p2, v0, v1, p1}, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mPlusEffectBundle:Landroid/os/Bundle;

    .line 169
    .line 170
    const-string v1, "isUsedAppIcon"

    .line 171
    .line 172
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    iput-boolean v0, p2, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mIsUsedAppIconForEdgeLightingPlus:Z

    .line 177
    .line 178
    move-object v0, p2

    .line 179
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mPlusEffectBundle:Landroid/os/Bundle;

    .line 180
    .line 181
    const-string v1, "isHideBriefPopup"

    .line 182
    .line 183
    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    iput-boolean p2, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsHideBriefPopupForEdgeLightingPlus:Z

    .line 188
    .line 189
    iget-object p2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mPlusEffectBundle:Landroid/os/Bundle;

    .line 190
    .line 191
    const-string v1, "isDisableSingleTap"

    .line 192
    .line 193
    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    iput-boolean p2, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSingleTapDisabledForEdgeLightingPlus:Z

    .line 198
    .line 199
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mPlusEffectBundle:Landroid/os/Bundle;

    .line 200
    .line 201
    const-string p2, "isDisableSwipeDown"

    .line 202
    .line 203
    invoke-virtual {p0, p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    iput-boolean p0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSwipeDownDisabledForEdgeLightingPlus:Z

    .line 208
    .line 209
    :cond_1
    iget-boolean p0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsMultiResolutionSupoorted:Z

    .line 210
    .line 211
    invoke-virtual {v0, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setIsMultiResolutionSupoorted(Z)V

    .line 212
    .line 213
    .line 214
    return-object v0

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isTouchable()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "EdgeLightingDialog"

    .line 15
    .line 16
    const-string v1, " onAttached Window clear FLAG NOT TOUCHABLE"

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/16 v0, 0x10

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d00e2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowType:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 17
    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 21
    .line 22
    .line 23
    const v0, 0x1000500

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 27
    .line 28
    .line 29
    const/high16 v0, 0x10000

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 32
    .line 33
    .line 34
    const/16 v0, 0x18

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/16 v1, 0x600

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 v0, 0x0

    .line 53
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 54
    .line 55
    const/high16 v1, 0x20000

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x3

    .line 61
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 62
    .line 63
    const-string v1, "EdgeLightingWindow"

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    const p1, 0x7f0a0331

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 78
    .line 79
    sget p1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 80
    .line 81
    const v1, 0x186a0

    .line 82
    .line 83
    .line 84
    if-lt p1, v1, :cond_0

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 95
    .line 96
    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$2;

    .line 106
    .line 107
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$2;-><init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final registerEdgeWindowCallback(Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public final show()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mAODShowState:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;

    .line 6
    .line 7
    new-instance v1, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;-><init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;Landroid/os/Handler;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mAODShowState:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mAODShowState:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string v1, "aod_show_state"

    .line 31
    .line 32
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x0

    .line 37
    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mAODShowState:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->updateBackground(Landroid/view/Window;)V

    .line 47
    .line 48
    .line 49
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-interface {v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onShowEdgeWindow()V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mHandler:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final showPreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->show()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const v1, 0x7f0a0331

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->makeEffectType(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Z)Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 43
    .line 44
    const/4 v3, -0x1

    .line 45
    invoke-virtual {v2, v1, v3, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 51
    .line 52
    iput-object v2, v1, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const/16 v2, 0x10

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 64
    .line 65
    invoke-virtual {v1, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 66
    .line 67
    .line 68
    if-nez p2, :cond_3

    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 71
    .line 72
    iput-boolean v0, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    .line 73
    .line 74
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->show()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final stopEdgeEffect()V
    .locals 3

    .line 1
    const-string/jumbo v0, "stopEdgeEffect"

    .line 2
    .line 3
    .line 4
    const-string v1, "EdgeLightingDialog"

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dismiss()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    const-string v2, "com.android.systemui.edgelighting.stop"

    .line 19
    .line 20
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo p0, "send broadcast : com.android.systemui.edgelighting.stop"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final stopPreview()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$3;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$3;-><init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0x1f4

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final unRegisterEdgeWindowCallback()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 3
    .line 4
    return-void
.end method

.method public final updateBackground(Landroid/view/Window;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "power"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/os/PowerManager;

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, -0x3

    .line 18
    const-string v3, "EdgeLightingDialog"

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string/jumbo v0, "updateBackground : OPAQUE(usingBlack)"

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/high16 v2, -0x1000000

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 38
    .line 39
    .line 40
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mTransparent:Z

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string/jumbo v0, "updateBackground : TRANSPARENT"

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mTransparent:Z

    .line 61
    .line 62
    :goto_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    .line 71
    .line 72
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    .line 76
    .line 77
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 78
    .line 79
    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDozeDraw:Z

    .line 80
    .line 81
    const/high16 v0, 0x40000

    .line 82
    .line 83
    if-eqz p0, :cond_2

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    .line 90
    .line 91
    .line 92
    :goto_2
    const/16 p0, 0x10

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final updatePreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->update()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
