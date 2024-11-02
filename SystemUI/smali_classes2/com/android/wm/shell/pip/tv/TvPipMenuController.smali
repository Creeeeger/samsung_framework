.class public final Lcom/android/wm/shell/pip/tv/TvPipMenuController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/pip/PipMenuController;
.implements Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentMenuMode:I

.field public mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

.field public mLeash:Landroid/view/SurfaceControl;

.field public final mMainHandler:Landroid/os/Handler;

.field public mMenuIsFocused:Z

.field public mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

.field public mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

.field public mPrevMenuMode:I

.field public final mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

.field public mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

.field public final mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/common/SystemWindows;Landroid/os/Handler;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPrevMenuMode:I

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMainHandler:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance v2, Lcom/android/wm/shell/pip/tv/TvPipMenuController$1;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Landroid/content/IntentFilter;

    .line 23
    .line 24
    const-string p0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 25
    .line 26
    invoke-direct {v3, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v6, 0x2

    .line 31
    move-object v1, p1

    .line 32
    move-object v5, p4

    .line 33
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static getMenuModeString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    const-string p0, "MODE_ALL_ACTIONS_MENU"

    return-object p0

    :cond_1
    const-string p0, "MODE_MOVE_MENU"

    return-object p0

    :cond_2
    const-string p0, "MODE_NO_MENU"

    return-object p0
.end method


# virtual methods
.method public final attach(Landroid/view/SurfaceControl;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mLeash:Landroid/view/SurfaceControl;

    .line 6
    .line 7
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const-string v1, "TvPipMenuController"

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 15
    .line 16
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const v3, -0x740327a3

    .line 21
    .line 22
    .line 23
    const-string v4, "%s: attachPipMenu()"

    .line 24
    .line 25
    invoke-static {p1, v3, v0, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object v4, v2, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/view/SurfaceControlViewHost;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 46
    .line 47
    .line 48
    iput-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    iget-object v4, v2, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/view/SurfaceControlViewHost;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 63
    .line 64
    .line 65
    iput-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 66
    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->createTvPipBackgroundView()Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 72
    .line 73
    new-instance v3, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;

    .line 74
    .line 75
    const/4 v4, -0x1

    .line 76
    invoke-direct {v3, p0, v4}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    const-string v4, "PipBackgroundView"

    .line 87
    .line 88
    invoke-static {v3, v0, v0, v4}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(Landroid/content/Context;IILjava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const/4 v5, 0x0

    .line 93
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 94
    .line 95
    const/4 v6, 0x1

    .line 96
    invoke-virtual {v2, p1, v4, v6}, Lcom/android/wm/shell/common/SystemWindows;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 100
    .line 101
    if-nez p1, :cond_3

    .line 102
    .line 103
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 104
    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 108
    .line 109
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const v2, 0x4b8c621

    .line 114
    .line 115
    .line 116
    const-string v4, "%s: Actions provider is not set"

    .line 117
    .line 118
    invoke-static {p1, v2, v0, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->createTvPipMenuView()Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 127
    .line 128
    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;

    .line 129
    .line 130
    invoke-direct {v1, p0, v6}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 137
    .line 138
    const-string v1, "PipMenuView"

    .line 139
    .line 140
    invoke-static {v3, v0, v0, v1}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(Landroid/content/Context;IILjava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 145
    .line 146
    invoke-virtual {v2, p1, v1, v6}, Lcom/android/wm/shell/common/SystemWindows;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V

    .line 147
    .line 148
    .line 149
    :cond_4
    :goto_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const v1, 0x7f070b00

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const v2, 0x7f070afc

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    neg-int v1, v1

    .line 172
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 177
    .line 178
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

    .line 179
    .line 180
    neg-int p1, p1

    .line 181
    invoke-static {v0, v0, v0, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

    .line 186
    .line 187
    return-void

    .line 188
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 189
    .line 190
    const-string p1, "Delegate is not set."

    .line 191
    .line 192
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p0
.end method

.method public final calculateMenuSurfaceBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuOuterSpace:I

    .line 12
    .line 13
    neg-int p1, p1

    .line 14
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 15
    .line 16
    .line 17
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextDrawer:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v2, 0x8

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    :goto_0
    add-int/2addr p1, p0

    .line 36
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 37
    .line 38
    return-object v0
.end method

.method public final closeMenu()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 7
    .line 8
    const-string v2, "TvPipMenuController"

    .line 9
    .line 10
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const v3, 0x36b65943

    .line 15
    .line 16
    .line 17
    const-string v4, "%s: closeMenu()"

    .line 18
    .line 19
    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->switchToMenuMode(IZ)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public createTvPipBackgroundView()Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public createTvPipMenuView()Lcom/android/wm/shell/pip/tv/TvPipMenuView;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMainHandler:Landroid/os/Handler;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, p0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final detach()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->closeMenu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v3, v2, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/SurfaceControlViewHost;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v2, v2, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/view/SurfaceControlViewHost;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 40
    .line 41
    :cond_1
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mLeash:Landroid/view/SurfaceControl;

    .line 42
    .line 43
    return-void
.end method

.method public getMenuModeString()Ljava/lang/String;
    .locals 0

    .line 2
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isInAllActionsMode()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public isInMoveMode()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final isMenuAttached()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p0, v1

    .line 25
    :goto_0
    if-nez p0, :cond_1

    .line 26
    .line 27
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 32
    .line 33
    const-string v2, "TvPipMenuController"

    .line 34
    .line 35
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const v3, -0x5b541edb

    .line 40
    .line 41
    .line 42
    const-string v4, "%s: the menu surfaces are not attached."

    .line 43
    .line 44
    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return p0
.end method

.method public isMenuOpen()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final isMenuVisible()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)V
    .locals 5

    .line 1
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "TvPipMenuController"

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 21
    .line 22
    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const v2, -0x6291ab78

    .line 27
    .line 28
    .line 29
    const-string v4, "%s: movePipMenu: %s, alpha %s"

    .line 30
    .line 31
    invoke-static {v3, v2, v0, v4, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    if-nez p2, :cond_1

    .line 41
    .line 42
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 43
    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 47
    .line 48
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const p2, -0x6f6ce73b

    .line 53
    .line 54
    .line 55
    const-string p3, "%s: no transaction given"

    .line 56
    .line 57
    invoke-static {p0, p2, v0, p3, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isMenuAttached()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->calculateMenuSurfaceBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-nez p2, :cond_4

    .line 87
    .line 88
    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    .line 89
    .line 90
    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 91
    .line 92
    .line 93
    :cond_4
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 94
    .line 95
    int-to-float v2, v2

    .line 96
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 97
    .line 98
    int-to-float v3, v3

    .line 99
    invoke-virtual {p2, p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 100
    .line 101
    .line 102
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 103
    .line 104
    int-to-float v2, v2

    .line 105
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 106
    .line 107
    int-to-float v1, v1

    .line 108
    invoke-virtual {p2, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 109
    .line 110
    .line 111
    const/high16 v1, -0x40800000    # -1.0f

    .line 112
    .line 113
    cmpl-float v1, p4, v1

    .line 114
    .line 115
    if-eqz v1, :cond_5

    .line 116
    .line 117
    invoke-virtual {p2, p1, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v0, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 121
    .line 122
    .line 123
    :cond_5
    new-instance p1, Landroid/window/SurfaceSyncGroup;

    .line 124
    .line 125
    const-string p4, "TvPip"

    .line 126
    .line 127
    invoke-direct {p1, p4}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 131
    .line 132
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    .line 133
    .line 134
    .line 135
    move-result-object p4

    .line 136
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1, p4, v0}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    .line 138
    .line 139
    .line 140
    iget-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 141
    .line 142
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    .line 143
    .line 144
    .line 145
    move-result-object p4

    .line 146
    invoke-virtual {p1, p4, v0}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public final onExitMoveMode()Z
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 15
    .line 16
    const-string v3, "TvPipMenuController"

    .line 17
    .line 18
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const v3, 0x13fa2744

    .line 23
    .line 24
    .line 25
    const-string v4, "%s: onExitMoveMode - mCurrentMenuMode=%s"

    .line 26
    .line 27
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isInMoveMode()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPrevMenuMode:I

    .line 39
    .line 40
    invoke-virtual {p0, v2, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->switchToMenuMode(IZ)V

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p0, 0x1

    .line 44
    if-ne v0, p0, :cond_2

    .line 45
    .line 46
    move v1, p0

    .line 47
    :cond_2
    return v1
.end method

.method public final onPipMovement(I)Z
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 14
    .line 15
    const-string v2, "TvPipMenuController"

    .line 16
    .line 17
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v2, -0x1d201924

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const-string v4, "%s: onPipMovement - mCurrentMenuMode=%s"

    .line 26
    .line 27
    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isInMoveMode()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    .line 37
    .line 38
    check-cast v0, Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->movePip(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isInMoveMode()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public final resizePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 4

    .line 1
    sget-boolean p3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 14
    .line 15
    const-string v1, "TvPipMenuController"

    .line 16
    .line 17
    filled-new-array {v1, p3}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    const v1, 0x31c837a1

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const-string v3, "%s: resizePipMenu: %s"

    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3, p3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-eqz p3, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isMenuAttached()Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-nez p3, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 47
    .line 48
    invoke-virtual {v0, p3}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->calculateMenuSurfaceBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {p2, p3, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 82
    .line 83
    .line 84
    new-instance p3, Landroid/window/SurfaceSyncGroup;

    .line 85
    .line 86
    const-string v0, "TvPip"

    .line 87
    .line 88
    invoke-direct {p3, v0}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const/4 v1, 0x0

    .line 98
    invoke-virtual {p3, v0, v1}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p3, v0, v1}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, p2}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final switchToMenuMode(IZ)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 2
    .line 3
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPrevMenuMode:I

    .line 4
    .line 5
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 6
    .line 7
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 8
    .line 9
    const-string v0, "TvPipMenuController"

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPrevMenuMode:I

    .line 22
    .line 23
    invoke-static {v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 28
    .line 29
    filled-new-array {v0, p1, v1}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const v1, -0x684963e5

    .line 34
    .line 35
    .line 36
    const-string v3, "%s: switchToMenuMode: setting mCurrentMenuMode=%s, mPrevMenuMode=%s"

    .line 37
    .line 38
    invoke-static {v2, v1, v3, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->i(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz p1, :cond_1b

    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 48
    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 54
    .line 55
    iget v3, v3, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 56
    .line 57
    iput v3, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    .line 58
    .line 59
    iget v3, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 60
    .line 61
    if-ne v3, v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showMovementHints()V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 67
    .line 68
    iget v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    const/16 v4, 0xc

    .line 74
    .line 75
    const-string v5, "Unknown TV PiP menu mode: "

    .line 76
    .line 77
    const/4 v6, 0x2

    .line 78
    const/4 v7, 0x0

    .line 79
    const-string v8, "TvPipMenuView"

    .line 80
    .line 81
    if-eqz v3, :cond_e

    .line 82
    .line 83
    const/high16 v9, 0x3f800000    # 1.0f

    .line 84
    .line 85
    if-eq v3, v1, :cond_a

    .line 86
    .line 87
    if-ne v3, v6, :cond_9

    .line 88
    .line 89
    sget-boolean v7, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 90
    .line 91
    if-eqz v7, :cond_3

    .line 92
    .line 93
    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 94
    .line 95
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    filled-new-array {v8, v10}, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    const-string v10, "%s: showAllActionsMenu(), resetMenu %b"

    .line 104
    .line 105
    const v11, 0x645b979c

    .line 106
    .line 107
    .line 108
    invoke-static {v7, v11, v4, v10, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    if-eqz p2, :cond_5

    .line 112
    .line 113
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 114
    .line 115
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    if-eqz p2, :cond_4

    .line 120
    .line 121
    invoke-virtual {p2}, Landroid/view/View;->clearFocus()V

    .line 122
    .line 123
    .line 124
    :cond_4
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonLayoutManager:Lcom/android/internal/widget/LinearLayoutManager;

    .line 125
    .line 126
    invoke-virtual {p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 127
    .line 128
    .line 129
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 130
    .line 131
    new-instance v7, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda0;

    .line 132
    .line 133
    invoke-direct {v7, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, v7}, Lcom/android/internal/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 137
    .line 138
    .line 139
    :cond_5
    iget p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 140
    .line 141
    if-ne p2, v6, :cond_6

    .line 142
    .line 143
    goto/16 :goto_2

    .line 144
    .line 145
    :cond_6
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setMenuButtonsVisible(Z)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->hideMovementHints()V

    .line 149
    .line 150
    .line 151
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMenuFrameView:Landroid/view/View;

    .line 152
    .line 153
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 154
    .line 155
    .line 156
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mDimLayer:Landroid/view/View;

    .line 157
    .line 158
    invoke-virtual {p1, p2, v9}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    .line 159
    .line 160
    .line 161
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextDrawer:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 162
    .line 163
    invoke-virtual {p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->closeIfNeeded()V

    .line 164
    .line 165
    .line 166
    iget p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 167
    .line 168
    if-ne p2, v1, :cond_11

    .line 169
    .line 170
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 171
    .line 172
    move v7, v2

    .line 173
    :goto_0
    iget-object v8, p2, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    .line 174
    .line 175
    check-cast v8, Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    if-ge v7, v9, :cond_8

    .line 182
    .line 183
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    check-cast v8, Lcom/android/wm/shell/pip/tv/TvPipAction;

    .line 188
    .line 189
    iget v8, v8, Lcom/android/wm/shell/pip/tv/TvPipAction;->mActionType:I

    .line 190
    .line 191
    if-ne v8, v6, :cond_7

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_8
    const/4 v7, -0x1

    .line 198
    :goto_1
    invoke-virtual {p1, v7}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->refocusButton(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 203
    .line 204
    iget p1, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 205
    .line 206
    invoke-static {p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p0

    .line 218
    :cond_a
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 219
    .line 220
    if-eqz p2, :cond_b

    .line 221
    .line 222
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 223
    .line 224
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    const v10, -0x508b9a52

    .line 229
    .line 230
    .line 231
    const-string v11, "%s: showMoveMenu()"

    .line 232
    .line 233
    invoke-static {p2, v10, v2, v11, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_b
    iget p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 237
    .line 238
    if-ne p2, v1, :cond_c

    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_c
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showMovementHints()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setMenuButtonsVisible(Z)V

    .line 245
    .line 246
    .line 247
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMenuFrameView:Landroid/view/View;

    .line 248
    .line 249
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 250
    .line 251
    .line 252
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 253
    .line 254
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 255
    .line 256
    .line 257
    move-result p2

    .line 258
    if-eqz p2, :cond_d

    .line 259
    .line 260
    move v7, v9

    .line 261
    :cond_d
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mDimLayer:Landroid/view/View;

    .line 262
    .line 263
    invoke-virtual {p1, p2, v7}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    .line 264
    .line 265
    .line 266
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextDrawer:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 267
    .line 268
    invoke-virtual {p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->closeIfNeeded()V

    .line 269
    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_e
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 273
    .line 274
    if-eqz p2, :cond_f

    .line 275
    .line 276
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 277
    .line 278
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v8

    .line 282
    const v9, 0x7bc1b495

    .line 283
    .line 284
    .line 285
    const-string v10, "%s: hideAllUserControls()"

    .line 286
    .line 287
    invoke-static {p2, v9, v2, v10, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :cond_f
    iget p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 291
    .line 292
    if-nez p2, :cond_10

    .line 293
    .line 294
    goto :goto_2

    .line 295
    :cond_10
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setMenuButtonsVisible(Z)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->hideMovementHints()V

    .line 299
    .line 300
    .line 301
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMenuFrameView:Landroid/view/View;

    .line 302
    .line 303
    invoke-virtual {p2, v2}, Landroid/view/View;->setActivated(Z)V

    .line 304
    .line 305
    .line 306
    iget-object p2, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mDimLayer:Landroid/view/View;

    .line 307
    .line 308
    invoke-virtual {p1, p2, v7}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    .line 309
    .line 310
    .line 311
    :cond_11
    :goto_2
    iput v3, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 312
    .line 313
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 314
    .line 315
    iget p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 316
    .line 317
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 321
    .line 322
    if-eqz v3, :cond_12

    .line 323
    .line 324
    iget v3, p1, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mCurrentMenuMode:I

    .line 325
    .line 326
    invoke-static {v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-static {p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->getMenuModeString(I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 335
    .line 336
    const-string v9, "TvPipBackgroundView"

    .line 337
    .line 338
    filled-new-array {v9, v3, v7}, [Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    const v7, -0x7540f821

    .line 343
    .line 344
    .line 345
    const-string v9, "%s: transitionToMenuMode(), old menu mode = %s, new menu mode = %s"

    .line 346
    .line 347
    invoke-static {v8, v7, v2, v9, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    :cond_12
    iget v3, p1, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mCurrentMenuMode:I

    .line 351
    .line 352
    if-ne v3, p2, :cond_13

    .line 353
    .line 354
    goto :goto_4

    .line 355
    :cond_13
    iget v7, p1, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mElevationNoMenu:I

    .line 356
    .line 357
    sget-object v8, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->ENTER:Landroid/view/animation/Interpolator;

    .line 358
    .line 359
    if-eqz p2, :cond_16

    .line 360
    .line 361
    if-eq p2, v1, :cond_15

    .line 362
    .line 363
    if-ne p2, v6, :cond_14

    .line 364
    .line 365
    iget v7, p1, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mElevationAllActionsMenu:I

    .line 366
    .line 367
    if-ne v3, v1, :cond_17

    .line 368
    .line 369
    sget-object v8, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    .line 370
    .line 371
    goto :goto_3

    .line 372
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 373
    .line 374
    invoke-static {v5, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw p0

    .line 382
    :cond_15
    iget v7, p1, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mElevationMoveMenu:I

    .line 383
    .line 384
    goto :goto_3

    .line 385
    :cond_16
    sget-object v8, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    .line 386
    .line 387
    :cond_17
    :goto_3
    iget-object v3, p1, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mBackgroundView:Landroid/view/View;

    .line 388
    .line 389
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    int-to-float v5, v7

    .line 394
    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    iget v5, p1, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mPipMenuFadeAnimationDuration:I

    .line 403
    .line 404
    int-to-long v5, v5

    .line 405
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 410
    .line 411
    .line 412
    iput p2, p1, Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;->mCurrentMenuMode:I

    .line 413
    .line 414
    :goto_4
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 415
    .line 416
    if-eqz p1, :cond_18

    .line 417
    .line 418
    move p1, v1

    .line 419
    goto :goto_5

    .line 420
    :cond_18
    move p1, v2

    .line 421
    :goto_5
    iget-boolean p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMenuIsFocused:Z

    .line 422
    .line 423
    if-ne p2, p1, :cond_19

    .line 424
    .line 425
    goto :goto_6

    .line 426
    :cond_19
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 427
    .line 428
    if-eqz p2, :cond_1a

    .line 429
    .line 430
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 431
    .line 432
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 433
    .line 434
    .line 435
    move-result-object v3

    .line 436
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    const v5, 0x7db28179

    .line 441
    .line 442
    .line 443
    const-string v6, "%s: grantWindowFocus(%b)"

    .line 444
    .line 445
    invoke-static {p2, v5, v4, v6, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    :cond_1a
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    .line 449
    .line 450
    .line 451
    move-result-object p2

    .line 452
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 453
    .line 454
    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 455
    .line 456
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/SystemWindows;->getFocusGrantToken(Landroid/view/View;)Landroid/os/IBinder;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    const/4 v4, 0x0

    .line 461
    invoke-interface {p2, v4, v3, p1}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .line 463
    .line 464
    goto :goto_6

    .line 465
    :catch_0
    move-exception p1

    .line 466
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 467
    .line 468
    if-eqz p2, :cond_1b

    .line 469
    .line 470
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 475
    .line 476
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    const v0, -0xea90bd1

    .line 481
    .line 482
    .line 483
    const-string v3, "%s: Unable to update focus, %s"

    .line 484
    .line 485
    invoke-static {p2, v0, v2, v3, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    :cond_1b
    :goto_6
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPrevMenuMode:I

    .line 489
    .line 490
    iget p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 491
    .line 492
    if-ne p1, p2, :cond_1c

    .line 493
    .line 494
    goto :goto_7

    .line 495
    :cond_1c
    iget-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    .line 496
    .line 497
    if-nez p2, :cond_1d

    .line 498
    .line 499
    goto :goto_7

    .line 500
    :cond_1d
    if-eq p1, v1, :cond_1e

    .line 501
    .line 502
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isInMoveMode()Z

    .line 503
    .line 504
    .line 505
    move-result p1

    .line 506
    if-eqz p1, :cond_1f

    .line 507
    .line 508
    :cond_1e
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    .line 509
    .line 510
    check-cast p1, Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 511
    .line 512
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    .line 513
    .line 514
    .line 515
    :cond_1f
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCurrentMenuMode:I

    .line 516
    .line 517
    if-nez p1, :cond_21

    .line 518
    .line 519
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    .line 520
    .line 521
    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 522
    .line 523
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 524
    .line 525
    .line 526
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 527
    .line 528
    if-eqz p1, :cond_20

    .line 529
    .line 530
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    .line 531
    .line 532
    invoke-static {p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 537
    .line 538
    const-string v0, "TvPipController"

    .line 539
    .line 540
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object p1

    .line 544
    const v0, 0xa369699

    .line 545
    .line 546
    .line 547
    const-string v3, "%s: closeMenu(), state before=%s"

    .line 548
    .line 549
    invoke-static {p2, v0, v2, v3, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    :cond_20
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipController;->setState(I)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    .line 556
    .line 557
    .line 558
    :cond_21
    :goto_7
    return-void
.end method

.method public final updateMenuBounds(Landroid/graphics/Rect;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isMenuAttached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->calculateMenuSurfaceBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 26
    .line 27
    const-string v4, "TvPipMenuController"

    .line 28
    .line 29
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const v4, 0x3322e85a

    .line 34
    .line 35
    .line 36
    const-string v5, "%s: updateMenuBounds: %s"

    .line 37
    .line 38
    invoke-static {v3, v4, v2, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Lcom/android/wm/shell/pip/tv/TvPipBackgroundView;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const-string v5, "PipBackgroundView"

    .line 52
    .line 53
    iget-object v6, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v6, v3, v4, v5}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(Landroid/content/Context;IILjava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 60
    .line 61
    invoke-virtual {v4, v1, v3}, Lcom/android/wm/shell/common/SystemWindows;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const-string v5, "PipMenuView"

    .line 75
    .line 76
    invoke-static {v6, v3, v0, v5}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(Landroid/content/Context;IILjava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v4, v1, v0}, Lcom/android/wm/shell/common/SystemWindows;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 84
    .line 85
    if-eqz p0, :cond_6

    .line 86
    .line 87
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 108
    .line 109
    const-string v4, "TvPipMenuView"

    .line 110
    .line 111
    filled-new-array {v4, v0, v1}, [Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const v1, -0x185d60ca

    .line 116
    .line 117
    .line 118
    const-string v4, "%s: updateLayout, width: %s, height: %s"

    .line 119
    .line 120
    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_3

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-nez p1, :cond_4

    .line 144
    .line 145
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-eqz p1, :cond_4

    .line 152
    .line 153
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuBorderWidth:I

    .line 160
    .line 161
    mul-int/lit8 v1, v1, 0x2

    .line 162
    .line 163
    add-int/2addr v1, v0

    .line 164
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 165
    .line 166
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 167
    .line 168
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuBorderWidth:I

    .line 173
    .line 174
    mul-int/lit8 v1, v1, 0x2

    .line 175
    .line 176
    add-int/2addr v1, v0

    .line 177
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 178
    .line 179
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    .line 180
    .line 181
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    .line 183
    .line 184
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipView:Landroid/view/View;

    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    if-eqz p1, :cond_5

    .line 191
    .line 192
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 193
    .line 194
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 199
    .line 200
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 201
    .line 202
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 207
    .line 208
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipView:Landroid/view/View;

    .line 209
    .line 210
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    .line 212
    .line 213
    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    if-eqz p1, :cond_6

    .line 220
    .line 221
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 222
    .line 223
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 228
    .line 229
    .line 230
    :cond_6
    :goto_0
    return-void
.end method
