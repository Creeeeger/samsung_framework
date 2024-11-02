.class public Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

.field public mArrowCornerRadius:I

.field public mArrowHeight:I

.field public mArrowMargin:I

.field public mArrowWidth:I

.field public final mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public mFontSize:I

.field public mIsShowing:Z

.field public mScreenWidth:I

.field public mTextView:Landroid/widget/TextView;

.field public mTextViewCornerRadius:I

.field public mTextViewMargin:I

.field public mTextViewPadding:I

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Landroid/view/WindowManager;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/view/WindowManager;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mWindowManager:Landroid/view/WindowManager;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    .line 15
    .line 16
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 17
    .line 18
    const/4 v1, -0x2

    .line 19
    const/4 v2, -0x2

    .line 20
    const/16 v3, 0x7e8

    .line 21
    .line 22
    const v4, 0x40008

    .line 23
    .line 24
    .line 25
    const/4 v5, -0x3

    .line 26
    move-object v0, p1

    .line 27
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 28
    .line 29
    .line 30
    const p2, 0x1030003

    .line 31
    .line 32
    .line 33
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 34
    .line 35
    const p2, 0x800033

    .line 36
    .line 37
    .line 38
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const p2, 0x7f0d001d

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const p2, 0x7f0a0bb7

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Landroid/widget/TextView;

    .line 66
    .line 67
    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final getTextWidthWith(Landroid/graphics/Rect;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mScreenWidth:I

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    sub-int/2addr v0, p1

    .line 8
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowWidth:I

    .line 9
    .line 10
    sub-int/2addr v0, p1

    .line 11
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowMargin:I

    .line 12
    .line 13
    sub-int/2addr v0, p1

    .line 14
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextViewMargin:I

    .line 15
    .line 16
    sub-int/2addr v0, p1

    .line 17
    const/high16 p1, -0x80000000

    .line 18
    .line 19
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->measure(II)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public final getWindowWidthWith(Landroid/graphics/Rect;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->getTextWidthWith(Landroid/graphics/Rect;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowWidth:I

    .line 6
    .line 7
    add-int/2addr p1, v0

    .line 8
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowMargin:I

    .line 9
    .line 10
    add-int/2addr p1, v0

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const v0, 0x7f070053

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    add-int/2addr p0, p1

    .line 23
    return p0
.end method

.method public hide()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mIsShowing:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mIsShowing:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mWindowManager:Landroid/view/WindowManager;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final isAnchorViewOnLeft(Landroid/graphics/Rect;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mScreenWidth:I

    .line 6
    .line 7
    div-int/lit8 p0, p0, 0x2

    .line 8
    .line 9
    if-ge p1, p0, :cond_0

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
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->updateTooltipView()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mWindowManager:Landroid/view/WindowManager;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 15
    .line 16
    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->hide()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->hide()V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final updateTooltipView()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 10
    .line 11
    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mScreenWidth:I

    .line 12
    .line 13
    const v1, 0x7f07004f

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowWidth:I

    .line 21
    .line 22
    const v1, 0x7f07004d

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowHeight:I

    .line 30
    .line 31
    const v1, 0x7f07004e

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowMargin:I

    .line 39
    .line 40
    const v1, 0x7f07004c

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowCornerRadius:I

    .line 48
    .line 49
    const v1, 0x7f070050

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mFontSize:I

    .line 57
    .line 58
    const v1, 0x7f070051

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextViewMargin:I

    .line 66
    .line 67
    const v1, 0x7f070052

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextViewPadding:I

    .line 75
    .line 76
    const v1, 0x7f070054

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextViewCornerRadius:I

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    .line 86
    .line 87
    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mFontSize:I

    .line 88
    .line 89
    int-to-float v1, v1

    .line 90
    const/4 v2, 0x0

    .line 91
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    .line 95
    .line 96
    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextViewPadding:I

    .line 97
    .line 98
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 108
    .line 109
    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextViewCornerRadius:I

    .line 110
    .line 111
    int-to-float v1, v1

    .line 112
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const v3, 0x7f060020

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    .line 130
    .line 131
    iget-boolean v1, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    .line 132
    .line 133
    if-eqz v1, :cond_0

    .line 134
    .line 135
    iget-object v1, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 136
    .line 137
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 138
    .line 139
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 143
    .line 144
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 145
    .line 146
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 147
    .line 148
    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowWidth()I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    add-int/2addr v6, v4

    .line 155
    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowHeight()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    add-int/2addr v0, v1

    .line 160
    invoke-direct {v5, v4, v1, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->isAnchorViewOnLeft(Landroid/graphics/Rect;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_1

    .line 168
    .line 169
    const v1, 0x7f0a00f6

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_1
    const v1, 0x7f0a00f7

    .line 174
    .line 175
    .line 176
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 188
    .line 189
    int-to-float v6, v6

    .line 190
    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 191
    .line 192
    int-to-float v7, v7

    .line 193
    invoke-static {v6, v7, v0}, Lcom/android/systemui/recents/TriangleShape;->createHorizontal(FFZ)Lcom/android/systemui/recents/TriangleShape;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    new-instance v7, Landroid/graphics/drawable/ShapeDrawable;

    .line 198
    .line 199
    invoke-direct {v7, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    .line 216
    .line 217
    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 218
    .line 219
    int-to-float v3, v3

    .line 220
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 221
    .line 222
    int-to-float v4, v4

    .line 223
    sget v8, Lcom/android/systemui/accessibility/floatingmenu/TriangleStrokeShape;->$r8$clinit:I

    .line 224
    .line 225
    new-instance v8, Landroid/graphics/Path;

    .line 226
    .line 227
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 228
    .line 229
    .line 230
    const/high16 v9, 0x40000000    # 2.0f

    .line 231
    .line 232
    const/4 v10, 0x0

    .line 233
    if-eqz v0, :cond_2

    .line 234
    .line 235
    invoke-virtual {v8, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 236
    .line 237
    .line 238
    div-float v9, v4, v9

    .line 239
    .line 240
    invoke-virtual {v8, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v8, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 244
    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_2
    invoke-virtual {v8, v10, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 248
    .line 249
    .line 250
    div-float v9, v4, v9

    .line 251
    .line 252
    invoke-virtual {v8, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v8, v10, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 256
    .line 257
    .line 258
    :goto_2
    new-instance v9, Lcom/android/systemui/accessibility/floatingmenu/TriangleStrokeShape;

    .line 259
    .line 260
    invoke-direct {v9, v8, v3, v4}, Lcom/android/systemui/accessibility/floatingmenu/TriangleStrokeShape;-><init>(Landroid/graphics/Path;FF)V

    .line 261
    .line 262
    .line 263
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    .line 264
    .line 265
    invoke-direct {v3, v9}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 273
    .line 274
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    const v9, 0x7f060024

    .line 282
    .line 283
    .line 284
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    .line 285
    .line 286
    .line 287
    move-result v8

    .line 288
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    const v9, 0x7f07004b

    .line 296
    .line 297
    .line 298
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    int-to-float v8, v8

    .line 303
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 304
    .line 305
    .line 306
    new-instance v4, Landroid/graphics/CornerPathEffect;

    .line 307
    .line 308
    iget v8, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowCornerRadius:I

    .line 309
    .line 310
    int-to-float v8, v8

    .line 311
    invoke-direct {v4, v8}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 315
    .line 316
    .line 317
    new-instance v4, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;

    .line 318
    .line 319
    filled-new-array {v7, v3}, [Landroid/graphics/drawable/Drawable;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    invoke-direct {v4, v3}, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 334
    .line 335
    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowWidth:I

    .line 336
    .line 337
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 338
    .line 339
    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowHeight:I

    .line 340
    .line 341
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 342
    .line 343
    if-eqz v0, :cond_3

    .line 344
    .line 345
    move v4, v2

    .line 346
    goto :goto_3

    .line 347
    :cond_3
    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowMargin:I

    .line 348
    .line 349
    :goto_3
    if-eqz v0, :cond_4

    .line 350
    .line 351
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowMargin:I

    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_4
    move v0, v2

    .line 355
    :goto_4
    invoke-virtual {v3, v4, v2, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    .line 360
    .line 361
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    .line 362
    .line 363
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->isAnchorViewOnLeft(Landroid/graphics/Rect;)Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    if-eqz v1, :cond_6

    .line 372
    .line 373
    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mScreenWidth:I

    .line 374
    .line 375
    iget v3, v5, Landroid/graphics/Rect;->right:I

    .line 376
    .line 377
    sub-int/2addr v1, v3

    .line 378
    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->getWindowWidthWith(Landroid/graphics/Rect;)I

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowWidth:I

    .line 383
    .line 384
    add-int/2addr v3, v4

    .line 385
    if-ge v1, v3, :cond_5

    .line 386
    .line 387
    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mScreenWidth:I

    .line 388
    .line 389
    iget v3, v5, Landroid/graphics/Rect;->right:I

    .line 390
    .line 391
    sub-int/2addr v1, v3

    .line 392
    sub-int/2addr v1, v4

    .line 393
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 394
    .line 395
    goto :goto_5

    .line 396
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->getTextWidthWith(Landroid/graphics/Rect;)I

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 401
    .line 402
    goto :goto_5

    .line 403
    :cond_6
    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 404
    .line 405
    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->getWindowWidthWith(Landroid/graphics/Rect;)I

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowWidth:I

    .line 410
    .line 411
    add-int/2addr v3, v4

    .line 412
    if-ge v1, v3, :cond_7

    .line 413
    .line 414
    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 415
    .line 416
    sub-int/2addr v1, v4

    .line 417
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 418
    .line 419
    goto :goto_5

    .line 420
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->getTextWidthWith(Landroid/graphics/Rect;)I

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 425
    .line 426
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    .line 427
    .line 428
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    .line 430
    .line 431
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    .line 432
    .line 433
    iget-boolean v0, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    .line 434
    .line 435
    if-eqz v0, :cond_9

    .line 436
    .line 437
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 438
    .line 439
    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->isAnchorViewOnLeft(Landroid/graphics/Rect;)Z

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    if-eqz v1, :cond_8

    .line 444
    .line 445
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    .line 446
    .line 447
    iget v1, v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    .line 448
    .line 449
    goto :goto_6

    .line 450
    :cond_8
    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mScreenWidth:I

    .line 451
    .line 452
    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->getWindowWidthWith(Landroid/graphics/Rect;)I

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    sub-int/2addr v1, v2

    .line 457
    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    .line 458
    .line 459
    iget v2, v2, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    .line 460
    .line 461
    sub-int/2addr v1, v2

    .line 462
    :goto_6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 463
    .line 464
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 465
    .line 466
    iget v1, v5, Landroid/graphics/Rect;->top:I

    .line 467
    .line 468
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 469
    .line 470
    goto :goto_8

    .line 471
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 472
    .line 473
    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->isAnchorViewOnLeft(Landroid/graphics/Rect;)Z

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    if-eqz v1, :cond_a

    .line 478
    .line 479
    iget v1, v5, Landroid/graphics/Rect;->right:I

    .line 480
    .line 481
    goto :goto_7

    .line 482
    :cond_a
    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 483
    .line 484
    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->getWindowWidthWith(Landroid/graphics/Rect;)I

    .line 485
    .line 486
    .line 487
    move-result v3

    .line 488
    sub-int/2addr v1, v3

    .line 489
    :goto_7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 490
    .line 491
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 492
    .line 493
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    iget v3, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mScreenWidth:I

    .line 498
    .line 499
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    sub-int/2addr v3, v4

    .line 504
    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowWidth:I

    .line 505
    .line 506
    sub-int/2addr v3, v4

    .line 507
    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowMargin:I

    .line 508
    .line 509
    sub-int/2addr v3, v4

    .line 510
    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextViewMargin:I

    .line 511
    .line 512
    sub-int/2addr v3, v4

    .line 513
    const/high16 v4, -0x80000000

    .line 514
    .line 515
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 516
    .line 517
    .line 518
    move-result v3

    .line 519
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 520
    .line 521
    .line 522
    move-result v2

    .line 523
    iget-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    .line 524
    .line 525
    invoke-virtual {v4, v3, v2}, Landroid/widget/TextView;->measure(II)V

    .line 526
    .line 527
    .line 528
    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    .line 529
    .line 530
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    div-int/lit8 v2, v2, 0x2

    .line 535
    .line 536
    sub-int/2addr v1, v2

    .line 537
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 538
    .line 539
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    .line 540
    .line 541
    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->offsetForLeftNaviBar()Z

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    if-eqz v0, :cond_b

    .line 546
    .line 547
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 548
    .line 549
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 550
    .line 551
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    .line 552
    .line 553
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getNavigationBarHeight()I

    .line 554
    .line 555
    .line 556
    move-result p0

    .line 557
    add-int/2addr p0, v1

    .line 558
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 559
    .line 560
    :cond_b
    return-void
.end method
