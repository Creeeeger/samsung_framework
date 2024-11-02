.class public final Lcom/android/systemui/mdm/MdmOverlayContainer;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

.field public mMdmOverlayView:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

.field public mPreviousState:I

.field public mStatusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mStatusBarStateControllerLazy:Ldagger/Lazy;

.field public mView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mStatusBarStateControllerLazy:Ldagger/Lazy;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final updateMdmPolicy()V
    .locals 6

    .line 1
    const-string v0, "MdmOverlayContainer"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 4
    .line 5
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 8
    .line 9
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 10
    .line 11
    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-ne v2, v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isKeyguardShowing()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isOccluded()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v4, v3

    .line 35
    :goto_0
    const/4 v1, 0x0

    .line 36
    const/16 v2, 0x8

    .line 37
    .line 38
    if-eqz v4, :cond_6

    .line 39
    .line 40
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    iget-object v5, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    :try_start_1
    invoke-static {v5}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iput-object v4, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    .line 51
    .line 52
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->isConfigured()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    .line 65
    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    new-instance v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    .line 69
    .line 70
    invoke-direct {v1, v5}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    iput-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    .line 76
    .line 77
    const/4 v4, -0x1

    .line 78
    invoke-virtual {v2, v1, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const-string v1, "mMdmOverlayView is not null!!"

    .line 83
    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    .line 93
    .line 94
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    const-string p0, "mMDMOverlayContainer is null"

    .line 99
    .line 100
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    .line 105
    .line 106
    if-eqz v3, :cond_8

    .line 107
    .line 108
    iget-object v4, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    .line 109
    .line 110
    if-eqz v4, :cond_5

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    iput-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    .line 116
    .line 117
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    .line 118
    .line 119
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :catch_0
    move-exception p0

    .line 124
    const-string v1, "Lockscren Overlay creation fails: "

    .line 125
    .line 126
    invoke-static {v1, p0, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    .line 131
    .line 132
    if-eqz v0, :cond_8

    .line 133
    .line 134
    iget-object v3, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    .line 135
    .line 136
    if-eqz v3, :cond_7

    .line 137
    .line 138
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 139
    .line 140
    .line 141
    iput-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    .line 142
    .line 143
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    .line 144
    .line 145
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    :cond_8
    :goto_2
    return-void
.end method
