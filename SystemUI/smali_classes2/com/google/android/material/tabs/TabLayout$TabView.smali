.class public final Lcom/google/android/material/tabs/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field public customIconView:Landroid/widget/ImageView;

.field public customTextView:Landroid/widget/TextView;

.field public customView:Landroid/view/View;

.field public defaultMaxLines:I

.field public iconView:Landroid/widget/ImageView;

.field public mIconSize:I

.field public mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

.field public mIsCallPerformClick:Z

.field public mMainTabTouchBackground:Landroid/view/View;

.field public mSubTextView:Landroid/widget/TextView;

.field public mTabParentView:Landroid/widget/RelativeLayout;

.field public final mTabViewKeyListener:Lcom/google/android/material/tabs/TabLayout$TabView$1;

.field public tab:Lcom/google/android/material/tabs/TabLayout$Tab;

.field public textView:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/material/tabs/TabLayout$TabView$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/google/android/material/tabs/TabLayout$TabView$1;-><init>(Lcom/google/android/material/tabs/TabLayout$TabView;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabViewKeyListener:Lcom/google/android/material/tabs/TabLayout$TabView$1;

    .line 15
    .line 16
    iget v2, p1, Lcom/google/android/material/tabs/TabLayout;->tabBackgroundResId:I

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget v3, p1, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    .line 21
    .line 22
    if-eq v3, v0, :cond_1

    .line 23
    .line 24
    invoke-static {v2, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 50
    .line 51
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 p2, 0x0

    .line 56
    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    :goto_0
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 59
    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 63
    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    const/16 p2, 0x11

    .line 68
    .line 69
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 70
    .line 71
    .line 72
    iget-boolean p2, p1, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    xor-int/2addr p2, v0

    .line 76
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 83
    .line 84
    .line 85
    iget p2, p1, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    .line 86
    .line 87
    if-ne p2, v0, :cond_3

    .line 88
    .line 89
    iget p2, p1, Lcom/google/android/material/tabs/TabLayout;->tabPaddingTop:I

    .line 90
    .line 91
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout;->tabPaddingBottom:I

    .line 92
    .line 93
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-static {p0, v0, p2, v0, p1}, Landroidx/core/view/ViewCompat$Api17Impl;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const p2, 0x7f07111d

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIconSize:I

    .line 111
    .line 112
    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f07111d

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIconSize:I

    .line 16
    .line 17
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 11
    .line 12
    iget v3, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isSelected()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(ZIIIIZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isSelected()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const v0, 0x7f130742

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    iget-object p1, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v0, "AccessibilityNodeInfo.roleDescription"

    .line 60
    .line 61
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    invoke-virtual {p1, p3}, Landroid/view/View;->setLeft(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 13
    .line 14
    iget-object p3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sub-int p2, p4, p2

    .line 24
    .line 25
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setRight(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 55
    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 65
    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 69
    .line 70
    if-eqz p2, :cond_4

    .line 71
    .line 72
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 73
    .line 74
    if-eqz p2, :cond_4

    .line 75
    .line 76
    iget p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIconSize:I

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    add-int/2addr p1, p2

    .line 83
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 84
    .line 85
    iget p2, p2, Lcom/google/android/material/tabs/TabLayout;->mIconTextGap:I

    .line 86
    .line 87
    const/4 p3, -0x1

    .line 88
    if-eq p2, p3, :cond_2

    .line 89
    .line 90
    add-int/2addr p1, p2

    .line 91
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    sub-int/2addr p2, p1

    .line 96
    div-int/lit8 p2, p2, 0x2

    .line 97
    .line 98
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_3

    .line 107
    .line 108
    neg-int p1, p1

    .line 109
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 110
    .line 111
    invoke-virtual {p2}, Landroid/widget/ImageView;->getRight()I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    iget-object p3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 116
    .line 117
    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getRight()I

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    if-ne p2, p3, :cond_4

    .line 122
    .line 123
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 124
    .line 125
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    .line 126
    .line 127
    .line 128
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 129
    .line 130
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 131
    .line 132
    .line 133
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 140
    .line 141
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLeft()I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    iget-object p3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 146
    .line 147
    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getLeft()I

    .line 148
    .line 149
    .line 150
    move-result p3

    .line 151
    if-ne p2, p3, :cond_4

    .line 152
    .line 153
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 154
    .line 155
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    .line 156
    .line 157
    .line 158
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 159
    .line 160
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 161
    .line 162
    .line 163
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 164
    .line 165
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 166
    .line 167
    .line 168
    :cond_4
    :goto_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 10
    .line 11
    iget v3, v2, Lcom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    .line 12
    .line 13
    iget v4, v2, Lcom/google/android/material/tabs/TabLayout;->mode:I

    .line 14
    .line 15
    const/16 v5, 0xb

    .line 16
    .line 17
    const/high16 v6, -0x80000000

    .line 18
    .line 19
    const/high16 v7, 0x40000000    # 2.0f

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    if-eq v4, v5, :cond_3

    .line 23
    .line 24
    const/16 v5, 0xc

    .line 25
    .line 26
    if-ne v4, v5, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->mRequestedTabWidth:I

    .line 30
    .line 31
    const/4 v4, -0x1

    .line 32
    if-eq v2, v4, :cond_1

    .line 33
    .line 34
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    if-lez v3, :cond_5

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    if-le v0, v3, :cond_5

    .line 44
    .line 45
    :cond_2
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    :goto_0
    if-nez v1, :cond_4

    .line 51
    .line 52
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    if-ne v1, v7, :cond_5

    .line 58
    .line 59
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 67
    .line 68
    const/4 v1, 0x2

    .line 69
    if-eqz v0, :cond_d

    .line 70
    .line 71
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    .line 72
    .line 73
    if-nez v2, :cond_d

    .line 74
    .line 75
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 76
    .line 77
    iget v4, v2, Lcom/google/android/material/tabs/TabLayout;->tabTextSize:F

    .line 78
    .line 79
    float-to-int v5, v4

    .line 80
    invoke-static {v2, v0, v5}, Lcom/google/android/material/tabs/TabLayout;->access$1700(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 84
    .line 85
    iget v2, v0, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    .line 86
    .line 87
    if-ne v2, v1, :cond_6

    .line 88
    .line 89
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    .line 90
    .line 91
    if-eqz v2, :cond_6

    .line 92
    .line 93
    iget v5, v0, Lcom/google/android/material/tabs/TabLayout;->mSubTabTextSize:I

    .line 94
    .line 95
    invoke-static {v0, v2, v5}, Lcom/google/android/material/tabs/TabLayout;->access$1700(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    .line 96
    .line 97
    .line 98
    :cond_6
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    .line 99
    .line 100
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 101
    .line 102
    const/4 v5, 0x1

    .line 103
    if-eqz v2, :cond_7

    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_7

    .line 110
    .line 111
    move v0, v5

    .line 112
    goto :goto_2

    .line 113
    :cond_7
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 114
    .line 115
    if-eqz v2, :cond_8

    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-le v2, v5, :cond_8

    .line 122
    .line 123
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 124
    .line 125
    iget v4, v2, Lcom/google/android/material/tabs/TabLayout;->tabTextMultiLineSize:F

    .line 126
    .line 127
    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 128
    .line 129
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    iget-object v7, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 134
    .line 135
    invoke-virtual {v7}, Landroid/widget/TextView;->getLineCount()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    iget-object v9, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 140
    .line 141
    invoke-virtual {v9}, Landroid/widget/TextView;->getMaxLines()I

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    cmpl-float v2, v4, v2

    .line 146
    .line 147
    if-nez v2, :cond_9

    .line 148
    .line 149
    if-ltz v9, :cond_d

    .line 150
    .line 151
    if-eq v0, v9, :cond_d

    .line 152
    .line 153
    :cond_9
    iget-object v9, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 154
    .line 155
    iget v9, v9, Lcom/google/android/material/tabs/TabLayout;->mode:I

    .line 156
    .line 157
    if-ne v9, v5, :cond_b

    .line 158
    .line 159
    if-lez v2, :cond_b

    .line 160
    .line 161
    if-ne v7, v5, :cond_b

    .line 162
    .line 163
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 164
    .line 165
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    if-eqz v2, :cond_a

    .line 170
    .line 171
    invoke-virtual {v2, v8}, Landroid/text/Layout;->getLineWidth(I)F

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    div-float v2, v4, v2

    .line 184
    .line 185
    mul-float/2addr v2, v7

    .line 186
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    .line 191
    .line 192
    .line 193
    move-result v9

    .line 194
    sub-int/2addr v7, v9

    .line 195
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    sub-int/2addr v7, v9

    .line 200
    int-to-float v7, v7

    .line 201
    cmpl-float v2, v2, v7

    .line 202
    .line 203
    if-lez v2, :cond_b

    .line 204
    .line 205
    :cond_a
    move v5, v8

    .line 206
    :cond_b
    if-eqz v5, :cond_d

    .line 207
    .line 208
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 209
    .line 210
    invoke-virtual {v2, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 211
    .line 212
    .line 213
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 214
    .line 215
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 216
    .line 217
    float-to-int v4, v4

    .line 218
    invoke-static {v2, v5, v4}, Lcom/google/android/material/tabs/TabLayout;->access$1700(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    .line 219
    .line 220
    .line 221
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 222
    .line 223
    iget v4, v2, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    .line 224
    .line 225
    if-ne v4, v1, :cond_c

    .line 226
    .line 227
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    .line 228
    .line 229
    if-eqz v4, :cond_c

    .line 230
    .line 231
    iget v5, v2, Lcom/google/android/material/tabs/TabLayout;->mSubTabTextSize:I

    .line 232
    .line 233
    invoke-static {v2, v4, v5}, Lcom/google/android/material/tabs/TabLayout;->access$1700(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    .line 234
    .line 235
    .line 236
    :cond_c
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 237
    .line 238
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 239
    .line 240
    .line 241
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 242
    .line 243
    .line 244
    :cond_d
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 245
    .line 246
    if-nez p1, :cond_f

    .line 247
    .line 248
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 249
    .line 250
    if-eqz p1, :cond_f

    .line 251
    .line 252
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 253
    .line 254
    if-eqz p1, :cond_f

    .line 255
    .line 256
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 257
    .line 258
    if-eqz v0, :cond_f

    .line 259
    .line 260
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 261
    .line 262
    iget v2, v0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    .line 263
    .line 264
    if-nez v2, :cond_f

    .line 265
    .line 266
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    .line 267
    .line 268
    if-ne v0, v1, :cond_f

    .line 269
    .line 270
    if-lez v3, :cond_e

    .line 271
    .line 272
    invoke-virtual {p1, v3, v8}, Landroid/widget/TextView;->measure(II)V

    .line 273
    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_e
    invoke-virtual {p1, v8, v8}, Landroid/widget/TextView;->measure(II)V

    .line 277
    .line 278
    .line 279
    :goto_3
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 286
    .line 287
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    const v3, 0x7f07112b

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    mul-int/2addr v2, v1

    .line 307
    add-int/2addr v2, p1

    .line 308
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 309
    .line 310
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 311
    .line 312
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    .line 314
    .line 315
    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 316
    .line 317
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 322
    .line 323
    .line 324
    :cond_f
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->customView:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    if-eqz p1, :cond_e

    .line 20
    .line 21
    if-nez v0, :cond_e

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 24
    .line 25
    if-eqz v0, :cond_e

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    and-int/lit16 v0, v0, 0xff

    .line 32
    .line 33
    if-eqz v0, :cond_8

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    if-eq v0, v1, :cond_6

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    if-eq v0, v2, :cond_1

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 46
    .line 47
    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->mNormalTypeface:Landroid/graphics/Typeface;

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-static {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->startTextColorChangeAnimation(ILandroid/widget/TextView;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->onHide()V

    .line 78
    .line 79
    .line 80
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    iget-object v3, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 93
    .line 94
    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 95
    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 99
    .line 100
    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout;->mBoldTypeface:Landroid/graphics/Typeface;

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 106
    .line 107
    iget-object v4, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 108
    .line 109
    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabTextColor()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-static {v3, v4}, Lcom/google/android/material/tabs/TabLayout;->startTextColorChangeAnimation(ILandroid/widget/TextView;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 121
    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->onShow()V

    .line 125
    .line 126
    .line 127
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 128
    .line 129
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    .line 130
    .line 131
    if-ne v0, v1, :cond_5

    .line 132
    .line 133
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->showMainTabTouchBackground(I)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_1

    .line 137
    .line 138
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 139
    .line 140
    if-eqz v0, :cond_d

    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_d

    .line 147
    .line 148
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->startReleaseEffect()V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_1

    .line 154
    .line 155
    :cond_6
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->showMainTabTouchBackground(I)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 159
    .line 160
    if-eqz v0, :cond_7

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->startReleaseEffect()V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 166
    .line 167
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 168
    .line 169
    .line 170
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->performClick()Z

    .line 171
    .line 172
    .line 173
    iput-boolean v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIsCallPerformClick:Z

    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :cond_8
    iput-boolean v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIsCallPerformClick:Z

    .line 178
    .line 179
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 180
    .line 181
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    .line 182
    .line 183
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eq v0, v2, :cond_b

    .line 190
    .line 191
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 192
    .line 193
    if-eqz v0, :cond_b

    .line 194
    .line 195
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 196
    .line 197
    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->mBoldTypeface:Landroid/graphics/Typeface;

    .line 198
    .line 199
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 203
    .line 204
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabTextColor()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-static {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->startTextColorChangeAnimation(ILandroid/widget/TextView;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 214
    .line 215
    if-eqz v0, :cond_9

    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->startPressEffect()V

    .line 218
    .line 219
    .line 220
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-eqz v0, :cond_c

    .line 231
    .line 232
    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 233
    .line 234
    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 235
    .line 236
    if-eqz v2, :cond_a

    .line 237
    .line 238
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 239
    .line 240
    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->mNormalTypeface:Landroid/graphics/Typeface;

    .line 241
    .line 242
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 243
    .line 244
    .line 245
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 246
    .line 247
    iget-object v3, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 248
    .line 249
    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 250
    .line 251
    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 252
    .line 253
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    invoke-static {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->startTextColorChangeAnimation(ILandroid/widget/TextView;)V

    .line 258
    .line 259
    .line 260
    :cond_a
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 261
    .line 262
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 263
    .line 264
    if-eqz v0, :cond_c

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->onHide()V

    .line 267
    .line 268
    .line 269
    goto :goto_0

    .line 270
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 271
    .line 272
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    .line 273
    .line 274
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 275
    .line 276
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-ne v0, v2, :cond_c

    .line 281
    .line 282
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 283
    .line 284
    if-eqz v0, :cond_c

    .line 285
    .line 286
    invoke-virtual {v0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->startPressEffect()V

    .line 287
    .line 288
    .line 289
    :cond_c
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->showMainTabTouchBackground(I)V

    .line 290
    .line 291
    .line 292
    :cond_d
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    :cond_e
    return v1

    .line 297
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 298
    .line 299
    .line 300
    move-result p0

    .line 301
    return p0
.end method

.method public final performClick()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIsCallPerformClick:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIsCallPerformClick:Z

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 15
    .line 16
    if-eqz v3, :cond_2

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    return v0
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 p1, 0x8

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final setSelected(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

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
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isSelected()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eq v0, p1, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 32
    .line 33
    .line 34
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 39
    .line 40
    .line 41
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 46
    .line 47
    .line 48
    :cond_5
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    .line 49
    .line 50
    if-eqz p0, :cond_6

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 53
    .line 54
    .line 55
    :cond_6
    return-void
.end method

.method public final showMainTabTouchBackground(I)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 6
    .line 7
    iget v2, v1, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v2, v3, :cond_4

    .line 11
    .line 12
    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabBackgroundResId:I

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 24
    .line 25
    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    if-eq p1, v3, :cond_1

    .line 35
    .line 36
    const/4 v4, 0x3

    .line 37
    if-eq p1, v4, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 61
    .line 62
    invoke-direct {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 63
    .line 64
    .line 65
    const-wide/16 v1, 0x190

    .line 66
    .line 67
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$TabView$3;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lcom/google/android/material/tabs/TabLayout$TabView$3;-><init>(Lcom/google/android/material/tabs/TabLayout$TabView;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 98
    .line 99
    invoke-direct {p1, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 100
    .line 101
    .line 102
    const-wide/16 v1, 0x64

    .line 103
    .line 104
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 111
    .line 112
    .line 113
    new-instance p1, Landroid/view/animation/ScaleAnimation;

    .line 114
    .line 115
    const v5, 0x3f733333    # 0.95f

    .line 116
    .line 117
    .line 118
    const/high16 v6, 0x3f800000    # 1.0f

    .line 119
    .line 120
    const v7, 0x3f733333    # 0.95f

    .line 121
    .line 122
    .line 123
    const/high16 v8, 0x3f800000    # 1.0f

    .line 124
    .line 125
    const/4 v9, 0x1

    .line 126
    const/high16 v10, 0x3f000000    # 0.5f

    .line 127
    .line 128
    const/4 v11, 0x1

    .line 129
    const/high16 v12, 0x3f000000    # 0.5f

    .line 130
    .line 131
    move-object v4, p1

    .line 132
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 133
    .line 134
    .line 135
    const-wide/16 v1, 0x15e

    .line 136
    .line 137
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 138
    .line 139
    .line 140
    sget-object v1, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    .line 141
    .line 142
    invoke-virtual {p1, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v3}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 149
    .line 150
    .line 151
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 152
    .line 153
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 154
    .line 155
    .line 156
    :cond_4
    :goto_0
    return-void
.end method

.method public final update()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->customView:Landroid/view/View;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v2, v1

    .line 10
    :goto_0
    const/16 v3, 0x8

    .line 11
    .line 12
    if-eqz v2, :cond_7

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-eq v4, p0, :cond_2

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    check-cast v4, Landroid/view/ViewGroup;

    .line 23
    .line 24
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    .line 31
    .line 32
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 33
    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_3
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 40
    .line 41
    if-eqz v4, :cond_4

    .line 42
    .line 43
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 47
    .line 48
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    .line 52
    .line 53
    if-eqz v4, :cond_5

    .line 54
    .line 55
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    :cond_5
    const v4, 0x1020014

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Landroid/widget/TextView;

    .line 66
    .line 67
    iput-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 68
    .line 69
    if-eqz v4, :cond_6

    .line 70
    .line 71
    invoke-virtual {v4}, Landroid/widget/TextView;->getMaxLines()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    iput v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    .line 76
    .line 77
    :cond_6
    const v4, 0x1020006

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Landroid/widget/ImageView;

    .line 85
    .line 86
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_7
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    .line 90
    .line 91
    if-eqz v2, :cond_8

    .line 92
    .line 93
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    .line 97
    .line 98
    :cond_8
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 99
    .line 100
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 101
    .line 102
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    .line 103
    .line 104
    const/4 v4, 0x1

    .line 105
    const/4 v5, -0x1

    .line 106
    const/4 v6, 0x0

    .line 107
    if-nez v2, :cond_25

    .line 108
    .line 109
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 110
    .line 111
    if-eqz v2, :cond_25

    .line 112
    .line 113
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 114
    .line 115
    const/4 v7, 0x2

    .line 116
    if-nez v2, :cond_b

    .line 117
    .line 118
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 119
    .line 120
    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    .line 121
    .line 122
    if-ne v2, v7, :cond_9

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    const v8, 0x7f0d03ed

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v8, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 140
    .line 141
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    const v8, 0x7f0d03ec

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v8, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 160
    .line 161
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 162
    .line 163
    const v8, 0x7f0a060c

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 171
    .line 172
    if-eqz v2, :cond_b

    .line 173
    .line 174
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 175
    .line 176
    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 177
    .line 178
    if-nez v8, :cond_b

    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    invoke-static {v9}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    if-eqz v9, :cond_a

    .line 193
    .line 194
    const v9, 0x7f0810a9

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_a
    const v9, 0x7f0810a8

    .line 199
    .line 200
    .line 201
    :goto_2
    sget-object v10, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 202
    .line 203
    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    sget-object v9, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 208
    .line 209
    invoke-static {v2, v8}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 210
    .line 211
    .line 212
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 213
    .line 214
    const/4 v8, 0x0

    .line 215
    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 216
    .line 217
    .line 218
    :cond_b
    :goto_3
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 219
    .line 220
    if-nez v2, :cond_c

    .line 221
    .line 222
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 223
    .line 224
    const v8, 0x7f0a04c6

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    check-cast v2, Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 232
    .line 233
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 234
    .line 235
    :cond_c
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 236
    .line 237
    iget v8, v2, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    .line 238
    .line 239
    if-ne v8, v7, :cond_d

    .line 240
    .line 241
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 242
    .line 243
    if-eqz v8, :cond_e

    .line 244
    .line 245
    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->mSubTabSelectedIndicatorColor:I

    .line 246
    .line 247
    if-eq v2, v5, :cond_e

    .line 248
    .line 249
    invoke-virtual {v8, v2}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->onSetSelectedIndicatorColor(I)V

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_d
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    .line 254
    .line 255
    if-eqz v8, :cond_e

    .line 256
    .line 257
    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->mTabSelectedIndicatorColor:I

    .line 258
    .line 259
    invoke-virtual {v8, v2}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->onSetSelectedIndicatorColor(I)V

    .line 260
    .line 261
    .line 262
    :cond_e
    :goto_4
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 263
    .line 264
    if-nez v2, :cond_f

    .line 265
    .line 266
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 267
    .line 268
    const v8, 0x7f0a0bd9

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    check-cast v2, Landroid/widget/TextView;

    .line 276
    .line 277
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 278
    .line 279
    :cond_f
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 280
    .line 281
    invoke-virtual {v2}, Landroid/widget/TextView;->getMaxLines()I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    iput v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    .line 286
    .line 287
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 288
    .line 289
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 290
    .line 291
    iget v8, v8, Lcom/google/android/material/tabs/TabLayout;->tabTextAppearance:I

    .line 292
    .line 293
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isSelected()Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-eqz v2, :cond_10

    .line 301
    .line 302
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 303
    .line 304
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 305
    .line 306
    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout;->mBoldTypeface:Landroid/graphics/Typeface;

    .line 307
    .line 308
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 309
    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_10
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 313
    .line 314
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 315
    .line 316
    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout;->mNormalTypeface:Landroid/graphics/Typeface;

    .line 317
    .line 318
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 319
    .line 320
    .line 321
    :goto_5
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 322
    .line 323
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 324
    .line 325
    iget v9, v2, Lcom/google/android/material/tabs/TabLayout;->tabTextSize:F

    .line 326
    .line 327
    float-to-int v9, v9

    .line 328
    invoke-static {v2, v8, v9}, Lcom/google/android/material/tabs/TabLayout;->access$1700(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    .line 329
    .line 330
    .line 331
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 332
    .line 333
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 334
    .line 335
    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 336
    .line 337
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 338
    .line 339
    .line 340
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 341
    .line 342
    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    .line 343
    .line 344
    if-ne v2, v7, :cond_13

    .line 345
    .line 346
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    .line 347
    .line 348
    if-nez v2, :cond_11

    .line 349
    .line 350
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 351
    .line 352
    const v8, 0x7f0a0afe

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    check-cast v2, Landroid/widget/TextView;

    .line 360
    .line 361
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    .line 362
    .line 363
    :cond_11
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    .line 364
    .line 365
    if-eqz v2, :cond_12

    .line 366
    .line 367
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 368
    .line 369
    iget v8, v8, Lcom/google/android/material/tabs/TabLayout;->mSubTabSubTextAppearance:I

    .line 370
    .line 371
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 372
    .line 373
    .line 374
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    .line 375
    .line 376
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 377
    .line 378
    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout;->mSubTabSubTextColors:Landroid/content/res/ColorStateList;

    .line 379
    .line 380
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 381
    .line 382
    .line 383
    :cond_12
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    .line 384
    .line 385
    if-eqz v2, :cond_13

    .line 386
    .line 387
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 388
    .line 389
    iget v9, v8, Lcom/google/android/material/tabs/TabLayout;->mSubTabTextSize:I

    .line 390
    .line 391
    invoke-static {v8, v2, v9}, Lcom/google/android/material/tabs/TabLayout;->access$1700(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    .line 392
    .line 393
    .line 394
    :cond_13
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 395
    .line 396
    if-nez v2, :cond_14

    .line 397
    .line 398
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 399
    .line 400
    if-eqz v2, :cond_14

    .line 401
    .line 402
    const v8, 0x7f0a04a2

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    check-cast v2, Landroid/widget/ImageView;

    .line 410
    .line 411
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 412
    .line 413
    :cond_14
    if-eqz v0, :cond_15

    .line 414
    .line 415
    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 416
    .line 417
    if-eqz v2, :cond_15

    .line 418
    .line 419
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    goto :goto_6

    .line 424
    :cond_15
    move-object v2, v1

    .line 425
    :goto_6
    if-eqz v2, :cond_16

    .line 426
    .line 427
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 428
    .line 429
    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    .line 430
    .line 431
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 432
    .line 433
    .line 434
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 435
    .line 436
    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 437
    .line 438
    if-eqz v8, :cond_16

    .line 439
    .line 440
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 441
    .line 442
    .line 443
    :cond_16
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 444
    .line 445
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    .line 446
    .line 447
    iget-object v9, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 448
    .line 449
    invoke-virtual {p0, v2, v9}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 450
    .line 451
    .line 452
    if-eqz v8, :cond_1a

    .line 453
    .line 454
    iget-object v9, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 455
    .line 456
    if-eqz v9, :cond_17

    .line 457
    .line 458
    iget-object v9, v9, Lcom/google/android/material/tabs/TabLayout$Tab;->subText:Ljava/lang/CharSequence;

    .line 459
    .line 460
    goto :goto_7

    .line 461
    :cond_17
    move-object v9, v1

    .line 462
    :goto_7
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 467
    .line 468
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 469
    .line 470
    .line 471
    move-result v10

    .line 472
    xor-int/2addr v10, v4

    .line 473
    const/16 v11, 0xd

    .line 474
    .line 475
    if-eqz v10, :cond_19

    .line 476
    .line 477
    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 478
    .line 479
    .line 480
    const v10, 0x7f0a023b

    .line 481
    .line 482
    .line 483
    invoke-virtual {v2, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    .line 488
    .line 489
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 490
    .line 491
    iget v2, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->labelVisibilityMode:I

    .line 492
    .line 493
    if-ne v2, v4, :cond_18

    .line 494
    .line 495
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    .line 497
    .line 498
    goto :goto_8

    .line 499
    :cond_18
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    .line 501
    .line 502
    :goto_8
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 503
    .line 504
    .line 505
    goto :goto_9

    .line 506
    :cond_19
    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    .line 517
    .line 518
    :cond_1a
    :goto_9
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 519
    .line 520
    iget v3, v2, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    .line 521
    .line 522
    const/4 v8, -0x2

    .line 523
    if-ne v3, v7, :cond_1e

    .line 524
    .line 525
    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->mode:I

    .line 526
    .line 527
    if-nez v2, :cond_1b

    .line 528
    .line 529
    goto :goto_a

    .line 530
    :cond_1b
    move v8, v5

    .line 531
    :goto_a
    if-eqz v0, :cond_1c

    .line 532
    .line 533
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->subText:Ljava/lang/CharSequence;

    .line 534
    .line 535
    :cond_1c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    xor-int/2addr v1, v4

    .line 540
    if-eqz v1, :cond_1d

    .line 541
    .line 542
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 543
    .line 544
    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->mSubTabIndicator2ndHeight:I

    .line 545
    .line 546
    goto :goto_b

    .line 547
    :cond_1d
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 548
    .line 549
    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->mSubTabIndicatorHeight:I

    .line 550
    .line 551
    :goto_b
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 552
    .line 553
    if-eqz v2, :cond_20

    .line 554
    .line 555
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    .line 556
    .line 557
    .line 558
    move-result v2

    .line 559
    if-eq v2, v1, :cond_20

    .line 560
    .line 561
    move v2, v4

    .line 562
    goto :goto_d

    .line 563
    :cond_1e
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 564
    .line 565
    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 566
    .line 567
    if-eqz v1, :cond_1f

    .line 568
    .line 569
    move v1, v5

    .line 570
    goto :goto_c

    .line 571
    :cond_1f
    move v1, v5

    .line 572
    move v8, v1

    .line 573
    :cond_20
    :goto_c
    move v2, v6

    .line 574
    :goto_d
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 575
    .line 576
    if-eqz v3, :cond_21

    .line 577
    .line 578
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    if-nez v3, :cond_21

    .line 583
    .line 584
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 585
    .line 586
    invoke-virtual {p0, v2, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 587
    .line 588
    .line 589
    goto :goto_e

    .line 590
    :cond_21
    if-eqz v2, :cond_22

    .line 591
    .line 592
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 593
    .line 594
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 595
    .line 596
    .line 597
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroid/widget/RelativeLayout;

    .line 598
    .line 599
    invoke-virtual {p0, v2, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 600
    .line 601
    .line 602
    :cond_22
    :goto_e
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 603
    .line 604
    if-nez v1, :cond_23

    .line 605
    .line 606
    goto :goto_f

    .line 607
    :cond_23
    new-instance v2, Lcom/google/android/material/tabs/TabLayout$TabView$2;

    .line 608
    .line 609
    invoke-direct {v2, p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView$2;-><init>(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/view/View;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 613
    .line 614
    .line 615
    :goto_f
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 616
    .line 617
    if-nez v1, :cond_24

    .line 618
    .line 619
    goto :goto_10

    .line 620
    :cond_24
    new-instance v2, Lcom/google/android/material/tabs/TabLayout$TabView$2;

    .line 621
    .line 622
    invoke-direct {v2, p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView$2;-><init>(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/view/View;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 626
    .line 627
    .line 628
    goto :goto_10

    .line 629
    :cond_25
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 630
    .line 631
    if-nez v1, :cond_26

    .line 632
    .line 633
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 634
    .line 635
    if-eqz v2, :cond_27

    .line 636
    .line 637
    :cond_26
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 638
    .line 639
    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 640
    .line 641
    .line 642
    :cond_27
    :goto_10
    if-eqz v0, :cond_28

    .line 643
    .line 644
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 645
    .line 646
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 647
    .line 648
    .line 649
    move-result v1

    .line 650
    if-nez v1, :cond_28

    .line 651
    .line 652
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 653
    .line 654
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 655
    .line 656
    .line 657
    :cond_28
    if-eqz v0, :cond_2b

    .line 658
    .line 659
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    .line 660
    .line 661
    if-eqz v1, :cond_2a

    .line 662
    .line 663
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 664
    .line 665
    .line 666
    move-result v1

    .line 667
    if-eq v1, v5, :cond_29

    .line 668
    .line 669
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    .line 670
    .line 671
    if-ne v1, v0, :cond_29

    .line 672
    .line 673
    move v0, v4

    .line 674
    goto :goto_11

    .line 675
    :cond_29
    move v0, v6

    .line 676
    :goto_11
    if-eqz v0, :cond_2b

    .line 677
    .line 678
    goto :goto_12

    .line 679
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 680
    .line 681
    const-string v0, "Tab not attached to a TabLayout"

    .line 682
    .line 683
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    throw p0

    .line 687
    :cond_2b
    move v4, v6

    .line 688
    :goto_12
    invoke-virtual {p0, v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->setSelected(Z)V

    .line 689
    .line 690
    .line 691
    return-void
.end method

.method public final updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object v2, v1

    .line 42
    :goto_1
    const/16 v3, 0x8

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    .line 65
    :cond_4
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/4 v5, 0x1

    .line 70
    xor-int/2addr v0, v5

    .line 71
    if-eqz p1, :cond_7

    .line 72
    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 79
    .line 80
    iget v2, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->labelVisibilityMode:I

    .line 81
    .line 82
    if-ne v2, v5, :cond_5

    .line 83
    .line 84
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    :goto_3
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_6
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    :cond_7
    :goto_4
    if-eqz p2, :cond_a

    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 108
    .line 109
    if-eqz v0, :cond_9

    .line 110
    .line 111
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-nez v6, :cond_9

    .line 116
    .line 117
    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 118
    .line 119
    iget v6, v6, Lcom/google/android/material/tabs/TabLayout;->mIconTextGap:I

    .line 120
    .line 121
    const/4 v7, -0x1

    .line 122
    if-eq v6, v7, :cond_8

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-static {v3, v6}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(ILandroid/content/Context;)F

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    float-to-int v6, v3

    .line 134
    goto :goto_5

    .line 135
    :cond_9
    move v6, v4

    .line 136
    :goto_5
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eq v6, v3, :cond_a

    .line 141
    .line 142
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 143
    .line 144
    .line 145
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 146
    .line 147
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 151
    .line 152
    .line 153
    if-eqz p1, :cond_a

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 160
    .line 161
    const/16 v2, 0xd

    .line 162
    .line 163
    invoke-virtual {p2, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 164
    .line 165
    .line 166
    const/16 v2, 0xf

    .line 167
    .line 168
    invoke-virtual {p2, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 169
    .line 170
    .line 171
    const/16 v2, 0x11

    .line 172
    .line 173
    const v3, 0x7f0a04a2

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    .line 181
    .line 182
    :cond_a
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 183
    .line 184
    if-eqz p1, :cond_b

    .line 185
    .line 186
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_b
    move-object p1, v1

    .line 190
    :goto_6
    if-eqz v0, :cond_c

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_c
    move-object v1, p1

    .line 194
    :goto_7
    invoke-virtual {p0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method
