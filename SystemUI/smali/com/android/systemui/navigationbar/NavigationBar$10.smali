.class public final Lcom/android/systemui/navigationbar/NavigationBar$10;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$10;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getSampledRegion()Landroid/graphics/Rect;
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$10;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSamplingBounds:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 11
    .line 12
    .line 13
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavColorSampleMargin:I

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v1, :cond_6

    .line 20
    .line 21
    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    .line 22
    .line 23
    invoke-static {v1}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 30
    .line 31
    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHintView()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v1, v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 41
    .line 42
    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v1, v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 49
    .line 50
    :goto_0
    if-eqz v1, :cond_8

    .line 51
    .line 52
    new-array v2, v2, [I

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 55
    .line 56
    .line 57
    new-instance v5, Landroid/graphics/Point;

    .line 58
    .line 59
    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v7, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    const v8, 0x7f070d0f

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    iget-object v8, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 83
    .line 84
    iget-object v8, v8, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 85
    .line 86
    iget-boolean v8, v8, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 87
    .line 88
    aget v9, v2, v4

    .line 89
    .line 90
    const/4 v10, 0x1

    .line 91
    aget v2, v2, v10

    .line 92
    .line 93
    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v8, :cond_2

    .line 110
    .line 111
    new-instance v1, Landroid/graphics/Rect;

    .line 112
    .line 113
    sub-int v2, v9, v3

    .line 114
    .line 115
    iget v4, v5, Landroid/graphics/Point;->y:I

    .line 116
    .line 117
    sub-int v5, v4, v7

    .line 118
    .line 119
    add-int/2addr v9, v11

    .line 120
    add-int/2addr v9, v3

    .line 121
    invoke-direct {v1, v2, v5, v9, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_2
    if-ne v6, v10, :cond_3

    .line 126
    .line 127
    iget v4, v5, Landroid/graphics/Point;->x:I

    .line 128
    .line 129
    sub-int v5, v4, v7

    .line 130
    .line 131
    sub-int v6, v2, v3

    .line 132
    .line 133
    add-int/2addr v2, v1

    .line 134
    add-int/2addr v2, v3

    .line 135
    move v7, v4

    .line 136
    move v4, v5

    .line 137
    goto :goto_1

    .line 138
    :cond_3
    const/4 v8, 0x3

    .line 139
    if-ne v6, v8, :cond_4

    .line 140
    .line 141
    sub-int v6, v2, v3

    .line 142
    .line 143
    add-int/2addr v2, v1

    .line 144
    add-int/2addr v2, v3

    .line 145
    goto :goto_1

    .line 146
    :cond_4
    iget v2, v5, Landroid/graphics/Point;->y:I

    .line 147
    .line 148
    sub-int v6, v2, v7

    .line 149
    .line 150
    sub-int v4, v9, v3

    .line 151
    .line 152
    add-int/2addr v9, v11

    .line 153
    add-int v7, v9, v3

    .line 154
    .line 155
    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    .line 156
    .line 157
    invoke-direct {v1, v4, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 158
    .line 159
    .line 160
    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-nez v2, :cond_5

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 167
    .line 168
    .line 169
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOneHandModeUtil:Lcom/android/systemui/navigationbar/util/OneHandModeUtil;

    .line 170
    .line 171
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->getRegionSamplingBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 180
    .line 181
    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 182
    .line 183
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    iget-object v1, v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 188
    .line 189
    if-eqz v1, :cond_8

    .line 190
    .line 191
    new-array v2, v2, [I

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 194
    .line 195
    .line 196
    new-instance v5, Landroid/graphics/Point;

    .line 197
    .line 198
    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-virtual {v6, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 210
    .line 211
    .line 212
    new-instance v6, Landroid/graphics/Rect;

    .line 213
    .line 214
    aget v7, v2, v4

    .line 215
    .line 216
    sub-int/2addr v7, v3

    .line 217
    iget v8, v5, Landroid/graphics/Point;->y:I

    .line 218
    .line 219
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 220
    .line 221
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 222
    .line 223
    iget-boolean v9, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 224
    .line 225
    if-eqz v9, :cond_7

    .line 226
    .line 227
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    const v9, 0x105025c

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 235
    .line 236
    .line 237
    move-result p0

    .line 238
    goto :goto_3

    .line 239
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    const v9, 0x105025a

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 247
    .line 248
    .line 249
    move-result p0

    .line 250
    :goto_3
    sub-int/2addr v8, p0

    .line 251
    aget p0, v2, v4

    .line 252
    .line 253
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    add-int/2addr v1, p0

    .line 258
    add-int/2addr v1, v3

    .line 259
    iget p0, v5, Landroid/graphics/Point;->y:I

    .line 260
    .line 261
    invoke-direct {v6, v7, v8, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 265
    .line 266
    .line 267
    :cond_8
    :goto_4
    return-object v0
.end method

.method public final isSamplingEnabled()Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_POLICY_VISIBILITY:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$10;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isTaskBarEnabled(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 22
    .line 23
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    .line 24
    .line 25
    invoke-static {v0, v3, p0}, Lcom/android/systemui/util/Utils;->isGesturalModeOnDefaultDisplay(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;I)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v2

    .line 33
    :goto_0
    return v1

    .line 34
    :cond_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-ne v0, v1, :cond_2

    .line 45
    .line 46
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    .line 47
    .line 48
    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 56
    .line 57
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    .line 58
    .line 59
    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/Utils;->isGesturalModeOnDefaultDisplay(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;I)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    return p0
.end method

.method public final onRegionDarknessChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$10;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    xor-int/2addr p1, v0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onUpdateSamplingListener(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$10;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 4
    .line 5
    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRegionSamplingListener;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRegionSamplingListener;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 11
    .line 12
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
