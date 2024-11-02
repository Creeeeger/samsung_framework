.class public Lcom/android/systemui/statusbar/NotificationShelf;
.super Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;


# static fields
.field public static final BASE_VALUE:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

.field public static final ICON_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final SHELF_SCROLL:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;


# instance fields
.field public mActualWidth:F

.field public mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public mAnimationsEnabled:Z

.field public mCanInteract:Z

.field public mCanModifyColorOfNotifications:Z

.field public final mClipRect:Landroid/graphics/Rect;

.field public mController:Lcom/android/systemui/statusbar/NotificationShelfController;

.field public mCornerAnimationDistance:F

.field public mEnableNotificationClipping:Z

.field public mHasItemsInStableShelf:Z

.field public mHideBackground:Z

.field public mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public mIndexOfFirstViewInShelf:I

.field public mInteractive:Z

.field public mNotGoneIndex:I

.field public mScrollFastThreshold:I

.field public mSensitiveRevealAnimEndabled:Z

.field public mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

.field public mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

.field public mShelfRefactorFlagEnabled:Z

.field public mShowNotificationShelf:Z

.field public mStatusBarState:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    const v1, 0x3f19999a    # 0.6f

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v1, v2, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 11
    .line 12
    const-string v0, "BaseValue"

    .line 13
    .line 14
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SourceType;->from(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/android/systemui/statusbar/NotificationShelf;->BASE_VALUE:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 19
    .line 20
    const-string v0, "ShelfScroll"

    .line 21
    .line 22
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SourceType;->from(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/android/systemui/statusbar/NotificationShelf;->SHELF_SCROLL:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIndexOfFirstViewInShelf:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 5
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mActualWidth:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 8
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIndexOfFirstViewInShelf:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 10
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mActualWidth:F

    .line 11
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    .line 12
    sget-object p1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    const-string p2, "NotificationShelf"

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;)V

    return-void
.end method


# virtual methods
.method public final createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    .line 7
    .line 8
    const-class v2, Lcom/android/systemui/statusbar/NotificationShelf;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v1, "NotificationShelf"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addHeaderLine(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 19
    .line 20
    check-cast v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "hasItemsInStableShelf"

    .line 31
    .line 32
    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    const-string v1, "NotificationShelfIcon"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addHeaderLine(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-ge v1, v2, :cond_3

    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 66
    .line 67
    if-nez v3, :cond_1

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 78
    .line 79
    :goto_1
    if-eqz v2, :cond_2

    .line 80
    .line 81
    iget v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 82
    .line 83
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    iget v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 88
    .line 89
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    iget v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 94
    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 100
    .line 101
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    .line 106
    .line 107
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    iget v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 112
    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 118
    .line 119
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    const-string v4, "    iconAppearAmount:%s | clampedAppearAmount:%s | visibleState:%s | justAdded:%s | needsCannedAnimation:%s | iconColor:%s | noAnimations:%s"

    .line 128
    .line 129
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    sget-object v3, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    .line 133
    .line 134
    iget v4, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 135
    .line 136
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    const-string v3, "iconAppearAmount"

    .line 144
    .line 145
    invoke-static {v0, v3, v4}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    iget v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 149
    .line 150
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    const-string v4, "clampedAppearAmount"

    .line 155
    .line 156
    invoke-static {v0, v4, v3}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    iget v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 160
    .line 161
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    const-string/jumbo v4, "visibleState"

    .line 166
    .line 167
    .line 168
    invoke-static {v0, v4, v3}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 172
    .line 173
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    const-string v4, "justAdded"

    .line 178
    .line 179
    invoke-static {v0, v4, v3}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    .line 183
    .line 184
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    const-string v4, "needsCannedAnimation"

    .line 189
    .line 190
    invoke-static {v0, v4, v3}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    iget v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 194
    .line 195
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    const-string v4, "iconColor"

    .line 200
    .line 201
    invoke-static {v0, v4, v3}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 205
    .line 206
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    const-string v3, "noAnimations"

    .line 211
    .line 212
    invoke-static {v0, v3, v2}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 216
    .line 217
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    const-string v3, "method"

    .line 222
    .line 223
    invoke-static {v0, v3, v2}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    const-string v2, "\n"

    .line 227
    .line 228
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_3
    return-object v0
.end method

.method public getAmountInShelf(ILcom/android/systemui/statusbar/notification/row/ExpandableView;ZZZF)F
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    iget v3, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    add-int/2addr v3, v4

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfTransformationTarget()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    int-to-float v5, v5

    .line 32
    add-float/2addr v6, v5

    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    int-to-float v5, v5

    .line 42
    sub-float v5, v6, v5

    .line 43
    .line 44
    :goto_0
    int-to-float v6, v3

    .line 45
    add-float/2addr v6, v2

    .line 46
    sub-float/2addr v6, v5

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    int-to-float v7, v7

    .line 52
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz p5, :cond_2

    .line 57
    .line 58
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    sub-int/2addr v7, v8

    .line 67
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 72
    .line 73
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_1

    .line 78
    .line 79
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-eq v7, v8, :cond_2

    .line 88
    .line 89
    :cond_1
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    sub-int/2addr v7, v8

    .line 98
    int-to-float v7, v7

    .line 99
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    :cond_2
    int-to-float v3, v3

    .line 104
    add-float v7, v2, v3

    .line 105
    .line 106
    cmpl-float v7, v7, p6

    .line 107
    .line 108
    const/4 v8, 0x0

    .line 109
    const/high16 v9, 0x3f800000    # 1.0f

    .line 110
    .line 111
    if-ltz v7, :cond_7

    .line 112
    .line 113
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 114
    .line 115
    iget-boolean v10, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mUnlockHintRunning:Z

    .line 116
    .line 117
    if-eqz v10, :cond_3

    .line 118
    .line 119
    iget-boolean v10, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    .line 120
    .line 121
    if-eqz v10, :cond_7

    .line 122
    .line 123
    :cond_3
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 124
    .line 125
    if-nez v7, :cond_4

    .line 126
    .line 127
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-nez v7, :cond_7

    .line 132
    .line 133
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-nez v7, :cond_7

    .line 138
    .line 139
    :cond_4
    cmpg-float v7, v2, p6

    .line 140
    .line 141
    if-gez v7, :cond_6

    .line 142
    .line 143
    sub-float v7, v2, p6

    .line 144
    .line 145
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    const v10, 0x3a83126f    # 0.001f

    .line 150
    .line 151
    .line 152
    cmpl-float v7, v7, v10

    .line 153
    .line 154
    if-lez v7, :cond_6

    .line 155
    .line 156
    sub-float v7, p6, v2

    .line 157
    .line 158
    div-float v3, v7, v3

    .line 159
    .line 160
    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    sub-float v3, v9, v3

    .line 165
    .line 166
    if-eqz p5, :cond_5

    .line 167
    .line 168
    sub-float/2addr v5, v2

    .line 169
    div-float/2addr v7, v5

    .line 170
    goto :goto_1

    .line 171
    :cond_5
    sub-float v2, p6, v5

    .line 172
    .line 173
    div-float v7, v2, v6

    .line 174
    .line 175
    :goto_1
    invoke-static {v7, v8, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    sub-float v2, v9, v2

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_6
    move v3, v9

    .line 183
    goto :goto_2

    .line 184
    :cond_7
    move v3, v8

    .line 185
    :goto_2
    move v2, v3

    .line 186
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 191
    .line 192
    const/4 v7, 0x0

    .line 193
    if-nez v6, :cond_8

    .line 194
    .line 195
    move-object v6, v7

    .line 196
    goto :goto_4

    .line 197
    :cond_8
    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 198
    .line 199
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    check-cast v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 204
    .line 205
    :goto_4
    if-nez v6, :cond_9

    .line 206
    .line 207
    goto/16 :goto_14

    .line 208
    .line 209
    :cond_9
    const/high16 v10, 0x3f000000    # 0.5f

    .line 210
    .line 211
    cmpl-float v10, v2, v10

    .line 212
    .line 213
    const/4 v11, 0x1

    .line 214
    if-gtz v10, :cond_d

    .line 215
    .line 216
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfTransformationTarget()Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    if-nez v10, :cond_a

    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 224
    .line 225
    .line 226
    move-result v12

    .line 227
    iget v13, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentTranslation:F

    .line 228
    .line 229
    add-float/2addr v12, v13

    .line 230
    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    .line 231
    .line 232
    .line 233
    move-result v13

    .line 234
    int-to-float v13, v13

    .line 235
    add-float/2addr v12, v13

    .line 236
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 237
    .line 238
    .line 239
    move-result v10

    .line 240
    int-to-float v10, v10

    .line 241
    add-float/2addr v12, v10

    .line 242
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    int-to-float v13, v4

    .line 247
    sub-float/2addr v10, v13

    .line 248
    cmpl-float v10, v12, v10

    .line 249
    .line 250
    if-ltz v10, :cond_b

    .line 251
    .line 252
    move v10, v11

    .line 253
    goto :goto_6

    .line 254
    :cond_b
    :goto_5
    move v10, v4

    .line 255
    :goto_6
    if-eqz v10, :cond_c

    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_c
    move v10, v4

    .line 259
    goto :goto_8

    .line 260
    :cond_d
    :goto_7
    move v10, v11

    .line 261
    :goto_8
    if-eqz v10, :cond_e

    .line 262
    .line 263
    move v10, v9

    .line 264
    goto :goto_9

    .line 265
    :cond_e
    move v10, v8

    .line 266
    :goto_9
    cmpl-float v12, v2, v10

    .line 267
    .line 268
    if-nez v12, :cond_11

    .line 269
    .line 270
    if-nez p3, :cond_f

    .line 271
    .line 272
    if-eqz p4, :cond_10

    .line 273
    .line 274
    :cond_f
    if-nez p5, :cond_10

    .line 275
    .line 276
    move v12, v11

    .line 277
    goto :goto_a

    .line 278
    :cond_10
    move v12, v4

    .line 279
    :goto_a
    iput-boolean v12, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 280
    .line 281
    :cond_11
    if-nez p5, :cond_14

    .line 282
    .line 283
    if-nez p3, :cond_13

    .line 284
    .line 285
    if-eqz p4, :cond_14

    .line 286
    .line 287
    sget v12, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    .line 288
    .line 289
    invoke-virtual {v5, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v12

    .line 293
    if-eqz v12, :cond_12

    .line 294
    .line 295
    move v12, v11

    .line 296
    goto :goto_b

    .line 297
    :cond_12
    move v12, v4

    .line 298
    :goto_b
    if-nez v12, :cond_14

    .line 299
    .line 300
    :cond_13
    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    .line 301
    .line 302
    .line 303
    iput-boolean v11, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 304
    .line 305
    :cond_14
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 306
    .line 307
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    if-eqz v5, :cond_16

    .line 312
    .line 313
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    .line 314
    .line 315
    if-nez v5, :cond_16

    .line 316
    .line 317
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 318
    .line 319
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    if-eqz v2, :cond_15

    .line 324
    .line 325
    move v2, v9

    .line 326
    goto :goto_d

    .line 327
    :cond_15
    move v2, v8

    .line 328
    goto :goto_d

    .line 329
    :cond_16
    iget v5, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 330
    .line 331
    cmpl-float v5, v5, v10

    .line 332
    .line 333
    if-eqz v5, :cond_17

    .line 334
    .line 335
    move v5, v11

    .line 336
    goto :goto_c

    .line 337
    :cond_17
    move v5, v4

    .line 338
    :goto_c
    iput-boolean v5, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    .line 339
    .line 340
    :goto_d
    iput v10, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 341
    .line 342
    instance-of v5, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 343
    .line 344
    if-nez v5, :cond_18

    .line 345
    .line 346
    goto/16 :goto_14

    .line 347
    .line 348
    :cond_18
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 349
    .line 350
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 355
    .line 356
    if-nez v10, :cond_19

    .line 357
    .line 358
    goto :goto_e

    .line 359
    :cond_19
    iget-object v7, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 360
    .line 361
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    check-cast v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 366
    .line 367
    :goto_e
    if-nez v7, :cond_1a

    .line 368
    .line 369
    goto/16 :goto_14

    .line 370
    .line 371
    :cond_1a
    sget-object v10, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 372
    .line 373
    check-cast v10, Landroid/view/animation/PathInterpolator;

    .line 374
    .line 375
    invoke-virtual {v10, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 376
    .line 377
    .line 378
    move-result v10

    .line 379
    invoke-virtual {v7, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 380
    .line 381
    .line 382
    iget-boolean v10, v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    .line 383
    .line 384
    if-eqz v10, :cond_1b

    .line 385
    .line 386
    iget-boolean v10, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    .line 387
    .line 388
    if-nez v10, :cond_1b

    .line 389
    .line 390
    move v10, v11

    .line 391
    goto :goto_f

    .line 392
    :cond_1b
    move v10, v4

    .line 393
    :goto_f
    if-nez v10, :cond_1f

    .line 394
    .line 395
    if-eqz v5, :cond_1c

    .line 396
    .line 397
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsLowPriority:Z

    .line 398
    .line 399
    if-eqz v5, :cond_1c

    .line 400
    .line 401
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 402
    .line 403
    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsShowingOverflowDot:Z

    .line 404
    .line 405
    if-eqz v5, :cond_1c

    .line 406
    .line 407
    iget v5, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 408
    .line 409
    if-ne v5, v11, :cond_1f

    .line 410
    .line 411
    :cond_1c
    cmpl-float v5, v2, v8

    .line 412
    .line 413
    if-nez v5, :cond_1d

    .line 414
    .line 415
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;)Z

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    if-eqz v5, :cond_1f

    .line 420
    .line 421
    :cond_1d
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    if-nez v5, :cond_1f

    .line 426
    .line 427
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    .line 428
    .line 429
    .line 430
    move-result v5

    .line 431
    if-nez v5, :cond_1f

    .line 432
    .line 433
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationZ()F

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 438
    .line 439
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 440
    .line 441
    .line 442
    int-to-float v6, v4

    .line 443
    cmpl-float v5, v5, v6

    .line 444
    .line 445
    if-lez v5, :cond_1e

    .line 446
    .line 447
    goto :goto_10

    .line 448
    :cond_1e
    move v5, v4

    .line 449
    goto :goto_11

    .line 450
    :cond_1f
    :goto_10
    move v5, v11

    .line 451
    :goto_11
    iput-boolean v5, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 452
    .line 453
    if-eqz v5, :cond_20

    .line 454
    .line 455
    goto :goto_12

    .line 456
    :cond_20
    move v8, v2

    .line 457
    :goto_12
    iput v8, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 458
    .line 459
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 460
    .line 461
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 466
    .line 467
    .line 468
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    .line 469
    .line 470
    if-eqz v0, :cond_21

    .line 471
    .line 472
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransformingInShelf:Z

    .line 473
    .line 474
    if-nez v0, :cond_21

    .line 475
    .line 476
    goto :goto_13

    .line 477
    :cond_21
    move v11, v4

    .line 478
    :goto_13
    if-eqz v11, :cond_22

    .line 479
    .line 480
    iput v9, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 481
    .line 482
    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 483
    .line 484
    .line 485
    iput-boolean v4, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 486
    .line 487
    :cond_22
    :goto_14
    return v3
.end method

.method public final getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mActualWidth:F

    .line 5
    .line 6
    const/high16 v0, -0x40800000    # -1.0f

    .line 7
    .line 8
    cmpl-float v0, p2, v0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    float-to-int p2, p2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 25
    .line 26
    sub-int/2addr p0, p2

    .line 27
    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 31
    .line 32
    add-int/2addr p0, p2

    .line 33
    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 34
    .line 35
    :goto_1
    return-void
.end method

.method public final getContentView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasNoContentHeight()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarState:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    move p0, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    xor-int/2addr p0, v0

    .line 12
    return p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final hideBackground()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x1

    .line 8
    :goto_0
    return p0
.end method

.method public isXInView(FFFF)Z
    .locals 0

    .line 1
    sub-float/2addr p3, p2

    .line 2
    cmpg-float p0, p3, p1

    .line 3
    .line 4
    if-gtz p0, :cond_0

    .line 5
    .line 6
    add-float/2addr p4, p2

    .line 7
    cmpg-float p0, p1, p4

    .line 8
    .line 9
    if-gez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public isYInView(FFFF)Z
    .locals 0

    .line 1
    sub-float/2addr p3, p2

    .line 2
    cmpg-float p0, p3, p1

    .line 3
    .line 4
    if-gtz p0, :cond_0

    .line 5
    .line 6
    add-float/2addr p4, p2

    .line 7
    cmpg-float p0, p1, p4

    .line 8
    .line 9
    if-gez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final needsOutline()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->needsOutline()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateResources()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0297

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 22
    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipToActualHeight:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 36
    .line 37
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    .line 38
    .line 39
    sget-object v0, Lcom/android/systemui/statusbar/NotificationShelf;->BASE_VALUE:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 40
    .line 41
    const/high16 v2, 0x3f800000    # 1.0f

    .line 42
    .line 43
    invoke-interface {p0, v2, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateResources()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const v1, 0x7f1300dd

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/16 v1, 0x10

    .line 27
    .line 28
    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 13
    .line 14
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    .line 15
    .line 16
    neg-int p3, p1

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    const/4 p5, 0x0

    .line 22
    invoke-virtual {p2, p5, p3, p4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 8
    .line 9
    iput p1, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarState:I

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateShelfHeight()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconsPaddingEnd()V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateShelfTextAreaVisibility()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/NotificationShelfController;->Companion:Lcom/android/systemui/statusbar/NotificationShelfController$Companion;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string p1, "Code path not supported when Flags.NOTIFICATION_SHELF_REFACTOR is "

    .line 34
    .line 35
    const-string v0, "enabled"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final pointInView(FFF)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mActualWidth:F

    .line 7
    .line 8
    const/high16 v2, -0x40800000    # -1.0f

    .line 9
    .line 10
    cmpl-float v2, v1, v2

    .line 11
    .line 12
    if-lez v2, :cond_0

    .line 13
    .line 14
    float-to-int v1, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    int-to-float v1, v1

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    sub-float v2, v0, v1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move v0, v1

    .line 39
    :goto_2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    .line 40
    .line 41
    int-to-float v1, v1

    .line 42
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    .line 43
    .line 44
    int-to-float v3, v3

    .line 45
    invoke-virtual {p0, p1, p3, v2, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->isXInView(FFFF)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0, p2, p3, v1, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->isYInView(FFFF)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    const/4 p0, 0x1

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    const/4 p0, 0x0

    .line 60
    :goto_3
    return p0
.end method

.method public final setFakeShadowIntensity(IFFI)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFakeShadowIntensity(IFFI)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NotificationShelf(hideBackground="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " notGoneIndex="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " hasItemsInStableShelf="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " statusBarState="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " interactive="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " animationsEnabled="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, " showNotificationShelf="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, " indexOfFirstViewInShelf="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIndexOfFirstViewInShelf:I

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const/16 p0, 0x29

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method

.method public updateActualWidth(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    invoke-static {p2, v0, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    int-to-float p1, p1

    .line 24
    :goto_0
    float-to-int p2, p1

    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iput p2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualWidth:I

    .line 31
    .line 32
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iput p2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    .line 37
    .line 38
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mActualWidth:F

    .line 39
    .line 40
    return-void
.end method

.method public final updateAppearance()V
    .locals 32

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 20
    .line 21
    const/4 v10, -0x1

    .line 22
    iput v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 23
    .line 24
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 29
    .line 30
    check-cast v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 31
    .line 32
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    .line 33
    .line 34
    :cond_1
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mCurrentScrollVelocity:F

    .line 35
    .line 36
    iget v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    .line 37
    .line 38
    int-to-float v2, v2

    .line 39
    cmpl-float v1, v1, v2

    .line 40
    .line 41
    if-gtz v1, :cond_3

    .line 42
    .line 43
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpandingVelocity:F

    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    .line 54
    .line 55
    int-to-float v1, v1

    .line 56
    cmpl-float v0, v0, v1

    .line 57
    .line 58
    if-lez v0, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 v13, 0x0

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    :goto_0
    const/4 v13, 0x1

    .line 64
    :goto_1
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 65
    .line 66
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPanelTracking:Z

    .line 71
    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    const/4 v14, 0x1

    .line 75
    goto :goto_2

    .line 76
    :cond_4
    const/4 v14, 0x0

    .line 77
    :goto_2
    const/16 v16, 0x0

    .line 78
    .line 79
    move-object/from16 v2, v16

    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    const/4 v1, 0x0

    .line 83
    const/4 v3, 0x0

    .line 84
    const/4 v4, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v15, 0x0

    .line 88
    const/16 v17, 0x0

    .line 89
    .line 90
    const/16 v18, 0x0

    .line 91
    .line 92
    :goto_3
    iget-boolean v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 93
    .line 94
    if-nez v10, :cond_44

    .line 95
    .line 96
    iget-object v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 97
    .line 98
    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 99
    .line 100
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    const/16 v11, 0x8

    .line 105
    .line 106
    if-ge v6, v10, :cond_26

    .line 107
    .line 108
    iget-boolean v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 109
    .line 110
    if-nez v10, :cond_25

    .line 111
    .line 112
    iget-object v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 113
    .line 114
    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 115
    .line 116
    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 121
    .line 122
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->needsClippingToShelf()Z

    .line 123
    .line 124
    .line 125
    move-result v19

    .line 126
    if-eqz v19, :cond_24

    .line 127
    .line 128
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    if-ne v12, v11, :cond_5

    .line 133
    .line 134
    goto/16 :goto_14

    .line 135
    .line 136
    :cond_5
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isSummaryWithChildren()Z

    .line 137
    .line 138
    .line 139
    move-result v11

    .line 140
    if-eqz v11, :cond_6

    .line 141
    .line 142
    instance-of v11, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 143
    .line 144
    if-eqz v11, :cond_6

    .line 145
    .line 146
    iget-object v11, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 147
    .line 148
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    if-eqz v11, :cond_6

    .line 153
    .line 154
    move-object v11, v10

    .line 155
    check-cast v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 156
    .line 157
    iget-boolean v11, v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 158
    .line 159
    if-eqz v11, :cond_6

    .line 160
    .line 161
    const/16 v17, 0x1

    .line 162
    .line 163
    :cond_6
    sget v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    .line 164
    .line 165
    invoke-virtual {v10, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v11

    .line 169
    check-cast v11, Landroid/animation/ValueAnimator;

    .line 170
    .line 171
    if-nez v11, :cond_7

    .line 172
    .line 173
    invoke-virtual {v10}, Landroid/view/View;->getTranslationZ()F

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_7
    sget v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Z:I

    .line 178
    .line 179
    invoke-virtual {v10, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v11

    .line 183
    check-cast v11, Ljava/lang/Float;

    .line 184
    .line 185
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 186
    .line 187
    .line 188
    :goto_4
    const/4 v11, 0x0

    .line 189
    int-to-float v12, v11

    .line 190
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    .line 191
    .line 192
    .line 193
    move-result v11

    .line 194
    move/from16 v20, v0

    .line 195
    .line 196
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 197
    .line 198
    iget v0, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarState:I

    .line 199
    .line 200
    move/from16 v21, v1

    .line 201
    .line 202
    const/4 v1, 0x1

    .line 203
    if-eq v0, v1, :cond_8

    .line 204
    .line 205
    const/4 v0, 0x1

    .line 206
    goto :goto_5

    .line 207
    :cond_8
    const/4 v0, 0x0

    .line 208
    :goto_5
    if-eqz v0, :cond_9

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_9
    if-ne v10, v9, :cond_a

    .line 212
    .line 213
    const/16 v22, 0x1

    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_a
    :goto_6
    const/16 v22, 0x0

    .line 217
    .line 218
    :goto_7
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 219
    .line 220
    .line 221
    move-result v23

    .line 222
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    sub-float/2addr v0, v12

    .line 227
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 228
    .line 229
    check-cast v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 230
    .line 231
    move-object/from16 v24, v9

    .line 232
    .line 233
    instance-of v9, v10, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 234
    .line 235
    move/from16 v25, v0

    .line 236
    .line 237
    if-eqz v9, :cond_b

    .line 238
    .line 239
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_b

    .line 246
    .line 247
    move-object v0, v10

    .line 248
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 249
    .line 250
    if-eqz v22, :cond_b

    .line 251
    .line 252
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    .line 253
    .line 254
    if-eqz v0, :cond_b

    .line 255
    .line 256
    iget v0, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 257
    .line 258
    sub-float/2addr v0, v12

    .line 259
    move/from16 v25, v0

    .line 260
    .line 261
    :cond_b
    move/from16 v26, v9

    .line 262
    .line 263
    move/from16 v9, v20

    .line 264
    .line 265
    move-object/from16 v0, p0

    .line 266
    .line 267
    move/from16 v20, v9

    .line 268
    .line 269
    move/from16 v27, v21

    .line 270
    .line 271
    move-object v9, v1

    .line 272
    move v1, v6

    .line 273
    move-object/from16 v28, v2

    .line 274
    .line 275
    move-object v2, v10

    .line 276
    move/from16 v21, v15

    .line 277
    .line 278
    move v15, v3

    .line 279
    move v3, v13

    .line 280
    move/from16 v29, v13

    .line 281
    .line 282
    move v13, v4

    .line 283
    move v4, v14

    .line 284
    move/from16 v30, v14

    .line 285
    .line 286
    move v14, v5

    .line 287
    move/from16 v5, v22

    .line 288
    .line 289
    move/from16 v31, v6

    .line 290
    .line 291
    move/from16 v6, v25

    .line 292
    .line 293
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationShelf;->getAmountInShelf(ILcom/android/systemui/statusbar/notification/row/ExpandableView;ZZZF)F

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mSensitiveRevealAnimEndabled:Z

    .line 298
    .line 299
    if-nez v1, :cond_c

    .line 300
    .line 301
    if-eqz v22, :cond_c

    .line 302
    .line 303
    iget-boolean v1, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    .line 304
    .line 305
    if-eqz v1, :cond_d

    .line 306
    .line 307
    :cond_c
    if-eqz v11, :cond_e

    .line 308
    .line 309
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    int-to-float v1, v1

    .line 314
    add-float/2addr v1, v8

    .line 315
    if-eqz v22, :cond_10

    .line 316
    .line 317
    if-nez v11, :cond_10

    .line 318
    .line 319
    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 320
    .line 321
    check-cast v2, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 322
    .line 323
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    .line 324
    .line 325
    if-eqz v2, :cond_10

    .line 326
    .line 327
    if-eqz v17, :cond_10

    .line 328
    .line 329
    goto :goto_8

    .line 330
    :cond_e
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 331
    .line 332
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-eqz v1, :cond_f

    .line 337
    .line 338
    invoke-virtual {v9, v7}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;)Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-eqz v1, :cond_f

    .line 343
    .line 344
    iget v1, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 345
    .line 346
    cmpl-float v1, v8, v1

    .line 347
    .line 348
    if-eqz v1, :cond_f

    .line 349
    .line 350
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    int-to-float v1, v1

    .line 355
    add-float/2addr v1, v8

    .line 356
    goto :goto_9

    .line 357
    :cond_f
    :goto_8
    sub-float v1, v8, v12

    .line 358
    .line 359
    :cond_10
    :goto_9
    invoke-virtual {v7, v10, v1, v14}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    instance-of v2, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 368
    .line 369
    if-eqz v2, :cond_1a

    .line 370
    .line 371
    move-object v2, v10

    .line 372
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 373
    .line 374
    add-float v4, v13, v0

    .line 375
    .line 376
    const/4 v5, 0x0

    .line 377
    invoke-virtual {v2, v5, v5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor(ZZ)I

    .line 378
    .line 379
    .line 380
    move-result v6

    .line 381
    cmpl-float v9, v23, v8

    .line 382
    .line 383
    if-ltz v9, :cond_12

    .line 384
    .line 385
    iget v9, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 386
    .line 387
    const/4 v12, -0x1

    .line 388
    if-ne v9, v12, :cond_12

    .line 389
    .line 390
    iput v14, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 391
    .line 392
    iget v9, v7, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    .line 393
    .line 394
    move/from16 v12, v21

    .line 395
    .line 396
    if-eq v12, v9, :cond_11

    .line 397
    .line 398
    iput v12, v7, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    .line 399
    .line 400
    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint(Z)V

    .line 401
    .line 402
    .line 403
    :cond_11
    move/from16 v9, v20

    .line 404
    .line 405
    move/from16 v5, v27

    .line 406
    .line 407
    invoke-virtual {v7, v9, v5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(FI)V

    .line 408
    .line 409
    .line 410
    goto :goto_a

    .line 411
    :cond_12
    move/from16 v9, v20

    .line 412
    .line 413
    move/from16 v12, v21

    .line 414
    .line 415
    move/from16 v5, v27

    .line 416
    .line 417
    iget v13, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 418
    .line 419
    const/4 v15, -0x1

    .line 420
    if-ne v13, v15, :cond_13

    .line 421
    .line 422
    move v9, v0

    .line 423
    move v5, v12

    .line 424
    :cond_13
    :goto_a
    if-eqz v22, :cond_17

    .line 425
    .line 426
    iget-boolean v12, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 427
    .line 428
    if-eqz v12, :cond_15

    .line 429
    .line 430
    iget-boolean v12, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mCanModifyColorOfNotifications:Z

    .line 431
    .line 432
    if-eqz v12, :cond_14

    .line 433
    .line 434
    iget-object v12, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 435
    .line 436
    iget-boolean v12, v12, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 437
    .line 438
    if-eqz v12, :cond_14

    .line 439
    .line 440
    const/4 v12, 0x1

    .line 441
    goto :goto_b

    .line 442
    :cond_14
    const/4 v12, 0x0

    .line 443
    goto :goto_b

    .line 444
    :cond_15
    iget-object v12, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mController:Lcom/android/systemui/statusbar/NotificationShelfController;

    .line 445
    .line 446
    invoke-interface {v12}, Lcom/android/systemui/statusbar/NotificationShelfController;->canModifyColorOfNotifications()Z

    .line 447
    .line 448
    .line 449
    move-result v12

    .line 450
    :goto_b
    if-eqz v12, :cond_17

    .line 451
    .line 452
    if-nez v18, :cond_16

    .line 453
    .line 454
    move v12, v6

    .line 455
    goto :goto_c

    .line 456
    :cond_16
    move/from16 v12, v18

    .line 457
    .line 458
    :goto_c
    invoke-virtual {v2, v0, v12}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(FI)V

    .line 459
    .line 460
    .line 461
    move/from16 v18, v12

    .line 462
    .line 463
    const/4 v12, 0x0

    .line 464
    goto :goto_d

    .line 465
    :cond_17
    const/4 v0, 0x0

    .line 466
    const/4 v12, 0x0

    .line 467
    invoke-virtual {v2, v0, v12}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(FI)V

    .line 468
    .line 469
    .line 470
    move/from16 v18, v6

    .line 471
    .line 472
    :goto_d
    if-nez v14, :cond_18

    .line 473
    .line 474
    if-nez v11, :cond_19

    .line 475
    .line 476
    :cond_18
    invoke-virtual {v2, v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAboveShelf(Z)V

    .line 477
    .line 478
    .line 479
    :cond_19
    add-int/lit8 v0, v14, 0x1

    .line 480
    .line 481
    move v14, v0

    .line 482
    move v15, v6

    .line 483
    move v0, v9

    .line 484
    goto :goto_e

    .line 485
    :cond_1a
    move/from16 v9, v20

    .line 486
    .line 487
    move/from16 v12, v21

    .line 488
    .line 489
    move/from16 v5, v27

    .line 490
    .line 491
    move v0, v9

    .line 492
    move v15, v12

    .line 493
    move v4, v13

    .line 494
    :goto_e
    if-eqz v26, :cond_23

    .line 495
    .line 496
    move-object v2, v10

    .line 497
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 498
    .line 499
    iget-boolean v6, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mSensitiveRevealAnimEndabled:Z

    .line 500
    .line 501
    if-nez v6, :cond_1b

    .line 502
    .line 503
    iget-object v6, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 504
    .line 505
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 506
    .line 507
    .line 508
    move-result v6

    .line 509
    if-eqz v6, :cond_1b

    .line 510
    .line 511
    goto :goto_f

    .line 512
    :cond_1b
    move v1, v8

    .line 513
    :goto_f
    iget-object v6, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 514
    .line 515
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 516
    .line 517
    .line 518
    move-result v6

    .line 519
    if-nez v6, :cond_1c

    .line 520
    .line 521
    iget-object v6, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 522
    .line 523
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 524
    .line 525
    if-nez v6, :cond_1c

    .line 526
    .line 527
    instance-of v6, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 528
    .line 529
    if-eqz v6, :cond_1c

    .line 530
    .line 531
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isHeadsUp()Z

    .line 532
    .line 533
    .line 534
    move-result v6

    .line 535
    if-eqz v6, :cond_1c

    .line 536
    .line 537
    const/4 v6, 0x1

    .line 538
    goto :goto_10

    .line 539
    :cond_1c
    const/4 v6, 0x0

    .line 540
    :goto_10
    iget-object v9, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 541
    .line 542
    iget-boolean v10, v9, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 543
    .line 544
    if-eqz v10, :cond_1d

    .line 545
    .line 546
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 547
    .line 548
    .line 549
    move-result-object v9

    .line 550
    if-ne v2, v9, :cond_1d

    .line 551
    .line 552
    const/4 v9, 0x1

    .line 553
    goto :goto_11

    .line 554
    :cond_1d
    const/4 v9, 0x0

    .line 555
    :goto_11
    cmpg-float v10, v23, v1

    .line 556
    .line 557
    if-gez v10, :cond_1f

    .line 558
    .line 559
    iget-boolean v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 560
    .line 561
    if-nez v10, :cond_1e

    .line 562
    .line 563
    iget-object v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 564
    .line 565
    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    .line 566
    .line 567
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    if-nez v6, :cond_1f

    .line 571
    .line 572
    if-nez v9, :cond_1f

    .line 573
    .line 574
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isAboveShelf()Z

    .line 575
    .line 576
    .line 577
    move-result v6

    .line 578
    if-nez v6, :cond_1f

    .line 579
    .line 580
    iget-object v6, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 581
    .line 582
    iget-boolean v9, v6, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsing:Z

    .line 583
    .line 584
    if-nez v9, :cond_1f

    .line 585
    .line 586
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    .line 587
    .line 588
    if-nez v6, :cond_1f

    .line 589
    .line 590
    const/4 v6, 0x1

    .line 591
    goto :goto_12

    .line 592
    :cond_1e
    throw v16

    .line 593
    :cond_1f
    const/4 v6, 0x0

    .line 594
    :goto_12
    if-nez v6, :cond_20

    .line 595
    .line 596
    const/4 v11, 0x0

    .line 597
    goto :goto_13

    .line 598
    :cond_20
    iget v6, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    .line 599
    .line 600
    int-to-float v6, v6

    .line 601
    add-float v6, v6, v23

    .line 602
    .line 603
    iget v9, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mCornerAnimationDistance:F

    .line 604
    .line 605
    iget-object v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 606
    .line 607
    iget v10, v10, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    .line 608
    .line 609
    mul-float/2addr v9, v10

    .line 610
    sub-float/2addr v1, v9

    .line 611
    cmpl-float v10, v23, v1

    .line 612
    .line 613
    if-ltz v10, :cond_21

    .line 614
    .line 615
    sub-float v23, v23, v1

    .line 616
    .line 617
    div-float v23, v23, v9

    .line 618
    .line 619
    invoke-static/range {v23 .. v23}, Landroid/util/MathUtils;->saturate(F)F

    .line 620
    .line 621
    .line 622
    :cond_21
    sget-object v10, Lcom/android/systemui/statusbar/NotificationShelf;->SHELF_SCROLL:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 623
    .line 624
    const/4 v11, 0x0

    .line 625
    const/4 v12, 0x0

    .line 626
    invoke-interface {v2, v12, v10, v11}, Lcom/android/systemui/statusbar/notification/Roundable;->requestTopRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 627
    .line 628
    .line 629
    cmpl-float v13, v6, v1

    .line 630
    .line 631
    if-ltz v13, :cond_22

    .line 632
    .line 633
    sub-float/2addr v6, v1

    .line 634
    div-float/2addr v6, v9

    .line 635
    invoke-static {v6}, Landroid/util/MathUtils;->saturate(F)F

    .line 636
    .line 637
    .line 638
    :cond_22
    invoke-interface {v2, v12, v10, v11}, Lcom/android/systemui/statusbar/notification/Roundable;->requestBottomRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 639
    .line 640
    .line 641
    :goto_13
    move v1, v5

    .line 642
    move v5, v14

    .line 643
    goto :goto_15

    .line 644
    :cond_23
    const/4 v11, 0x0

    .line 645
    move v1, v5

    .line 646
    move v5, v14

    .line 647
    move-object/from16 v2, v28

    .line 648
    .line 649
    goto :goto_15

    .line 650
    :cond_24
    :goto_14
    move-object/from16 v28, v2

    .line 651
    .line 652
    move/from16 v31, v6

    .line 653
    .line 654
    move-object/from16 v24, v9

    .line 655
    .line 656
    move/from16 v29, v13

    .line 657
    .line 658
    move/from16 v30, v14

    .line 659
    .line 660
    move v12, v15

    .line 661
    const/4 v11, 0x0

    .line 662
    move v9, v0

    .line 663
    move v15, v3

    .line 664
    move v13, v4

    .line 665
    move v14, v5

    .line 666
    move v5, v1

    .line 667
    move v1, v5

    .line 668
    move v0, v9

    .line 669
    move v4, v13

    .line 670
    move v5, v14

    .line 671
    move v3, v15

    .line 672
    move-object/from16 v2, v28

    .line 673
    .line 674
    move v15, v12

    .line 675
    :goto_15
    add-int/lit8 v6, v31, 0x1

    .line 676
    .line 677
    move-object/from16 v9, v24

    .line 678
    .line 679
    move/from16 v13, v29

    .line 680
    .line 681
    move/from16 v14, v30

    .line 682
    .line 683
    const/4 v10, -0x1

    .line 684
    goto/16 :goto_3

    .line 685
    .line 686
    :cond_25
    throw v16

    .line 687
    :cond_26
    move-object/from16 v28, v2

    .line 688
    .line 689
    move v15, v3

    .line 690
    move v13, v4

    .line 691
    move v14, v5

    .line 692
    const/4 v0, 0x0

    .line 693
    move v1, v0

    .line 694
    :goto_16
    iget-boolean v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 695
    .line 696
    if-nez v2, :cond_43

    .line 697
    .line 698
    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 699
    .line 700
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 701
    .line 702
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTransientViewCount()I

    .line 703
    .line 704
    .line 705
    move-result v2

    .line 706
    if-ge v1, v2, :cond_29

    .line 707
    .line 708
    iget-boolean v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 709
    .line 710
    if-nez v2, :cond_28

    .line 711
    .line 712
    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 713
    .line 714
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 715
    .line 716
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getTransientView(I)Landroid/view/View;

    .line 717
    .line 718
    .line 719
    move-result-object v2

    .line 720
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 721
    .line 722
    if-eqz v3, :cond_27

    .line 723
    .line 724
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 725
    .line 726
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 727
    .line 728
    .line 729
    move-result v3

    .line 730
    const/4 v4, -0x1

    .line 731
    invoke-virtual {v7, v2, v3, v4}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I

    .line 732
    .line 733
    .line 734
    :cond_27
    add-int/lit8 v1, v1, 0x1

    .line 735
    .line 736
    goto :goto_16

    .line 737
    :cond_28
    throw v16

    .line 738
    :cond_29
    invoke-virtual {v7, v15}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setClipTopAmount(I)V

    .line 739
    .line 740
    .line 741
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 742
    .line 743
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 744
    .line 745
    if-nez v1, :cond_2c

    .line 746
    .line 747
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 748
    .line 749
    .line 750
    move-result v1

    .line 751
    if-ge v15, v1, :cond_2c

    .line 752
    .line 753
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    .line 754
    .line 755
    if-eqz v1, :cond_2c

    .line 756
    .line 757
    const/high16 v1, 0x3f800000    # 1.0f

    .line 758
    .line 759
    cmpg-float v2, v13, v1

    .line 760
    .line 761
    if-gez v2, :cond_2a

    .line 762
    .line 763
    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 764
    .line 765
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 766
    .line 767
    .line 768
    move-result v2

    .line 769
    if-nez v2, :cond_2c

    .line 770
    .line 771
    :cond_2a
    cmpl-float v1, v13, v1

    .line 772
    .line 773
    if-nez v1, :cond_2b

    .line 774
    .line 775
    move-object/from16 v2, v28

    .line 776
    .line 777
    if-eqz v2, :cond_2b

    .line 778
    .line 779
    iget-boolean v1, v2, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    .line 780
    .line 781
    if-eqz v1, :cond_2b

    .line 782
    .line 783
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 784
    .line 785
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 786
    .line 787
    .line 788
    move-result v1

    .line 789
    if-eqz v1, :cond_2b

    .line 790
    .line 791
    goto :goto_17

    .line 792
    :cond_2b
    move v1, v0

    .line 793
    goto :goto_18

    .line 794
    :cond_2c
    :goto_17
    const/4 v1, 0x1

    .line 795
    :goto_18
    sget-object v2, Lcom/android/app/animation/Interpolators;->STANDARD:Landroid/view/animation/Interpolator;

    .line 796
    .line 797
    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 798
    .line 799
    iget v3, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    .line 800
    .line 801
    check-cast v2, Landroid/view/animation/PathInterpolator;

    .line 802
    .line 803
    invoke-virtual {v2, v3}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 804
    .line 805
    .line 806
    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 807
    .line 808
    const/4 v3, 0x0

    .line 809
    cmpl-float v3, v13, v3

    .line 810
    .line 811
    if-nez v3, :cond_2d

    .line 812
    .line 813
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 814
    .line 815
    .line 816
    goto :goto_19

    .line 817
    :cond_2d
    iget v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 818
    .line 819
    iget v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxIconsOnLockscreen:I

    .line 820
    .line 821
    const/4 v4, 0x1

    .line 822
    add-int/2addr v3, v4

    .line 823
    int-to-float v3, v3

    .line 824
    invoke-static {v13, v3}, Landroid/util/MathUtils;->min(FF)F

    .line 825
    .line 826
    .line 827
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    .line 828
    .line 829
    .line 830
    iget v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    .line 831
    .line 832
    const/high16 v4, -0x31000000

    .line 833
    .line 834
    cmpl-float v3, v3, v4

    .line 835
    .line 836
    if-nez v3, :cond_2e

    .line 837
    .line 838
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    .line 839
    .line 840
    .line 841
    :cond_2e
    :goto_19
    if-eqz v1, :cond_2f

    .line 842
    .line 843
    const/4 v2, 0x4

    .line 844
    goto :goto_1a

    .line 845
    :cond_2f
    move v2, v0

    .line 846
    :goto_1a
    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 847
    .line 848
    .line 849
    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 850
    .line 851
    iget-boolean v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 852
    .line 853
    if-nez v3, :cond_42

    .line 854
    .line 855
    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 856
    .line 857
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 858
    .line 859
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getSpeedBumpIndex()I

    .line 860
    .line 861
    .line 862
    move-result v3

    .line 863
    iput v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    .line 864
    .line 865
    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 866
    .line 867
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->calculateIconXTranslations()V

    .line 868
    .line 869
    .line 870
    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 871
    .line 872
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    .line 873
    .line 874
    .line 875
    move v2, v0

    .line 876
    :goto_1b
    iget-boolean v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 877
    .line 878
    if-nez v3, :cond_41

    .line 879
    .line 880
    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 881
    .line 882
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 883
    .line 884
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 885
    .line 886
    .line 887
    move-result v3

    .line 888
    if-ge v2, v3, :cond_36

    .line 889
    .line 890
    iget-boolean v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 891
    .line 892
    if-nez v3, :cond_35

    .line 893
    .line 894
    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 895
    .line 896
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 897
    .line 898
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 899
    .line 900
    .line 901
    move-result-object v3

    .line 902
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 903
    .line 904
    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 905
    .line 906
    if-eqz v4, :cond_34

    .line 907
    .line 908
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 909
    .line 910
    .line 911
    move-result v4

    .line 912
    if-ne v4, v11, :cond_30

    .line 913
    .line 914
    goto :goto_1f

    .line 915
    :cond_30
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 916
    .line 917
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 918
    .line 919
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 920
    .line 921
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mShelfIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 922
    .line 923
    sget v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    .line 924
    .line 925
    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v5

    .line 929
    if-eqz v5, :cond_31

    .line 930
    .line 931
    const/4 v5, 0x1

    .line 932
    goto :goto_1c

    .line 933
    :cond_31
    move v5, v0

    .line 934
    :goto_1c
    if-eqz v5, :cond_32

    .line 935
    .line 936
    iget-object v5, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 937
    .line 938
    iget-boolean v5, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    .line 939
    .line 940
    if-nez v5, :cond_32

    .line 941
    .line 942
    const/4 v5, 0x1

    .line 943
    goto :goto_1d

    .line 944
    :cond_32
    move v5, v0

    .line 945
    :goto_1d
    const v6, 0x7f0a02a2

    .line 946
    .line 947
    .line 948
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v8

    .line 952
    if-eqz v8, :cond_33

    .line 953
    .line 954
    const/4 v8, 0x1

    .line 955
    goto :goto_1e

    .line 956
    :cond_33
    move v8, v0

    .line 957
    :goto_1e
    if-eqz v5, :cond_34

    .line 958
    .line 959
    if-nez v8, :cond_34

    .line 960
    .line 961
    invoke-virtual {v4}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 962
    .line 963
    .line 964
    move-result-object v5

    .line 965
    new-instance v8, Lcom/android/systemui/statusbar/NotificationShelf$1;

    .line 966
    .line 967
    invoke-direct {v8, v7, v4, v5, v3}, Lcom/android/systemui/statusbar/NotificationShelf$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {v5, v8}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 971
    .line 972
    .line 973
    new-instance v3, Lcom/android/systemui/statusbar/NotificationShelf$2;

    .line 974
    .line 975
    invoke-direct {v3, v7, v4, v5, v8}, Lcom/android/systemui/statusbar/NotificationShelf$2;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 976
    .line 977
    .line 978
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 979
    .line 980
    .line 981
    invoke-virtual {v4, v6, v8}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 982
    .line 983
    .line 984
    :cond_34
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    .line 985
    .line 986
    goto :goto_1b

    .line 987
    :cond_35
    throw v16

    .line 988
    :cond_36
    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 989
    .line 990
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 991
    .line 992
    .line 993
    move-result v2

    .line 994
    if-eqz v2, :cond_37

    .line 995
    .line 996
    const/4 v2, 0x1

    .line 997
    if-ne v1, v2, :cond_38

    .line 998
    .line 999
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1000
    .line 1001
    check-cast v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 1002
    .line 1003
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    .line 1004
    .line 1005
    goto :goto_20

    .line 1006
    :cond_37
    const/4 v2, 0x1

    .line 1007
    :cond_38
    :goto_20
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 1008
    .line 1009
    if-eq v1, v2, :cond_3b

    .line 1010
    .line 1011
    iput-boolean v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 1012
    .line 1013
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    .line 1014
    .line 1015
    .line 1016
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    .line 1017
    .line 1018
    if-eqz v1, :cond_39

    .line 1019
    .line 1020
    goto :goto_22

    .line 1021
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->needsOutline()Z

    .line 1022
    .line 1023
    .line 1024
    move-result v1

    .line 1025
    if-eqz v1, :cond_3a

    .line 1026
    .line 1027
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mProvider:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;

    .line 1028
    .line 1029
    goto :goto_21

    .line 1030
    :cond_3a
    move-object/from16 v1, v16

    .line 1031
    .line 1032
    :goto_21
    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1033
    .line 1034
    .line 1035
    :cond_3b
    :goto_22
    iget v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 1036
    .line 1037
    const/4 v3, -0x1

    .line 1038
    if-ne v1, v3, :cond_3c

    .line 1039
    .line 1040
    iput v14, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 1041
    .line 1042
    :cond_3c
    const-class v1, Lcom/android/systemui/ShelfToolTipManager;

    .line 1043
    .line 1044
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v1

    .line 1048
    check-cast v1, Lcom/android/systemui/ShelfToolTipManager;

    .line 1049
    .line 1050
    iget-object v3, v1, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    .line 1051
    .line 1052
    if-eqz v3, :cond_40

    .line 1053
    .line 1054
    iget-object v3, v1, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingContainer:Landroid/widget/LinearLayout;

    .line 1055
    .line 1056
    if-eqz v3, :cond_40

    .line 1057
    .line 1058
    invoke-virtual {v1}, Lcom/android/systemui/ShelfToolTipManager;->hasBottomClippedNotiRow()Z

    .line 1059
    .line 1060
    .line 1061
    move-result v3

    .line 1062
    if-nez v3, :cond_40

    .line 1063
    .line 1064
    iget-object v3, v1, Lcom/android/systemui/ShelfToolTipManager;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1065
    .line 1066
    if-nez v3, :cond_3d

    .line 1067
    .line 1068
    goto :goto_23

    .line 1069
    :cond_3d
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 1070
    .line 1071
    .line 1072
    move-result v4

    .line 1073
    float-to-int v4, v4

    .line 1074
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    .line 1075
    .line 1076
    .line 1077
    move-result v3

    .line 1078
    add-int/2addr v3, v4

    .line 1079
    add-int/lit8 v3, v3, 0x32

    .line 1080
    .line 1081
    iget-object v4, v1, Lcom/android/systemui/ShelfToolTipManager;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 1082
    .line 1083
    iget v4, v4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutMaxHeight:I

    .line 1084
    .line 1085
    if-le v3, v4, :cond_3e

    .line 1086
    .line 1087
    move v11, v2

    .line 1088
    goto :goto_24

    .line 1089
    :cond_3e
    :goto_23
    move v11, v0

    .line 1090
    :goto_24
    if-nez v11, :cond_3f

    .line 1091
    .line 1092
    invoke-virtual {v1}, Lcom/android/systemui/ShelfToolTipManager;->releaseToolTip()V

    .line 1093
    .line 1094
    .line 1095
    goto :goto_25

    .line 1096
    :cond_3f
    invoke-virtual {v1}, Lcom/android/systemui/ShelfToolTipManager;->calculatePosition()V

    .line 1097
    .line 1098
    .line 1099
    iget-object v0, v1, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    .line 1100
    .line 1101
    if-eqz v0, :cond_40

    .line 1102
    .line 1103
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->update()V

    .line 1104
    .line 1105
    .line 1106
    :cond_40
    :goto_25
    return-void

    .line 1107
    :cond_41
    throw v16

    .line 1108
    :cond_42
    throw v16

    .line 1109
    :cond_43
    throw v16

    .line 1110
    :cond_44
    throw v16
.end method

.method public final updateIconsPaddingEnd()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextArea:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget v0, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mIconContainerPaddingEnd:I

    .line 32
    .line 33
    add-int/2addr v1, v0

    .line 34
    int-to-float v0, v1

    .line 35
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final updateInteractiveness()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCanInteract:Z

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    .line 11
    .line 12
    if-ne v0, v2, :cond_1

    .line 13
    .line 14
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move v0, v1

    .line 17
    :goto_0
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    move v1, v2

    .line 24
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    .line 35
    .line 36
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 39
    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    .line 6
    .line 7
    int-to-float v1, v1

    .line 8
    add-float/2addr v0, v1

    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    move v1, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v1, v3

    .line 34
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    if-nez p3, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v2, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    :goto_1
    if-eqz v1, :cond_4

    .line 52
    .line 53
    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 54
    .line 55
    iget-boolean p3, p3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 56
    .line 57
    if-eqz p3, :cond_7

    .line 58
    .line 59
    :cond_4
    cmpl-float p3, v0, p2

    .line 60
    .line 61
    if-lez p3, :cond_6

    .line 62
    .line 63
    if-nez v2, :cond_6

    .line 64
    .line 65
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mEnableNotificationClipping:Z

    .line 66
    .line 67
    if-eqz p3, :cond_5

    .line 68
    .line 69
    sub-float p2, v0, p2

    .line 70
    .line 71
    float-to-int p2, p2

    .line 72
    goto :goto_2

    .line 73
    :cond_5
    move p2, v3

    .line 74
    :goto_2
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_6
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    .line 79
    .line 80
    .line 81
    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    sub-float/2addr v0, p0

    .line 88
    float-to-int p0, v0

    .line 89
    return p0

    .line 90
    :cond_8
    return v3
.end method

.method public final updateResources()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    iget v2, v2, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarState:I

    .line 20
    .line 21
    if-eq v2, v3, :cond_1

    .line 22
    .line 23
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const v2, 0x7f070e50

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const v2, 0x7f070e4f

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const v2, 0x7f070a31

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const v2, 0x7f070a30

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 47
    .line 48
    if-eq v2, v4, :cond_3

    .line 49
    .line 50
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    const v1, 0x7f070d48

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    .line 63
    .line 64
    const v1, 0x7f05003a

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    .line 72
    .line 73
    const v1, 0x7f0709cb

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    int-to-float v1, v1

    .line 81
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCornerAnimationDistance:F

    .line 82
    .line 83
    const v1, 0x7f050068

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mEnableNotificationClipping:Z

    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 93
    .line 94
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInNotificationIconShelf:Z

    .line 95
    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    .line 97
    .line 98
    if-nez v0, :cond_4

    .line 99
    .line 100
    const/16 v0, 0x8

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 106
    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const v2, 0x7f070a32

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    iput v1, v0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mIconContainerPaddingEnd:I

    .line 123
    .line 124
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconsPaddingEnd()V

    .line 125
    .line 126
    .line 127
    return-void
.end method
