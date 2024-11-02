.class public abstract Lcom/google/android/material/navigation/NavigationBarMenuView;
.super Landroid/view/ViewGroup;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView;


# static fields
.field public static final CHECKED_STATE_SET:[I

.field public static final DISABLED_STATE_SET:[I


# instance fields
.field public final badgeDrawables:Landroid/util/SparseArray;

.field public buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

.field public itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

.field public itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public itemBackgroundRes:I

.field public itemIconSize:I

.field public itemIconTint:Landroid/content/res/ColorStateList;

.field public final itemPool:Landroidx/core/util/Pools$SynchronizedPool;

.field public itemTextAppearanceActive:I

.field public itemTextAppearanceInactive:I

.field public final itemTextColorDefault:Landroid/content/res/ColorStateList;

.field public itemTextColorFromUser:Landroid/content/res/ColorStateList;

.field public labelVisibilityMode:I

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mDummyMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public mHasOverflowMenu:Z

.field public mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

.field public mMaxItemCount:I

.field public mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

.field public mOverflowMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public mSBBTextColorDrawable:Landroid/graphics/drawable/ColorDrawable;

.field public mSelectedCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field public mSeslLabelTextAppearance:I

.field public mUseItemPool:Z

.field public mViewType:I

.field public mViewVisibleItemCount:I

.field public mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

.field public mVisibleItemCount:I

.field public menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public final onClickListener:Lcom/google/android/material/navigation/NavigationBarMenuView$1;

.field public presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

.field public selectedItemId:I

.field public selectedItemPosition:I

.field public final set:Landroidx/transition/AutoTransition;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 2
    .line 3
    const v0, 0x10100a0

    .line 4
    .line 5
    .line 6
    filled-new-array {v0}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->CHECKED_STATE_SET:[I

    .line 11
    .line 12
    const v0, -0x101009e

    .line 13
    .line 14
    .line 15
    filled-new-array {v0}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->DISABLED_STATE_SET:[I

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$SynchronizedPool;

    .line 11
    .line 12
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 21
    .line 22
    new-instance v2, Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewType:I

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 34
    .line 35
    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 36
    .line 37
    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mHasOverflowMenu:Z

    .line 40
    .line 41
    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 42
    .line 43
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    .line 44
    .line 45
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    .line 46
    .line 47
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mMaxItemCount:I

    .line 48
    .line 49
    iput-boolean v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mUseItemPool:Z

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createDefaultColorStateList()Landroid/content/res/ColorStateList;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iput-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_0

    .line 62
    .line 63
    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->set:Landroidx/transition/AutoTransition;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance v2, Landroidx/transition/AutoTransition;

    .line 67
    .line 68
    invoke-direct {v2}, Landroidx/transition/AutoTransition;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->set:Landroidx/transition/AutoTransition;

    .line 72
    .line 73
    invoke-virtual {v2, v0}, Landroidx/transition/TransitionSet;->setOrdering(I)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v3, 0x0

    .line 77
    .line 78
    invoke-virtual {v2, v3, v4}, Landroidx/transition/TransitionSet;->setDuration$1(J)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/google/android/material/internal/TextScale;

    .line 82
    .line 83
    invoke-direct {v0}, Lcom/google/android/material/internal/TextScale;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v0}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    new-instance v0, Lcom/google/android/material/navigation/NavigationBarMenuView$1;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Lcom/google/android/material/navigation/NavigationBarMenuView$1;-><init>(Lcom/google/android/material/navigation/NavigationBarMenuView;)V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onClickListener:Lcom/google/android/material/navigation/NavigationBarMenuView$1;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mContentResolver:Landroid/content/ContentResolver;

    .line 101
    .line 102
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 103
    .line 104
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 105
    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public final buildMenuView()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->set:Landroidx/transition/AutoTransition;

    .line 5
    .line 6
    invoke-static {v0, p0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroidx/transition/Transition;Landroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v0, :cond_6

    .line 15
    .line 16
    iget-boolean v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mUseItemPool:Z

    .line 17
    .line 18
    if-eqz v4, :cond_6

    .line 19
    .line 20
    array-length v4, v0

    .line 21
    move v5, v3

    .line 22
    :goto_0
    if-ge v5, v4, :cond_6

    .line 23
    .line 24
    aget-object v6, v0, v5

    .line 25
    .line 26
    if-eqz v6, :cond_5

    .line 27
    .line 28
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    invoke-virtual {p0, v7}, Lcom/google/android/material/navigation/NavigationBarMenuView;->seslRemoveBadge(I)V

    .line 33
    .line 34
    .line 35
    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$SynchronizedPool;

    .line 36
    .line 37
    invoke-virtual {v7, v6}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object v7, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    .line 41
    .line 42
    iget-object v8, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 43
    .line 44
    if-eqz v8, :cond_0

    .line 45
    .line 46
    move v8, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    move v8, v3

    .line 49
    :goto_1
    if-nez v8, :cond_1

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_1
    if-eqz v7, :cond_4

    .line 53
    .line 54
    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 58
    .line 59
    .line 60
    iget-object v8, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 61
    .line 62
    if-nez v8, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v8}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    if-eqz v9, :cond_3

    .line 70
    .line 71
    invoke-virtual {v8}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v7, v8}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    :goto_2
    iput-object v2, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 87
    .line 88
    :goto_3
    iput-object v2, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 89
    .line 90
    const/4 v7, 0x0

    .line 91
    iput v7, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorProgress:F

    .line 92
    .line 93
    iput-boolean v3, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->initialized:Z

    .line 94
    .line 95
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 99
    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    const v0, 0x7f0a0178

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->seslRemoveBadge(I)V

    .line 106
    .line 107
    .line 108
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_8

    .line 115
    .line 116
    iput v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 117
    .line 118
    iput v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 119
    .line 120
    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 121
    .line 122
    iput v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    .line 123
    .line 124
    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 125
    .line 126
    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 127
    .line 128
    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 129
    .line 130
    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 131
    .line 132
    return-void

    .line 133
    :cond_8
    new-instance v4, Ljava/util/HashSet;

    .line 134
    .line 135
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 136
    .line 137
    .line 138
    move v5, v3

    .line 139
    :goto_4
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 140
    .line 141
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-ge v5, v6, :cond_9

    .line 146
    .line 147
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 148
    .line 149
    invoke-virtual {v6, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    add-int/lit8 v5, v5, 0x1

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_9
    move v5, v3

    .line 168
    :goto_5
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 169
    .line 170
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-ge v5, v6, :cond_b

    .line 175
    .line 176
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 177
    .line 178
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    if-nez v7, :cond_a

    .line 191
    .line 192
    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 193
    .line 194
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->delete(I)V

    .line 195
    .line 196
    .line 197
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_b
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 201
    .line 202
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 203
    .line 204
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 209
    .line 210
    .line 211
    if-nez v4, :cond_c

    .line 212
    .line 213
    move v4, v1

    .line 214
    goto :goto_6

    .line 215
    :cond_c
    move v4, v3

    .line 216
    :goto_6
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 217
    .line 218
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    new-array v5, v5, [Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 223
    .line 224
    iput-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 225
    .line 226
    new-instance v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 227
    .line 228
    invoke-direct {v5, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;-><init>(I)V

    .line 229
    .line 230
    .line 231
    iput-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 232
    .line 233
    new-instance v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 234
    .line 235
    invoke-direct {v5, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;-><init>(I)V

    .line 236
    .line 237
    .line 238
    iput-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 239
    .line 240
    new-instance v5, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 241
    .line 242
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-direct {v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 247
    .line 248
    .line 249
    iput-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 250
    .line 251
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 252
    .line 253
    iput v3, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 254
    .line 255
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 256
    .line 257
    iput v3, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 258
    .line 259
    move v5, v3

    .line 260
    move v6, v5

    .line 261
    move v7, v6

    .line 262
    :goto_7
    if-ge v5, v0, :cond_f

    .line 263
    .line 264
    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 265
    .line 266
    iput-boolean v1, v8, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    .line 267
    .line 268
    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 269
    .line 270
    invoke-virtual {v8, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 275
    .line 276
    .line 277
    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 278
    .line 279
    iput-boolean v3, v8, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    .line 280
    .line 281
    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 282
    .line 283
    invoke-virtual {v8, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    check-cast v8, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 288
    .line 289
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->requiresOverflow()Z

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    if-eqz v8, :cond_d

    .line 294
    .line 295
    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 296
    .line 297
    iget-object v9, v8, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    .line 298
    .line 299
    iget v10, v8, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 300
    .line 301
    add-int/lit8 v11, v10, 0x1

    .line 302
    .line 303
    iput v11, v8, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 304
    .line 305
    aput v5, v9, v10

    .line 306
    .line 307
    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 308
    .line 309
    invoke-virtual {v8, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    invoke-interface {v8}, Landroid/view/MenuItem;->isVisible()Z

    .line 314
    .line 315
    .line 316
    move-result v8

    .line 317
    if-nez v8, :cond_e

    .line 318
    .line 319
    add-int/lit8 v6, v6, 0x1

    .line 320
    .line 321
    goto :goto_8

    .line 322
    :cond_d
    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 323
    .line 324
    iget-object v9, v8, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    .line 325
    .line 326
    iget v10, v8, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 327
    .line 328
    add-int/lit8 v11, v10, 0x1

    .line 329
    .line 330
    iput v11, v8, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 331
    .line 332
    aput v5, v9, v10

    .line 333
    .line 334
    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 335
    .line 336
    invoke-virtual {v8, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    invoke-interface {v8}, Landroid/view/MenuItem;->isVisible()Z

    .line 341
    .line 342
    .line 343
    move-result v8

    .line 344
    if-eqz v8, :cond_e

    .line 345
    .line 346
    add-int/lit8 v7, v7, 0x1

    .line 347
    .line 348
    :cond_e
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 352
    .line 353
    iget v0, v0, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 354
    .line 355
    sub-int/2addr v0, v6

    .line 356
    if-lez v0, :cond_10

    .line 357
    .line 358
    move v0, v1

    .line 359
    goto :goto_9

    .line 360
    :cond_10
    move v0, v3

    .line 361
    :goto_9
    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mHasOverflowMenu:Z

    .line 362
    .line 363
    add-int/2addr v7, v0

    .line 364
    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mMaxItemCount:I

    .line 365
    .line 366
    if-le v7, v5, :cond_14

    .line 367
    .line 368
    sub-int/2addr v5, v1

    .line 369
    sub-int/2addr v7, v5

    .line 370
    if-eqz v0, :cond_11

    .line 371
    .line 372
    add-int/lit8 v7, v7, -0x1

    .line 373
    .line 374
    :cond_11
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 375
    .line 376
    iget v0, v0, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 377
    .line 378
    sub-int/2addr v0, v1

    .line 379
    :goto_a
    if-ltz v0, :cond_14

    .line 380
    .line 381
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 382
    .line 383
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 384
    .line 385
    iget-object v6, v6, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    .line 386
    .line 387
    aget v6, v6, v0

    .line 388
    .line 389
    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    .line 394
    .line 395
    .line 396
    move-result v5

    .line 397
    if-nez v5, :cond_12

    .line 398
    .line 399
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 400
    .line 401
    iget-object v6, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    .line 402
    .line 403
    iget v8, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 404
    .line 405
    add-int/lit8 v9, v8, 0x1

    .line 406
    .line 407
    iput v9, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 408
    .line 409
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 410
    .line 411
    iget-object v9, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    .line 412
    .line 413
    aget v9, v9, v0

    .line 414
    .line 415
    aput v9, v6, v8

    .line 416
    .line 417
    iget v6, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 418
    .line 419
    sub-int/2addr v6, v1

    .line 420
    iput v6, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 421
    .line 422
    goto :goto_b

    .line 423
    :cond_12
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 424
    .line 425
    iget-object v6, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    .line 426
    .line 427
    iget v8, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 428
    .line 429
    add-int/lit8 v9, v8, 0x1

    .line 430
    .line 431
    iput v9, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 432
    .line 433
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 434
    .line 435
    iget-object v9, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    .line 436
    .line 437
    aget v9, v9, v0

    .line 438
    .line 439
    aput v9, v6, v8

    .line 440
    .line 441
    iget v6, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 442
    .line 443
    sub-int/2addr v6, v1

    .line 444
    iput v6, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 445
    .line 446
    add-int/lit8 v7, v7, -0x1

    .line 447
    .line 448
    if-nez v7, :cond_13

    .line 449
    .line 450
    goto :goto_c

    .line 451
    :cond_13
    :goto_b
    add-int/lit8 v0, v0, -0x1

    .line 452
    .line 453
    goto :goto_a

    .line 454
    :cond_14
    :goto_c
    iput v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    .line 455
    .line 456
    iput v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    .line 457
    .line 458
    move v0, v3

    .line 459
    :goto_d
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 460
    .line 461
    iget v6, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 462
    .line 463
    if-ge v0, v6, :cond_20

    .line 464
    .line 465
    iget-object v5, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    .line 466
    .line 467
    aget v5, v5, v0

    .line 468
    .line 469
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 470
    .line 471
    if-nez v6, :cond_15

    .line 472
    .line 473
    goto/16 :goto_12

    .line 474
    .line 475
    :cond_15
    iget v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewType:I

    .line 476
    .line 477
    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$SynchronizedPool;

    .line 478
    .line 479
    invoke-virtual {v7}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v7

    .line 483
    check-cast v7, Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 484
    .line 485
    if-nez v7, :cond_16

    .line 486
    .line 487
    new-instance v7, Lcom/google/android/material/navigation/NavigationBarMenuView$3;

    .line 488
    .line 489
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 490
    .line 491
    .line 492
    move-result-object v8

    .line 493
    invoke-direct {v7, p0, v8, v6, v6}, Lcom/google/android/material/navigation/NavigationBarMenuView$3;-><init>(Lcom/google/android/material/navigation/NavigationBarMenuView;Landroid/content/Context;II)V

    .line 494
    .line 495
    .line 496
    :cond_16
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 497
    .line 498
    iget v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    .line 499
    .line 500
    aput-object v7, v6, v8

    .line 501
    .line 502
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 503
    .line 504
    invoke-virtual {v6, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 505
    .line 506
    .line 507
    move-result-object v6

    .line 508
    invoke-interface {v6}, Landroid/view/MenuItem;->isVisible()Z

    .line 509
    .line 510
    .line 511
    move-result v6

    .line 512
    if-eqz v6, :cond_17

    .line 513
    .line 514
    move v6, v3

    .line 515
    goto :goto_e

    .line 516
    :cond_17
    const/16 v6, 0x8

    .line 517
    .line 518
    :goto_e
    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 519
    .line 520
    .line 521
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    .line 522
    .line 523
    invoke-virtual {v7, v6}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 524
    .line 525
    .line 526
    iget v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconSize:I

    .line 527
    .line 528
    invoke-virtual {v7, v6}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconSize(I)V

    .line 529
    .line 530
    .line 531
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    .line 532
    .line 533
    invoke-virtual {v7, v6}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 534
    .line 535
    .line 536
    iget v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mSeslLabelTextAppearance:I

    .line 537
    .line 538
    invoke-virtual {v7, v6}, Lcom/google/android/material/navigation/NavigationBarItemView;->seslSetLabelTextAppearance(I)V

    .line 539
    .line 540
    .line 541
    iget v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceInactive:I

    .line 542
    .line 543
    invoke-virtual {v7, v6}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    .line 544
    .line 545
    .line 546
    iget v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActive:I

    .line 547
    .line 548
    invoke-virtual {v7, v6}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActive(I)V

    .line 549
    .line 550
    .line 551
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 552
    .line 553
    invoke-virtual {v7, v6}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 554
    .line 555
    .line 556
    iget v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    .line 557
    .line 558
    invoke-virtual {v7, v6}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(I)V

    .line 559
    .line 560
    .line 561
    iget-boolean v6, v7, Lcom/google/android/material/navigation/NavigationBarItemView;->isShifting:Z

    .line 562
    .line 563
    if-eq v6, v4, :cond_18

    .line 564
    .line 565
    iput-boolean v4, v7, Lcom/google/android/material/navigation/NavigationBarItemView;->isShifting:Z

    .line 566
    .line 567
    iget-object v6, v7, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 568
    .line 569
    if-eqz v6, :cond_18

    .line 570
    .line 571
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    .line 572
    .line 573
    .line 574
    move-result v6

    .line 575
    invoke-virtual {v7, v6}, Lcom/google/android/material/navigation/NavigationBarItemView;->setChecked(Z)V

    .line 576
    .line 577
    .line 578
    :cond_18
    iget v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 579
    .line 580
    invoke-virtual {v7, v6}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLabelVisibilityMode(I)V

    .line 581
    .line 582
    .line 583
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 584
    .line 585
    invoke-virtual {v6, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 586
    .line 587
    .line 588
    move-result-object v6

    .line 589
    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 590
    .line 591
    invoke-virtual {v7, v6}, Lcom/google/android/material/navigation/NavigationBarItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 592
    .line 593
    .line 594
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onClickListener:Lcom/google/android/material/navigation/NavigationBarMenuView$1;

    .line 595
    .line 596
    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    .line 598
    .line 599
    iget v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 600
    .line 601
    if-eqz v6, :cond_19

    .line 602
    .line 603
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 604
    .line 605
    invoke-virtual {v6, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 606
    .line 607
    .line 608
    move-result-object v6

    .line 609
    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    .line 610
    .line 611
    .line 612
    move-result v6

    .line 613
    iget v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 614
    .line 615
    if-ne v6, v8, :cond_19

    .line 616
    .line 617
    iget v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    .line 618
    .line 619
    iput v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 620
    .line 621
    :cond_19
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 622
    .line 623
    invoke-virtual {v6, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 624
    .line 625
    .line 626
    move-result-object v5

    .line 627
    check-cast v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 628
    .line 629
    iget-object v6, v5, Landroidx/appcompat/view/menu/MenuItemImpl;->mBadgeText:Ljava/lang/String;

    .line 630
    .line 631
    if-eqz v6, :cond_1a

    .line 632
    .line 633
    iget v5, v5, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    .line 634
    .line 635
    invoke-virtual {p0, v5, v6}, Lcom/google/android/material/navigation/NavigationBarMenuView;->seslAddBadge(ILjava/lang/String;)V

    .line 636
    .line 637
    .line 638
    goto :goto_f

    .line 639
    :cond_1a
    iget v5, v5, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    .line 640
    .line 641
    invoke-virtual {p0, v5}, Lcom/google/android/material/navigation/NavigationBarMenuView;->seslRemoveBadge(I)V

    .line 642
    .line 643
    .line 644
    :goto_f
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getId()I

    .line 645
    .line 646
    .line 647
    move-result v5

    .line 648
    const/4 v6, -0x1

    .line 649
    if-eq v5, v6, :cond_1b

    .line 650
    .line 651
    move v6, v1

    .line 652
    goto :goto_10

    .line 653
    :cond_1b
    move v6, v3

    .line 654
    :goto_10
    if-nez v6, :cond_1c

    .line 655
    .line 656
    goto :goto_11

    .line 657
    :cond_1c
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 658
    .line 659
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v5

    .line 663
    check-cast v5, Lcom/google/android/material/badge/BadgeDrawable;

    .line 664
    .line 665
    if-eqz v5, :cond_1d

    .line 666
    .line 667
    invoke-virtual {v7, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    .line 668
    .line 669
    .line 670
    :cond_1d
    :goto_11
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 671
    .line 672
    .line 673
    move-result-object v5

    .line 674
    instance-of v5, v5, Landroid/view/ViewGroup;

    .line 675
    .line 676
    if-eqz v5, :cond_1e

    .line 677
    .line 678
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 679
    .line 680
    .line 681
    move-result-object v5

    .line 682
    check-cast v5, Landroid/view/ViewGroup;

    .line 683
    .line 684
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 685
    .line 686
    .line 687
    :cond_1e
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 688
    .line 689
    .line 690
    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    .line 691
    .line 692
    add-int/2addr v5, v1

    .line 693
    iput v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    .line 694
    .line 695
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 696
    .line 697
    .line 698
    move-result v5

    .line 699
    if-nez v5, :cond_1f

    .line 700
    .line 701
    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    .line 702
    .line 703
    add-int/2addr v5, v1

    .line 704
    iput v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    .line 705
    .line 706
    :cond_1f
    :goto_12
    add-int/lit8 v0, v0, 0x1

    .line 707
    .line 708
    goto/16 :goto_d

    .line 709
    .line 710
    :cond_20
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 711
    .line 712
    iget v0, v0, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 713
    .line 714
    if-lez v0, :cond_2a

    .line 715
    .line 716
    move v0, v3

    .line 717
    move v5, v0

    .line 718
    :goto_13
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 719
    .line 720
    iget v7, v6, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 721
    .line 722
    if-ge v0, v7, :cond_23

    .line 723
    .line 724
    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 725
    .line 726
    iget-object v6, v6, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    .line 727
    .line 728
    aget v6, v6, v0

    .line 729
    .line 730
    invoke-virtual {v7, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 731
    .line 732
    .line 733
    move-result-object v6

    .line 734
    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 735
    .line 736
    if-eqz v6, :cond_22

    .line 737
    .line 738
    iget-object v7, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 739
    .line 740
    if-nez v7, :cond_21

    .line 741
    .line 742
    iget-object v7, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 743
    .line 744
    :cond_21
    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 745
    .line 746
    iget v9, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->mGroup:I

    .line 747
    .line 748
    iget v10, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    .line 749
    .line 750
    iget v11, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 751
    .line 752
    invoke-virtual {v8, v9, v10, v11, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 753
    .line 754
    .line 755
    move-result-object v7

    .line 756
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    .line 757
    .line 758
    .line 759
    move-result v8

    .line 760
    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->setVisible(Z)Landroid/view/MenuItem;

    .line 761
    .line 762
    .line 763
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    .line 764
    .line 765
    .line 766
    move-result v8

    .line 767
    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 768
    .line 769
    .line 770
    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 771
    .line 772
    iput-boolean v3, v7, Landroidx/appcompat/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    .line 773
    .line 774
    iget-object v7, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->mBadgeText:Ljava/lang/String;

    .line 775
    .line 776
    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->setBadgeText(Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    .line 780
    .line 781
    .line 782
    move-result v6

    .line 783
    if-nez v6, :cond_22

    .line 784
    .line 785
    add-int/lit8 v5, v5, 0x1

    .line 786
    .line 787
    :cond_22
    add-int/lit8 v0, v0, 0x1

    .line 788
    .line 789
    goto :goto_13

    .line 790
    :cond_23
    sub-int/2addr v7, v5

    .line 791
    if-lez v7, :cond_2a

    .line 792
    .line 793
    iput-boolean v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mHasOverflowMenu:Z

    .line 794
    .line 795
    new-instance v0, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 796
    .line 797
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 798
    .line 799
    .line 800
    move-result-object v5

    .line 801
    invoke-direct {v0, v5}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 802
    .line 803
    .line 804
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mDummyMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 805
    .line 806
    new-instance v0, Landroid/view/MenuInflater;

    .line 807
    .line 808
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 809
    .line 810
    .line 811
    move-result-object v5

    .line 812
    invoke-direct {v0, v5}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 813
    .line 814
    .line 815
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mDummyMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 816
    .line 817
    const v6, 0x7f0f0002

    .line 818
    .line 819
    .line 820
    invoke-virtual {v0, v6, v5}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 821
    .line 822
    .line 823
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mDummyMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 824
    .line 825
    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    instance-of v0, v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 830
    .line 831
    if-eqz v0, :cond_25

    .line 832
    .line 833
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mDummyMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 834
    .line 835
    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 840
    .line 841
    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewType:I

    .line 842
    .line 843
    if-ne v5, v1, :cond_24

    .line 844
    .line 845
    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    .line 846
    .line 847
    .line 848
    goto :goto_14

    .line 849
    :cond_24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 850
    .line 851
    .line 852
    move-result-object v5

    .line 853
    const v6, 0x7f131033

    .line 854
    .line 855
    .line 856
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v5

    .line 860
    invoke-virtual {v0, v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    .line 861
    .line 862
    .line 863
    :cond_25
    :goto_14
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewType:I

    .line 864
    .line 865
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$SynchronizedPool;

    .line 866
    .line 867
    invoke-virtual {v5}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object v5

    .line 871
    check-cast v5, Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 872
    .line 873
    if-nez v5, :cond_26

    .line 874
    .line 875
    new-instance v5, Lcom/google/android/material/navigation/NavigationBarMenuView$3;

    .line 876
    .line 877
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 878
    .line 879
    .line 880
    move-result-object v6

    .line 881
    invoke-direct {v5, p0, v6, v0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView$3;-><init>(Lcom/google/android/material/navigation/NavigationBarMenuView;Landroid/content/Context;II)V

    .line 882
    .line 883
    .line 884
    :cond_26
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    .line 885
    .line 886
    invoke-virtual {v5, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 887
    .line 888
    .line 889
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconSize:I

    .line 890
    .line 891
    invoke-virtual {v5, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconSize(I)V

    .line 892
    .line 893
    .line 894
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    .line 895
    .line 896
    invoke-virtual {v5, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 897
    .line 898
    .line 899
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mSeslLabelTextAppearance:I

    .line 900
    .line 901
    invoke-virtual {v5, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->seslSetLabelTextAppearance(I)V

    .line 902
    .line 903
    .line 904
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceInactive:I

    .line 905
    .line 906
    invoke-virtual {v5, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    .line 907
    .line 908
    .line 909
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActive:I

    .line 910
    .line 911
    invoke-virtual {v5, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActive(I)V

    .line 912
    .line 913
    .line 914
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 915
    .line 916
    invoke-virtual {v5, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 917
    .line 918
    .line 919
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    .line 920
    .line 921
    invoke-virtual {v5, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(I)V

    .line 922
    .line 923
    .line 924
    iget-boolean v0, v5, Lcom/google/android/material/navigation/NavigationBarItemView;->isShifting:Z

    .line 925
    .line 926
    if-eq v0, v4, :cond_27

    .line 927
    .line 928
    iput-boolean v4, v5, Lcom/google/android/material/navigation/NavigationBarItemView;->isShifting:Z

    .line 929
    .line 930
    iget-object v0, v5, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 931
    .line 932
    if-eqz v0, :cond_27

    .line 933
    .line 934
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    .line 935
    .line 936
    .line 937
    move-result v0

    .line 938
    invoke-virtual {v5, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setChecked(Z)V

    .line 939
    .line 940
    .line 941
    :cond_27
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 942
    .line 943
    invoke-virtual {v5, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLabelVisibilityMode(I)V

    .line 944
    .line 945
    .line 946
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mDummyMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 947
    .line 948
    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 949
    .line 950
    .line 951
    move-result-object v0

    .line 952
    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 953
    .line 954
    invoke-virtual {v5, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 955
    .line 956
    .line 957
    iput v3, v5, Lcom/google/android/material/navigation/NavigationBarItemView;->mBadgeType:I

    .line 958
    .line 959
    new-instance v0, Lcom/google/android/material/navigation/NavigationBarMenuView$2;

    .line 960
    .line 961
    invoke-direct {v0, p0}, Lcom/google/android/material/navigation/NavigationBarMenuView$2;-><init>(Lcom/google/android/material/navigation/NavigationBarMenuView;)V

    .line 962
    .line 963
    .line 964
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 965
    .line 966
    .line 967
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 968
    .line 969
    .line 970
    move-result-object v0

    .line 971
    const v4, 0x7f130fd4

    .line 972
    .line 973
    .line 974
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v0

    .line 978
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 979
    .line 980
    .line 981
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewType:I

    .line 982
    .line 983
    const/4 v4, 0x3

    .line 984
    if-ne v0, v4, :cond_28

    .line 985
    .line 986
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 987
    .line 988
    .line 989
    move-result-object v0

    .line 990
    const v4, 0x7f08101a

    .line 991
    .line 992
    .line 993
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 994
    .line 995
    .line 996
    move-result-object v0

    .line 997
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .line 998
    .line 999
    const-string v6, " "

    .line 1000
    .line 1001
    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1002
    .line 1003
    .line 1004
    new-instance v6, Landroid/text/style/ImageSpan;

    .line 1005
    .line 1006
    invoke-direct {v6, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 1007
    .line 1008
    .line 1009
    const v7, 0x101009e

    .line 1010
    .line 1011
    .line 1012
    const v8, -0x101009e

    .line 1013
    .line 1014
    .line 1015
    filled-new-array {v7, v8}, [I

    .line 1016
    .line 1017
    .line 1018
    move-result-object v7

    .line 1019
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1020
    .line 1021
    .line 1022
    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 1023
    .line 1024
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v7

    .line 1031
    const v8, 0x7f070f6b

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1035
    .line 1036
    .line 1037
    move-result v7

    .line 1038
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v9

    .line 1042
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1043
    .line 1044
    .line 1045
    move-result v8

    .line 1046
    invoke-virtual {v0, v3, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1047
    .line 1048
    .line 1049
    const/16 v0, 0x12

    .line 1050
    .line 1051
    invoke-virtual {v4, v6, v3, v1, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1052
    .line 1053
    .line 1054
    iput-object v4, v5, Lcom/google/android/material/navigation/NavigationBarItemView;->mLabelImgSpan:Landroid/text/SpannableStringBuilder;

    .line 1055
    .line 1056
    iget-object v0, v5, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    .line 1057
    .line 1058
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1059
    .line 1060
    .line 1061
    iget-object v0, v5, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    .line 1062
    .line 1063
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    .line 1065
    .line 1066
    :cond_28
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v0

    .line 1070
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 1071
    .line 1072
    if-eqz v0, :cond_29

    .line 1073
    .line 1074
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v0

    .line 1078
    check-cast v0, Landroid/view/ViewGroup;

    .line 1079
    .line 1080
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1081
    .line 1082
    .line 1083
    :cond_29
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1084
    .line 1085
    .line 1086
    iput-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 1087
    .line 1088
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 1089
    .line 1090
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 1091
    .line 1092
    iget v4, v4, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 1093
    .line 1094
    aput-object v5, v0, v4

    .line 1095
    .line 1096
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    .line 1097
    .line 1098
    add-int/2addr v0, v1

    .line 1099
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    .line 1100
    .line 1101
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    .line 1102
    .line 1103
    add-int/2addr v0, v1

    .line 1104
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    .line 1105
    .line 1106
    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1107
    .line 1108
    .line 1109
    :cond_2a
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    .line 1110
    .line 1111
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mMaxItemCount:I

    .line 1112
    .line 1113
    if-le v0, v4, :cond_2b

    .line 1114
    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1116
    .line 1117
    const-string v4, "Maximum number of visible items supported by BottomNavigationView is "

    .line 1118
    .line 1119
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1120
    .line 1121
    .line 1122
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mMaxItemCount:I

    .line 1123
    .line 1124
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1125
    .line 1126
    .line 1127
    const-string v4, ". Current visible count is "

    .line 1128
    .line 1129
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    .line 1133
    .line 1134
    const-string v5, "NavigationBarMenuView"

    .line 1135
    .line 1136
    invoke-static {v0, v4, v5}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1137
    .line 1138
    .line 1139
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mMaxItemCount:I

    .line 1140
    .line 1141
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    .line 1142
    .line 1143
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    .line 1144
    .line 1145
    :cond_2b
    move v0, v3

    .line 1146
    :goto_15
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 1147
    .line 1148
    array-length v5, v4

    .line 1149
    if-ge v0, v5, :cond_31

    .line 1150
    .line 1151
    aget-object v4, v4, v0

    .line 1152
    .line 1153
    if-nez v4, :cond_2c

    .line 1154
    .line 1155
    goto/16 :goto_19

    .line 1156
    .line 1157
    :cond_2c
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 1158
    .line 1159
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mContentResolver:Landroid/content/ContentResolver;

    .line 1160
    .line 1161
    const-string/jumbo v7, "show_button_background"

    .line 1162
    .line 1163
    .line 1164
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1165
    .line 1166
    .line 1167
    move-result v6

    .line 1168
    if-ne v6, v1, :cond_2d

    .line 1169
    .line 1170
    move v6, v1

    .line 1171
    goto :goto_16

    .line 1172
    :cond_2d
    move v6, v3

    .line 1173
    :goto_16
    if-eqz v6, :cond_30

    .line 1174
    .line 1175
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mSBBTextColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 1176
    .line 1177
    if-eqz v6, :cond_2e

    .line 1178
    .line 1179
    invoke-virtual {v6}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 1180
    .line 1181
    .line 1182
    move-result v6

    .line 1183
    goto :goto_18

    .line 1184
    :cond_2e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v6

    .line 1188
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v7

    .line 1192
    invoke-static {v7}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    .line 1193
    .line 1194
    .line 1195
    move-result v7

    .line 1196
    if-eqz v7, :cond_2f

    .line 1197
    .line 1198
    const v7, 0x7f060600

    .line 1199
    .line 1200
    .line 1201
    goto :goto_17

    .line 1202
    :cond_2f
    const v7, 0x7f0605ff

    .line 1203
    .line 1204
    .line 1205
    :goto_17
    invoke-virtual {v6, v7, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 1206
    .line 1207
    .line 1208
    move-result v6

    .line 1209
    :goto_18
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v7

    .line 1213
    const v8, 0x7f080fc1

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v7

    .line 1220
    iget-object v8, v4, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    .line 1221
    .line 1222
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1223
    .line 1224
    .line 1225
    iget-object v8, v4, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    .line 1226
    .line 1227
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1228
    .line 1229
    .line 1230
    iget-object v8, v4, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    .line 1231
    .line 1232
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1233
    .line 1234
    .line 1235
    iget-object v8, v4, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    .line 1236
    .line 1237
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1238
    .line 1239
    .line 1240
    iget-object v7, v4, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    .line 1241
    .line 1242
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1243
    .line 1244
    .line 1245
    iget-object v7, v4, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    .line 1246
    .line 1247
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1248
    .line 1249
    .line 1250
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 1251
    .line 1252
    if-eqz v5, :cond_30

    .line 1253
    .line 1254
    iget-object v4, v4, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1255
    .line 1256
    if-eqz v4, :cond_30

    .line 1257
    .line 1258
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mDummyMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 1259
    .line 1260
    if-eqz v5, :cond_30

    .line 1261
    .line 1262
    iget v4, v4, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    .line 1263
    .line 1264
    invoke-virtual {v5, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v5

    .line 1268
    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    .line 1269
    .line 1270
    .line 1271
    move-result v5

    .line 1272
    if-ne v4, v5, :cond_30

    .line 1273
    .line 1274
    invoke-virtual {p0, v6, v3}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setOverflowSpanColor(IZ)V

    .line 1275
    .line 1276
    .line 1277
    :cond_30
    :goto_19
    add-int/lit8 v0, v0, 0x1

    .line 1278
    .line 1279
    goto/16 :goto_15

    .line 1280
    .line 1281
    :cond_31
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mMaxItemCount:I

    .line 1282
    .line 1283
    sub-int/2addr v0, v1

    .line 1284
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 1285
    .line 1286
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 1287
    .line 1288
    .line 1289
    move-result v0

    .line 1290
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 1291
    .line 1292
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 1293
    .line 1294
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 1295
    .line 1296
    .line 1297
    move-result-object p0

    .line 1298
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1299
    .line 1300
    .line 1301
    return-void
.end method

.method public final createDefaultColorStateList()Landroid/content/res/ColorStateList;
    .locals 6

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const v2, 0x1010038

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    .line 31
    .line 32
    invoke-static {v4, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const v4, 0x7f040131

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v4, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_1

    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_1
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 61
    .line 62
    sget-object v3, Lcom/google/android/material/navigation/NavigationBarMenuView;->DISABLED_STATE_SET:[I

    .line 63
    .line 64
    sget-object v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->CHECKED_STATE_SET:[I

    .line 65
    .line 66
    sget-object v5, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    .line 67
    .line 68
    filled-new-array {v3, v4, v5}, [[I

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v1, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    filled-new-array {v1, p0, v0}, [I

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-direct {v2, v4, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 81
    .line 82
    .line 83
    return-object v2
.end method

.method public final findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v0, v1

    .line 8
    :goto_0
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 11
    .line 12
    if-eqz p0, :cond_3

    .line 13
    .line 14
    array-length v0, p0

    .line 15
    :goto_1
    if-ge v1, v0, :cond_3

    .line 16
    .line 17
    aget-object v2, p0, v1

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ne v3, p1, :cond_2

    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    :goto_2
    const/4 p0, 0x0

    .line 33
    return-object p0

    .line 34
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, " is not a valid view id"

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final hideOverflowMenu()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mHasOverflowMenu:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mOverflowPopup:Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mPostedOpenRunnable:Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    check-cast v1, Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mPostedOpenRunnable:Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mOverflowPopup:Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/StandardMenuPopup;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->dismiss()V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_1
    return-void
.end method

.method public final initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2
    .line 3
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewType:I

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p1, v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const v0, 0x7f070f6b

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemIconSize(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    array-length v1, p1

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    if-ge v2, v1, :cond_3

    .line 30
    .line 31
    aget-object v3, p1, v2

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    iget-object v5, v3, Lcom/google/android/material/navigation/NavigationBarItemView;->labelGroup:Landroid/view/ViewGroup;

    .line 45
    .line 46
    if-nez v5, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const v6, 0x7f070f66

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    iput v5, v3, Lcom/google/android/material/navigation/NavigationBarItemView;->defaultMargin:I

    .line 61
    .line 62
    iget-object v5, v3, Lcom/google/android/material/navigation/NavigationBarItemView;->labelGroup:Landroid/view/ViewGroup;

    .line 63
    .line 64
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 69
    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    iget v6, v3, Lcom/google/android/material/navigation/NavigationBarItemView;->defaultMargin:I

    .line 73
    .line 74
    add-int/2addr v4, v6

    .line 75
    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 76
    .line 77
    iget-object v3, v3, Lcom/google/android/material/navigation/NavigationBarItemView;->labelGroup:Landroid/view/ViewGroup;

    .line 78
    .line 79
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->hideOverflowMenu()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final seslAddBadge(ILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    const v0, 0x7f0a077a

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0x7f0a0779

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const v3, 0x7f0d03cb

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    move-object v0, v1

    .line 52
    :goto_0
    const/4 v1, 0x1

    .line 53
    if-nez p2, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    move v3, v1

    .line 60
    goto :goto_2

    .line 61
    :catch_0
    :goto_1
    move v3, v2

    .line 62
    :goto_2
    if-eqz v3, :cond_3

    .line 63
    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/16 v4, 0x3e7

    .line 69
    .line 70
    if-le v3, v4, :cond_2

    .line 71
    .line 72
    iput-boolean v1, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->mIsBadgeNumberless:Z

    .line 73
    .line 74
    const-string p2, "999+"

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_2
    iput-boolean v2, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->mIsBadgeNumberless:Z

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    iput-boolean v2, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->mIsBadgeNumberless:Z

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    const/4 v0, 0x0

    .line 84
    :goto_3
    if-eqz v0, :cond_5

    .line 85
    .line 86
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->updateBadge(Lcom/google/android/material/navigation/NavigationBarItemView;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final seslRemoveBadge(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const p1, 0x7f0a077a

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 23
    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public final setItemIconSize(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconSize:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconSize(I)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 23
    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconSize(I)V

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public final setOverflowSpanColor(IZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->mLabelImgSpan:Landroid/text/SpannableStringBuilder;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const v2, 0x7f08101a

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const-class v3, Landroid/text/style/ImageSpan;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {v0, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, [Landroid/text/style/ImageSpan;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    array-length v3, v2

    .line 37
    move v5, v4

    .line 38
    :goto_0
    if-ge v5, v3, :cond_1

    .line 39
    .line 40
    aget-object v6, v2, v5

    .line 41
    .line 42
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v5, v5, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v2, Landroid/text/style/ImageSpan;

    .line 49
    .line 50
    invoke-direct {v2, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    const v3, 0x101009e

    .line 54
    .line 55
    .line 56
    const v5, -0x101009e

    .line 57
    .line 58
    .line 59
    filled-new-array {v3, v5}, [I

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 64
    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 69
    .line 70
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 75
    .line 76
    .line 77
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const p2, 0x7f070f6b

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    invoke-virtual {v1, v4, v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    .line 98
    .line 99
    const/16 p1, 0x12

    .line 100
    .line 101
    const/4 p2, 0x1

    .line 102
    invoke-virtual {v0, v2, v4, p2, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 106
    .line 107
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->mLabelImgSpan:Landroid/text/SpannableStringBuilder;

    .line 108
    .line 109
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    return-void
.end method

.method public final updateBadge(Lcom/google/android/material/navigation/NavigationBarItemView;)V
    .locals 13

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const v0, 0x7f0a0779

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const v2, 0x7f071099

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 36
    .line 37
    const v4, 0x3f99999a    # 1.2f

    .line 38
    .line 39
    .line 40
    cmpl-float v5, v3, v4

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    if-lez v5, :cond_2

    .line 44
    .line 45
    int-to-float v2, v2

    .line 46
    div-float/2addr v2, v3

    .line 47
    mul-float/2addr v2, v4

    .line 48
    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget v2, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->mBadgeType:I

    .line 52
    .line 53
    const v3, 0x7f070f64

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    .line 61
    .line 62
    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mMaxItemCount:I

    .line 63
    .line 64
    if-ne v4, v5, :cond_3

    .line 65
    .line 66
    const v4, 0x7f070f68

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const v4, 0x7f070f69

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    :goto_0
    const v5, 0x7f070f5f

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    const v7, 0x7f070f5e

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    iget-object v8, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    .line 96
    .line 97
    if-eqz v8, :cond_4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    iget-object v8, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    .line 101
    .line 102
    :goto_1
    const/4 v9, 0x1

    .line 103
    if-nez v8, :cond_5

    .line 104
    .line 105
    move v10, v9

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    invoke-virtual {v8}, Landroid/widget/TextView;->getWidth()I

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    :goto_2
    if-nez v8, :cond_6

    .line 112
    .line 113
    move v8, v9

    .line 114
    goto :goto_3

    .line 115
    :cond_6
    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    :goto_3
    if-eq v2, v9, :cond_8

    .line 120
    .line 121
    if-nez v2, :cond_7

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_7
    const v11, 0x7f0810a5

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    sget-object v11, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 132
    .line 133
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v6, v6}, Landroid/widget/TextView;->measure(II)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    goto :goto_5

    .line 148
    :cond_8
    :goto_4
    const v6, 0x7f080ffd

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 156
    .line 157
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 158
    .line 159
    .line 160
    move v1, v3

    .line 161
    move v6, v1

    .line 162
    :goto_5
    iget v11, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewType:I

    .line 163
    .line 164
    const/4 v12, 0x3

    .line 165
    if-eq v11, v12, :cond_a

    .line 166
    .line 167
    if-ne v2, v9, :cond_9

    .line 168
    .line 169
    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconSize:I

    .line 170
    .line 171
    div-int/lit8 p0, p0, 0x2

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_9
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    div-int/lit8 p0, p0, 0x2

    .line 179
    .line 180
    sub-int/2addr p0, v4

    .line 181
    div-int/lit8 v3, v3, 0x2

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_a
    if-ne v2, v9, :cond_b

    .line 185
    .line 186
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    add-int/2addr p0, v10

    .line 191
    div-int/lit8 p0, p0, 0x2

    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    sub-int/2addr p1, v8

    .line 198
    div-int/lit8 v3, p1, 0x2

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_b
    if-nez v2, :cond_c

    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    sub-int/2addr v10, p0

    .line 208
    sub-int/2addr v10, v7

    .line 209
    div-int/lit8 p0, v10, 0x2

    .line 210
    .line 211
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    sub-int/2addr p1, v8

    .line 216
    div-int/lit8 p1, p1, 0x2

    .line 217
    .line 218
    sub-int v3, p1, v5

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_c
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    add-int/2addr p0, v10

    .line 226
    div-int/lit8 p0, p0, 0x2

    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    sub-int/2addr v2, v8

    .line 233
    div-int/lit8 v2, v2, 0x2

    .line 234
    .line 235
    sub-int v3, v2, v5

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    div-int/lit8 v2, v2, 0x2

    .line 242
    .line 243
    add-int/2addr v2, p0

    .line 244
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    div-int/lit8 v4, v4, 0x2

    .line 249
    .line 250
    add-int/2addr v4, v2

    .line 251
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-le v4, v2, :cond_d

    .line 256
    .line 257
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    div-int/lit8 p1, p1, 0x2

    .line 266
    .line 267
    add-int/2addr p1, p0

    .line 268
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    div-int/lit8 v4, v4, 0x2

    .line 273
    .line 274
    add-int/2addr v4, p1

    .line 275
    sub-int/2addr v2, v4

    .line 276
    add-int/2addr p0, v2

    .line 277
    :cond_d
    :goto_6
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 282
    .line 283
    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 284
    .line 285
    iget v4, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 286
    .line 287
    if-ne v2, v1, :cond_e

    .line 288
    .line 289
    if-eq v4, p0, :cond_f

    .line 290
    .line 291
    :cond_e
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 292
    .line 293
    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 294
    .line 295
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 296
    .line 297
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    .line 302
    .line 303
    :cond_f
    return-void
.end method

.method public final updateMenuView()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 6
    .line 7
    if-eqz v1, :cond_e

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 10
    .line 11
    if-eqz v1, :cond_e

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->hideOverflowMenu()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 27
    .line 28
    iget v1, v1, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 31
    .line 32
    iget v2, v2, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 33
    .line 34
    add-int/2addr v1, v2

    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->buildMenuView()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    move v2, v1

    .line 45
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 46
    .line 47
    iget v4, v3, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 48
    .line 49
    if-ge v2, v4, :cond_4

    .line 50
    .line 51
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 52
    .line 53
    iget-object v3, v3, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    .line 54
    .line 55
    aget v3, v3, v2

    .line 56
    .line 57
    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-interface {v3}, Landroid/view/MenuItem;->isChecked()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    iput v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 72
    .line 73
    iput v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 74
    .line 75
    :cond_2
    instance-of v4, v3, Landroidx/appcompat/view/menu/SeslMenuItem;

    .line 76
    .line 77
    if-eqz v4, :cond_3

    .line 78
    .line 79
    move-object v4, v3

    .line 80
    check-cast v4, Landroidx/appcompat/view/menu/SeslMenuItem;

    .line 81
    .line 82
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {p0, v5}, Lcom/google/android/material/navigation/NavigationBarMenuView;->seslRemoveBadge(I)V

    .line 87
    .line 88
    .line 89
    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 90
    .line 91
    iget-object v4, v4, Landroidx/appcompat/view/menu/MenuItemImpl;->mBadgeText:Ljava/lang/String;

    .line 92
    .line 93
    if-eqz v4, :cond_3

    .line 94
    .line 95
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {p0, v3, v4}, Lcom/google/android/material/navigation/NavigationBarMenuView;->seslAddBadge(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 106
    .line 107
    if-eq v0, v2, :cond_5

    .line 108
    .line 109
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->set:Landroidx/transition/AutoTransition;

    .line 110
    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    invoke-static {v0, p0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroidx/transition/Transition;Landroid/view/ViewGroup;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 117
    .line 118
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 119
    .line 120
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    const/4 v2, 0x1

    .line 128
    if-nez v0, :cond_6

    .line 129
    .line 130
    move v0, v2

    .line 131
    goto :goto_1

    .line 132
    :cond_6
    move v0, v1

    .line 133
    :goto_1
    move v3, v1

    .line 134
    :goto_2
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 135
    .line 136
    iget v4, v4, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 137
    .line 138
    if-ge v3, v4, :cond_8

    .line 139
    .line 140
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 141
    .line 142
    iput-boolean v2, v4, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    .line 143
    .line 144
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 145
    .line 146
    aget-object v4, v4, v3

    .line 147
    .line 148
    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 149
    .line 150
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLabelVisibilityMode(I)V

    .line 151
    .line 152
    .line 153
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 154
    .line 155
    aget-object v4, v4, v3

    .line 156
    .line 157
    iget-boolean v5, v4, Lcom/google/android/material/navigation/NavigationBarItemView;->isShifting:Z

    .line 158
    .line 159
    if-eq v5, v0, :cond_7

    .line 160
    .line 161
    iput-boolean v0, v4, Lcom/google/android/material/navigation/NavigationBarItemView;->isShifting:Z

    .line 162
    .line 163
    iget-object v5, v4, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 164
    .line 165
    if-eqz v5, :cond_7

    .line 166
    .line 167
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setChecked(Z)V

    .line 172
    .line 173
    .line 174
    :cond_7
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 175
    .line 176
    aget-object v4, v4, v3

    .line 177
    .line 178
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 179
    .line 180
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 181
    .line 182
    iget-object v6, v6, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    .line 183
    .line 184
    aget v6, v6, v3

    .line 185
    .line 186
    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    check-cast v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 191
    .line 192
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 193
    .line 194
    .line 195
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 196
    .line 197
    iput-boolean v1, v4, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    .line 198
    .line 199
    add-int/lit8 v3, v3, 0x1

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_8
    move v0, v1

    .line 203
    move v3, v0

    .line 204
    :goto_3
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    .line 205
    .line 206
    iget v5, v4, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    .line 207
    .line 208
    if-ge v0, v5, :cond_c

    .line 209
    .line 210
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 211
    .line 212
    iget-object v4, v4, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    .line 213
    .line 214
    aget v4, v4, v0

    .line 215
    .line 216
    invoke-virtual {v5, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    instance-of v5, v4, Landroidx/appcompat/view/menu/SeslMenuItem;

    .line 221
    .line 222
    if-eqz v5, :cond_b

    .line 223
    .line 224
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 225
    .line 226
    if-eqz v5, :cond_b

    .line 227
    .line 228
    move-object v6, v4

    .line 229
    check-cast v6, Landroidx/appcompat/view/menu/SeslMenuItem;

    .line 230
    .line 231
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    invoke-virtual {v5, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    instance-of v7, v5, Landroidx/appcompat/view/menu/SeslMenuItem;

    .line 240
    .line 241
    if-eqz v7, :cond_9

    .line 242
    .line 243
    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 248
    .line 249
    .line 250
    check-cast v5, Landroidx/appcompat/view/menu/SeslMenuItem;

    .line 251
    .line 252
    move-object v4, v6

    .line 253
    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 254
    .line 255
    iget-object v4, v4, Landroidx/appcompat/view/menu/MenuItemImpl;->mBadgeText:Ljava/lang/String;

    .line 256
    .line 257
    check-cast v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 258
    .line 259
    invoke-virtual {v5, v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->setBadgeText(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :cond_9
    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 263
    .line 264
    iget-object v4, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->mBadgeText:Ljava/lang/String;

    .line 265
    .line 266
    if-eqz v4, :cond_a

    .line 267
    .line 268
    move v4, v2

    .line 269
    goto :goto_4

    .line 270
    :cond_a
    move v4, v1

    .line 271
    :goto_4
    or-int/2addr v3, v4

    .line 272
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_c
    const v0, 0x7f0a0178

    .line 276
    .line 277
    .line 278
    if-eqz v3, :cond_d

    .line 279
    .line 280
    const-string v1, ""

    .line 281
    .line 282
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->seslAddBadge(ILjava/lang/String;)V

    .line 283
    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_d
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->seslRemoveBadge(I)V

    .line 287
    .line 288
    .line 289
    :cond_e
    :goto_5
    return-void
.end method
