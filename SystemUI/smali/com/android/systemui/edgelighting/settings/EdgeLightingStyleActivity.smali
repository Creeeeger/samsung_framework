.class public Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static sConfigured:Z = false

.field public static sFlipFont:I


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mActionBar:Landroid/widget/LinearLayout;

.field public mAnimatorSet:Landroid/animation/AnimatorSet;

.field public mApplyBtn:Landroid/widget/Button;

.field public mAutoRadioButton:Landroid/widget/RadioButton;

.field public mCancelBtn:Landroid/widget/Button;

.field public mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

.field public mColorGridView:Landroid/widget/GridView;

.field public mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

.field public mColorRadioButton:Landroid/widget/RadioButton;

.field public final mColorSetListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$10;

.field public mColorTabLayout:Landroid/widget/LinearLayout;

.field public mCurDuration:I

.field public mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

.field public mCurThickness:I

.field public mCurTransparency:I

.field public final mEdgeLightingCallBack:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;

.field public mEdgeLightingEffectColumn:I

.field public final mEffectAccessibilityDelegate:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$12;

.field public mEffectAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

.field public mEffectGridView:Landroid/widget/GridView;

.field public final mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

.field public mIsShowAppIcon:Z

.field public mIsStartByRoutine:Z

.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field public mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

.field public mMainRoundedLayout:Landroid/widget/RelativeLayout;

.field public final mOnTouchListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;

.field public final mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

.field public mPreviewMode:Z

.field public final mRadioButtonListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;

.field public mRootLayout:Landroid/widget/RelativeLayout;

.field public mRoutineEffectColor:I

.field public mSelectedColor:Ljava/lang/Integer;

.field public mSelectedColorIndex:I

.field public mSubOptionAdvancedLayout:Landroid/view/ViewGroup;

.field public mSubOptionColorLayout:Landroid/view/ViewGroup;

.field public mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

.field public mSubOptionRoot:Landroid/widget/RelativeLayout;

.field public mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field public final mTabListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$6;

.field public mType:I


# direct methods
.method public static -$$Nest$msetDynamicWidth(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Landroid/widget/GridView;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-interface {v0, v1, v2, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1, v1}, Landroid/widget/GridView;->measure(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const v1, 0x7f07117b

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    mul-int/2addr v0, p2

    .line 42
    invoke-virtual {p1}, Landroid/widget/GridView;->getHorizontalSpacing()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/lit8 p2, p2, -0x1

    .line 47
    .line 48
    mul-int/2addr p2, v1

    .line 49
    add-int/2addr p2, v0

    .line 50
    mul-int/lit8 p0, p0, 0x2

    .line 51
    .line 52
    add-int/2addr p0, p2

    .line 53
    invoke-virtual {p1}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/widget/GridView;->requestLayout()V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method

.method public static -$$Nest$mupdatePreviewEdgeLighting(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->getEdgeLightingColor()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    filled-new-array {v0}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 14
    .line 15
    iput-object v0, v1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectColors:[I

    .line 16
    .line 17
    iget v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    .line 18
    .line 19
    int-to-float v0, v0

    .line 20
    const/high16 v2, 0x42c80000    # 100.0f

    .line 21
    .line 22
    div-float/2addr v0, v2

    .line 23
    const/high16 v2, 0x3f800000    # 1.0f

    .line 24
    .line 25
    sub-float/2addr v2, v0

    .line 26
    iput v2, v1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 33
    .line 34
    invoke-interface {v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    .line 39
    .line 40
    invoke-static {v0, v2, v3}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStyleWidth(Landroid/content/Context;Ljava/lang/String;I)F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    .line 45
    .line 46
    iput v0, v1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    .line 47
    .line 48
    iput v2, v1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mWidthDepth:I

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    iput-boolean v1, v0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsMultiResolutionSupoorted:Z

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v2, " updatePreviewEdgeLighting "

    .line 60
    .line 61
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 65
    .line 66
    iget v2, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 81
    .line 82
    invoke-interface {v0, p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;->updatePreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 5
    .line 6
    const-string v0, "EdgeLightingStyleActivity"

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    .line 12
    .line 13
    new-instance v1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    .line 22
    .line 23
    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    .line 24
    .line 25
    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    .line 30
    .line 31
    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRoutineEffectColor:I

    .line 32
    .line 33
    const/4 v1, -0x1

    .line 34
    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mType:I

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEdgeLightingEffectColumn:I

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColor:Ljava/lang/Integer;

    .line 40
    .line 41
    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRadioButtonListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;

    .line 47
    .line 48
    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    .line 49
    .line 50
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Landroid/os/Looper;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    .line 58
    .line 59
    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mOnTouchListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;

    .line 65
    .line 66
    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEdgeLightingCallBack:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 74
    .line 75
    new-instance v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$6;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$6;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$6;

    .line 81
    .line 82
    new-instance v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$10;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$10;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorSetListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$10;

    .line 88
    .line 89
    new-instance v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$12;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$12;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAccessibilityDelegate:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$12;

    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public final calculateColumnCount(Landroid/widget/GridView;I)I
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const v3, 0x7f071178

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ge v0, v2, :cond_0

    .line 39
    .line 40
    const/4 v2, -0x1

    .line 41
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const v2, 0x7f07117d

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 56
    .line 57
    :goto_0
    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-interface {v1, v2, v3, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p1, v2, v2}, Landroid/widget/GridView;->measure(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p1}, Landroid/widget/GridView;->getHorizontalSpacing()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    add-int/2addr p1, v1

    .line 82
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const v2, 0x7f07116a

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    sub-int/2addr v0, v1

    .line 94
    div-int/2addr v0, p1

    .line 95
    iput v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEdgeLightingEffectColumn:I

    .line 96
    .line 97
    :cond_1
    iget p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEdgeLightingEffectColumn:I

    .line 98
    .line 99
    if-gt p2, p0, :cond_2

    .line 100
    .line 101
    return p2

    .line 102
    :cond_2
    mul-int/lit8 p1, p0, 0x2

    .line 103
    .line 104
    if-gt p2, p1, :cond_3

    .line 105
    .line 106
    return p0

    .line 107
    :cond_3
    rem-int/lit8 p0, p2, 0x2

    .line 108
    .line 109
    if-nez p0, :cond_4

    .line 110
    .line 111
    div-int/lit8 p2, p2, 0x2

    .line 112
    .line 113
    return p2

    .line 114
    :cond_4
    div-int/lit8 p2, p2, 0x2

    .line 115
    .line 116
    add-int/lit8 p2, p2, 0x1

    .line 117
    .line 118
    return p2
.end method

.method public final getCustomColor(Z)I
    .locals 1

    .line 1
    const v0, -0xb37941

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRoutineEffectColor:I

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, p0

    .line 12
    :goto_0
    return v0

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "edgelighting_custom_color"

    .line 22
    .line 23
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final getEdgeLightingColor()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const p0, -0xb37941

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v1, 0x64

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor;->getDeviceWallPaperColorIndex(Landroid/content/ContentResolver;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/16 v1, 0x63

    .line 23
    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->getCustomColor(Z)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-static {v0, p0, v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStylePreDefineColor(Landroid/content/Context;IZ)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    :goto_0
    return p0
.end method

.method public final hideBottomBarSubOption(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionColorLayout:Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionColorLayout:Landroid/view/ViewGroup;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    move v0, v1

    .line 38
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionAdvancedLayout:Landroid/view/ViewGroup;

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionAdvancedLayout:Landroid/view/ViewGroup;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v1, v0

    .line 55
    :goto_1
    if-eqz v1, :cond_3

    .line 56
    .line 57
    if-ltz p1, :cond_3

    .line 58
    .line 59
    iput p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mType:I

    .line 60
    .line 61
    :cond_3
    return v1
.end method

.method public final hidePreviewEdgeLighting()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;->stopPreview()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    :cond_0
    return-void
.end method

.method public final hidePreviewEdgeLighting(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hidePreviewEdgeLighting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final makeSeekBar(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Landroid/view/ViewGroup;

    .line 6
    .line 7
    const v0, 0x7f0a04c0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->getTitleStringID()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    const v0, 0x7f0a09c3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    const p3, 0x7f0a09c4

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    check-cast p3, Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    const p3, 0x7f0a09bf

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Landroidx/appcompat/widget/SeslSeekBar;

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const/4 p3, 0x1

    .line 68
    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 69
    .line 70
    .line 71
    const/4 p4, 0x5

    .line 72
    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p5}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 76
    .line 77
    .line 78
    new-instance p4, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;

    .line 79
    .line 80
    invoke-direct {p4, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    .line 81
    .line 82
    .line 83
    iput-object p4, p2, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 84
    .line 85
    sget-object p4, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$13;->$SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption:[I

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    aget p1, p4, p1

    .line 92
    .line 93
    if-eq p1, p3, :cond_2

    .line 94
    .line 95
    const/4 p3, 0x2

    .line 96
    if-eq p1, p3, :cond_1

    .line 97
    .line 98
    const/4 p3, 0x3

    .line 99
    if-eq p1, p3, :cond_0

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    iget p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    .line 103
    .line 104
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const p3, 0x7f1304fa

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p0, p2, p1}, Lcom/android/systemui/edgelighting/utils/Utils;->setSeekBarContentDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    iget p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    .line 123
    .line 124
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const p3, 0x7f1304fb

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {p0, p2, p1}, Lcom/android/systemui/edgelighting/utils/Utils;->setSeekBarContentDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_2
    iget p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    .line 143
    .line 144
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const p3, 0x7f13051e

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {p0, p2, p1}, Lcom/android/systemui/edgelighting/utils/Utils;->setSeekBarContentDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    :goto_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a0aea

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_9

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 20
    .line 21
    invoke-interface {v0, p0}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 34
    .line 35
    invoke-interface {v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, ";"

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    .line 50
    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    .line 92
    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    .line 113
    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRoutineEffectColor:I

    .line 134
    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    .line 150
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string/jumbo v3, "sendCurrentSettingToRoutine() data=["

    .line 154
    .line 155
    .line 156
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v3, "]"

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    new-instance v1, Landroid/content/Intent;

    .line 175
    .line 176
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v2, "label_params"

    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    const-string p1, "intent_params"

    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    .line 196
    .line 197
    const/4 p1, -0x1

    .line 198
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_0
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 214
    .line 215
    invoke-interface {v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    const-string p1, "edge_lighting_style_type_str"

    .line 223
    .line 224
    const/4 v2, -0x2

    .line 225
    invoke-static {v0, p1, v1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 226
    .line 227
    .line 228
    new-instance p1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string v0, "EdgeLightingSaveStyleInfo,"

    .line 231
    .line 232
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string v1, "Effect="

    .line 238
    .line 239
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 243
    .line 244
    invoke-interface {v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 259
    .line 260
    sget-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->COLOR:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 261
    .line 262
    invoke-interface {v0, v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    const/4 v1, 0x0

    .line 267
    const-string v3, ","

    .line 268
    .line 269
    if-eqz v0, :cond_4

    .line 270
    .line 271
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    .line 276
    .line 277
    invoke-static {v0, v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;I)V

    .line 278
    .line 279
    .line 280
    iget v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    .line 281
    .line 282
    if-nez v0, :cond_1

    .line 283
    .line 284
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    const/4 v4, 0x1

    .line 289
    invoke-static {v0, v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingColorType(Landroid/content/ContentResolver;I)V

    .line 290
    .line 291
    .line 292
    goto :goto_0

    .line 293
    :cond_1
    const/16 v4, 0x63

    .line 294
    .line 295
    if-ne v0, v4, :cond_2

    .line 296
    .line 297
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    const/4 v4, 0x2

    .line 302
    invoke-static {v0, v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingColorType(Landroid/content/ContentResolver;I)V

    .line 303
    .line 304
    .line 305
    goto :goto_0

    .line 306
    :cond_2
    const/16 v4, 0x64

    .line 307
    .line 308
    if-ne v0, v4, :cond_3

    .line 309
    .line 310
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    const/4 v4, 0x3

    .line 315
    invoke-static {v0, v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingColorType(Landroid/content/ContentResolver;I)V

    .line 316
    .line 317
    .line 318
    goto :goto_0

    .line 319
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-static {v0, v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingColorType(Landroid/content/ContentResolver;I)V

    .line 324
    .line 325
    .line 326
    :goto_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    const-string v4, "Color="

    .line 332
    .line 333
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    .line 337
    .line 338
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 349
    .line 350
    sget-object v4, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 351
    .line 352
    invoke-interface {v0, v4}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-eqz v0, :cond_5

    .line 357
    .line 358
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    .line 363
    .line 364
    const-string v5, "edge_lighting_thickness"

    .line 365
    .line 366
    invoke-static {v0, v5, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 367
    .line 368
    .line 369
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string v4, "Width="

    .line 375
    .line 376
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    .line 380
    .line 381
    invoke-static {v4, p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingWidth(ILandroid/content/Context;)I

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 396
    .line 397
    sget-object v4, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 398
    .line 399
    invoke-interface {v0, v4}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_6

    .line 404
    .line 405
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    .line 410
    .line 411
    const-string v5, "edge_lighting_transparency"

    .line 412
    .line 413
    invoke-static {v0, v5, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 414
    .line 415
    .line 416
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    const-string v4, "Transparency="

    .line 422
    .line 423
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    .line 427
    .line 428
    int-to-float v4, v4

    .line 429
    const/high16 v5, 0x42c80000    # 100.0f

    .line 430
    .line 431
    div-float/2addr v4, v5

    .line 432
    const/high16 v5, 0x3f800000    # 1.0f

    .line 433
    .line 434
    sub-float/2addr v5, v4

    .line 435
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 446
    .line 447
    sget-object v4, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 448
    .line 449
    invoke-interface {v0, v4}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    if-eqz v0, :cond_7

    .line 454
    .line 455
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    .line 460
    .line 461
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    const-string v5, "edge_lighting_duration"

    .line 466
    .line 467
    invoke-static {v0, v5, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 468
    .line 469
    .line 470
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    const-string v2, "Duration="

    .line 476
    .line 477
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    .line 481
    .line 482
    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    const-string v2, "edgelighting_pref"

    .line 501
    .line 502
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    if-eqz v0, :cond_8

    .line 507
    .line 508
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 513
    .line 514
    invoke-interface {v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-static {v1}, Lcom/android/systemui/edgelighting/utils/Utils;->getEffectEnglishName(Ljava/lang/String;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    const-string v2, "36105"

    .line 523
    .line 524
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 525
    .line 526
    .line 527
    iget v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    .line 528
    .line 529
    invoke-static {v1}, Lcom/android/systemui/edgelighting/utils/Utils;->getColorName(I)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    const-string v2, "36106"

    .line 534
    .line 535
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 536
    .line 537
    .line 538
    iget v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    .line 539
    .line 540
    div-int/lit8 v1, v1, 0x5

    .line 541
    .line 542
    const-string v2, "36107"

    .line 543
    .line 544
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 545
    .line 546
    .line 547
    const-string v1, "36108"

    .line 548
    .line 549
    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    .line 550
    .line 551
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 552
    .line 553
    .line 554
    const-string v1, "36110"

    .line 555
    .line 556
    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    .line 557
    .line 558
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 559
    .line 560
    .line 561
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 562
    .line 563
    .line 564
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    .line 565
    .line 566
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object p1

    .line 570
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .line 572
    .line 573
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 574
    .line 575
    .line 576
    goto :goto_1

    .line 577
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 578
    .line 579
    .line 580
    move-result p1

    .line 581
    const v0, 0x7f0a0aeb

    .line 582
    .line 583
    .line 584
    if-ne p1, v0, :cond_a

    .line 585
    .line 586
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 587
    .line 588
    .line 589
    :cond_a
    :goto_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showColorPickerDialog()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColor:Ljava/lang/Integer;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/picker3/app/SeslColorPickerDialog;->mColorPicker:Landroidx/picker3/widget/SeslColorPicker;

    .line 29
    .line 30
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    .line 31
    .line 32
    iput-object p1, v1, Landroidx/picker3/widget/SeslRecentColorInfo;->mNewColor:Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/picker3/widget/SeslColorPicker;->updateRecentColorLayout()V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->updateLayout()V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    .line 41
    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->notifyDataSetChanged()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->sConfigured:Z

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingAnalytics;->initEdgeLightingAnalyticsStates(Landroid/app/Application;)V

    .line 14
    .line 15
    .line 16
    sput-boolean v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->sConfigured:Z

    .line 17
    .line 18
    :cond_0
    sget p1, Lcom/android/systemui/edgelighting/Constants;->$r8$clinit:I

    .line 19
    .line 20
    const-string p1, "com.samsung.android.app.routines"

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    .line 31
    .line 32
    const p1, 0x7f0d03f0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x3

    .line 57
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    const/high16 v1, -0x1000000

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 65
    .line 66
    .line 67
    const v1, 0x106000c

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string/jumbo v3, "show_notification_app_icon"

    .line 82
    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-ne p1, v0, :cond_1

    .line 90
    .line 91
    move p1, v0

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    move p1, v4

    .line 94
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsShowAppIcon:Z

    .line 95
    .line 96
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {p1, v3}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_2

    .line 109
    .line 110
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    iget-object v3, v3, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 115
    .line 116
    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 121
    .line 122
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 123
    .line 124
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->initColorTypeIndex(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    iput p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const-string v3, "edge_lighting_thickness"

    .line 146
    .line 147
    const/4 v5, -0x2

    .line 148
    invoke-static {p1, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    iput p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-string v3, "edge_lighting_transparency"

    .line 159
    .line 160
    invoke-static {p1, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    iput p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadEdgeLightingDurationOptionType(Landroid/content/Context;)I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    iput p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    .line 175
    .line 176
    iget-boolean p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    .line 177
    .line 178
    const/4 v3, 0x4

    .line 179
    const/4 v5, 0x2

    .line 180
    if-eqz p1, :cond_6

    .line 181
    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    if-eqz p1, :cond_3

    .line 187
    .line 188
    const-string v6, "intent_params"

    .line 189
    .line 190
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    goto :goto_1

    .line 195
    :cond_3
    const/4 p1, 0x0

    .line 196
    :goto_1
    if-eqz p1, :cond_5

    .line 197
    .line 198
    const-string v6, ";"

    .line 199
    .line 200
    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    aget-object v6, p1, v4

    .line 205
    .line 206
    aget-object v7, p1, v0

    .line 207
    .line 208
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    aget-object v8, p1, v5

    .line 213
    .line 214
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    aget-object v2, p1, v2

    .line 219
    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    aget-object v9, p1, v3

    .line 225
    .line 226
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    const/4 v10, 0x5

    .line 231
    aget-object p1, p1, v10

    .line 232
    .line 233
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    iget-object v10, v10, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 242
    .line 243
    invoke-virtual {v10, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    check-cast v10, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 248
    .line 249
    iput-object v10, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 250
    .line 251
    if-eqz v10, :cond_4

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_4
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    invoke-virtual {v10}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getDefalutStyle()Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    :goto_2
    iput-object v10, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 263
    .line 264
    iput v7, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    .line 265
    .line 266
    iput v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    .line 267
    .line 268
    iput v8, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    .line 269
    .line 270
    iput v9, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    .line 271
    .line 272
    iput p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRoutineEffectColor:I

    .line 273
    .line 274
    iget-object v10, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    .line 275
    .line 276
    const-string v11, "loadRoutineEdgeLightingSetting() : type="

    .line 277
    .line 278
    const-string v12, ",color="

    .line 279
    .line 280
    const-string v13, ",alpha="

    .line 281
    .line 282
    invoke-static {v11, v6, v12, v7, v13}, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    const-string v7, ",width="

    .line 287
    .line 288
    const-string v11, ",time="

    .line 289
    .line 290
    invoke-static {v6, v8, v7, v2, v11}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v2, ",colorValue="

    .line 297
    .line 298
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-static {v10, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_5
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getDefalutStyle()Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 321
    .line 322
    iput v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    .line 323
    .line 324
    iput v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    .line 325
    .line 326
    iput v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    .line 327
    .line 328
    iput v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    .line 329
    .line 330
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    .line 331
    .line 332
    const-string v2, "loadRoutineEdgeLightingSetting() : set default"

    .line 333
    .line 334
    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    :cond_6
    :goto_3
    const p1, 0x7f0a060a

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 345
    .line 346
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 347
    .line 348
    const p1, 0x7f0a079b

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    check-cast p1, Landroid/widget/LinearLayout;

    .line 356
    .line 357
    const p1, 0x7f0a005f

    .line 358
    .line 359
    .line 360
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    check-cast p1, Landroid/widget/LinearLayout;

    .line 365
    .line 366
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    .line 367
    .line 368
    const p1, 0x7f0a0aea

    .line 369
    .line 370
    .line 371
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    check-cast p1, Landroid/widget/Button;

    .line 376
    .line 377
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mApplyBtn:Landroid/widget/Button;

    .line 378
    .line 379
    invoke-virtual {p1, v0}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 380
    .line 381
    .line 382
    const p1, 0x7f0a0aeb

    .line 383
    .line 384
    .line 385
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    check-cast p1, Landroid/widget/Button;

    .line 390
    .line 391
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCancelBtn:Landroid/widget/Button;

    .line 392
    .line 393
    invoke-virtual {p1, v0}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 394
    .line 395
    .line 396
    const p1, 0x7f0a0aec

    .line 397
    .line 398
    .line 399
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 404
    .line 405
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionRoot:Landroid/widget/RelativeLayout;

    .line 406
    .line 407
    const p1, 0x7f0a060b

    .line 408
    .line 409
    .line 410
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 415
    .line 416
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    .line 417
    .line 418
    const/16 v2, 0xf

    .line 419
    .line 420
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->semSetRoundedCorners(I)V

    .line 421
    .line 422
    .line 423
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    .line 424
    .line 425
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    invoke-virtual {p1, v2, v1}, Landroid/widget/RelativeLayout;->semSetRoundedCornerColor(II)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    const v1, 0x7f071158

    .line 437
    .line 438
    .line 439
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    int-to-float p1, p1

    .line 444
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    .line 445
    .line 446
    const/4 v2, 0x0

    .line 447
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 448
    .line 449
    .line 450
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    .line 451
    .line 452
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 453
    .line 454
    .line 455
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    .line 456
    .line 457
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 458
    .line 459
    .line 460
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    .line 461
    .line 462
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 463
    .line 464
    .line 465
    const p1, 0x7f0a0b97

    .line 466
    .line 467
    .line 468
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    .line 473
    .line 474
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 475
    .line 476
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->seslSetSubTabStyle()V

    .line 477
    .line 478
    .line 479
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 480
    .line 481
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$6;

    .line 482
    .line 483
    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 484
    .line 485
    .line 486
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 487
    .line 488
    invoke-virtual {p1, v4}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    const v1, 0x7f0600f2

    .line 493
    .line 494
    .line 495
    const v2, 0x7f080726

    .line 496
    .line 497
    .line 498
    const v6, 0x7f0a04c6

    .line 499
    .line 500
    .line 501
    if-eqz p1, :cond_7

    .line 502
    .line 503
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 504
    .line 505
    invoke-virtual {p1, v4}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 510
    .line 511
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 516
    .line 517
    .line 518
    move-result-object v7

    .line 519
    invoke-virtual {p1, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 520
    .line 521
    .line 522
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 523
    .line 524
    invoke-virtual {p1, v4}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 529
    .line 530
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    .line 539
    .line 540
    .line 541
    move-result v7

    .line 542
    invoke-virtual {p1, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 543
    .line 544
    .line 545
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 546
    .line 547
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    if-eqz p1, :cond_8

    .line 552
    .line 553
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 554
    .line 555
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 556
    .line 557
    .line 558
    move-result-object p1

    .line 559
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 560
    .line 561
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 562
    .line 563
    .line 564
    move-result-object p1

    .line 565
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 566
    .line 567
    .line 568
    move-result-object v7

    .line 569
    invoke-virtual {p1, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 570
    .line 571
    .line 572
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 573
    .line 574
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 575
    .line 576
    .line 577
    move-result-object p1

    .line 578
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 579
    .line 580
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    .line 589
    .line 590
    .line 591
    move-result v7

    .line 592
    invoke-virtual {p1, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 593
    .line 594
    .line 595
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 596
    .line 597
    invoke-virtual {p1, v5}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 598
    .line 599
    .line 600
    move-result-object p1

    .line 601
    if-eqz p1, :cond_9

    .line 602
    .line 603
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 604
    .line 605
    invoke-virtual {p1, v5}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 606
    .line 607
    .line 608
    move-result-object p1

    .line 609
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 610
    .line 611
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 612
    .line 613
    .line 614
    move-result-object p1

    .line 615
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 620
    .line 621
    .line 622
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 623
    .line 624
    invoke-virtual {p1, v5}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 625
    .line 626
    .line 627
    move-result-object p1

    .line 628
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 629
    .line 630
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 631
    .line 632
    .line 633
    move-result-object p1

    .line 634
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 635
    .line 636
    .line 637
    move-result-object p1

    .line 638
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 643
    .line 644
    .line 645
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 646
    .line 647
    const v1, 0x7f0600f3

    .line 648
    .line 649
    .line 650
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    iget-object v2, p1, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 655
    .line 656
    if-eq v2, v1, :cond_b

    .line 657
    .line 658
    iput-object v1, p1, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 659
    .line 660
    iget-object v1, p1, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 661
    .line 662
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 663
    .line 664
    .line 665
    move-result v1

    .line 666
    move v2, v4

    .line 667
    :goto_4
    if-ge v2, v1, :cond_b

    .line 668
    .line 669
    iget-object v5, p1, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 670
    .line 671
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v5

    .line 675
    check-cast v5, Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 676
    .line 677
    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 678
    .line 679
    if-eqz v5, :cond_a

    .line 680
    .line 681
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$TabView;->update()V

    .line 682
    .line 683
    .line 684
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 685
    .line 686
    goto :goto_4

    .line 687
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionRoot:Landroid/widget/RelativeLayout;

    .line 688
    .line 689
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    .line 691
    .line 692
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mApplyBtn:Landroid/widget/Button;

    .line 693
    .line 694
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    .line 696
    .line 697
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCancelBtn:Landroid/widget/Button;

    .line 698
    .line 699
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    .line 701
    .line 702
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 703
    .line 704
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mOnTouchListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;

    .line 705
    .line 706
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 707
    .line 708
    .line 709
    const p1, 0x7f0a0afb

    .line 710
    .line 711
    .line 712
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 713
    .line 714
    .line 715
    move-result-object p1

    .line 716
    check-cast p1, Landroid/widget/HorizontalScrollView;

    .line 717
    .line 718
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    .line 719
    .line 720
    invoke-virtual {p1, v4}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 721
    .line 722
    .line 723
    const p1, 0x7f0a0afa

    .line 724
    .line 725
    .line 726
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 727
    .line 728
    .line 729
    move-result-object p1

    .line 730
    check-cast p1, Landroid/widget/GridView;

    .line 731
    .line 732
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectGridView:Landroid/widget/GridView;

    .line 733
    .line 734
    invoke-virtual {p1, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 735
    .line 736
    .line 737
    const p1, 0x7f0a0af8

    .line 738
    .line 739
    .line 740
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 741
    .line 742
    .line 743
    move-result-object p1

    .line 744
    check-cast p1, Landroid/view/ViewGroup;

    .line 745
    .line 746
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionColorLayout:Landroid/view/ViewGroup;

    .line 747
    .line 748
    const p1, 0x7f0a0281

    .line 749
    .line 750
    .line 751
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 752
    .line 753
    .line 754
    move-result-object p1

    .line 755
    check-cast p1, Landroid/widget/LinearLayout;

    .line 756
    .line 757
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorTabLayout:Landroid/widget/LinearLayout;

    .line 758
    .line 759
    const p1, 0x7f0a0af7

    .line 760
    .line 761
    .line 762
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 763
    .line 764
    .line 765
    move-result-object p1

    .line 766
    check-cast p1, Landroid/widget/GridView;

    .line 767
    .line 768
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorGridView:Landroid/widget/GridView;

    .line 769
    .line 770
    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setSmoothScrollbarEnabled(Z)V

    .line 771
    .line 772
    .line 773
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorGridView:Landroid/widget/GridView;

    .line 774
    .line 775
    const/4 v0, 0x6

    .line 776
    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 777
    .line 778
    .line 779
    const p1, 0x7f0a0108

    .line 780
    .line 781
    .line 782
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 783
    .line 784
    .line 785
    move-result-object p1

    .line 786
    check-cast p1, Landroid/widget/RadioButton;

    .line 787
    .line 788
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoRadioButton:Landroid/widget/RadioButton;

    .line 789
    .line 790
    const p1, 0x7f0a027f

    .line 791
    .line 792
    .line 793
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 794
    .line 795
    .line 796
    move-result-object p1

    .line 797
    check-cast p1, Landroid/widget/RadioButton;

    .line 798
    .line 799
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorRadioButton:Landroid/widget/RadioButton;

    .line 800
    .line 801
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRadioButtonListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;

    .line 802
    .line 803
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 804
    .line 805
    .line 806
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoRadioButton:Landroid/widget/RadioButton;

    .line 807
    .line 808
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRadioButtonListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;

    .line 809
    .line 810
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 811
    .line 812
    .line 813
    const p1, 0x7f0a0af6

    .line 814
    .line 815
    .line 816
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 817
    .line 818
    .line 819
    move-result-object p1

    .line 820
    check-cast p1, Landroid/view/ViewGroup;

    .line 821
    .line 822
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionAdvancedLayout:Landroid/view/ViewGroup;

    .line 823
    .line 824
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->updateLayout()V

    .line 825
    .line 826
    .line 827
    const/16 p1, 0x12c

    .line 828
    .line 829
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showBottomBarLayout(I)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {p0, v4}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showBottomBarOption(I)V

    .line 833
    .line 834
    .line 835
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showBottomBarLayout(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;->stopPreview()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;->unRegisterEdgeWindowCallback()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 14

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string/jumbo v1, "onResume"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    sget-object v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 13
    .line 14
    const v4, 0x7f0a0c3d

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f130520

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const v1, 0x7f13051f

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    const/16 v7, 0x3c

    .line 40
    .line 41
    move-object v2, p0

    .line 42
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->makeSeekBar(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;ILjava/lang/String;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sget-object v9, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 46
    .line 47
    const v10, 0x7f0a0d40

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const v1, 0x7f13051c

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const v1, 0x7f13051d

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v12

    .line 72
    const/4 v13, 0x4

    .line 73
    move-object v8, p0

    .line 74
    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->makeSeekBar(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;ILjava/lang/String;Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    sget-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 78
    .line 79
    const v2, 0x7f0a0386

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const v3, 0x7f1304f8

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const v4, 0x7f1304f7

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    const/4 v5, 0x2

    .line 105
    move-object v0, p0

    .line 106
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->makeSeekBar(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;ILjava/lang/String;Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    const-string v0, "36014"

    .line 110
    .line 111
    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    .line 124
    iget v1, v0, Landroid/content/res/Configuration;->FlipFont:I

    .line 125
    .line 126
    if-lez v1, :cond_0

    .line 127
    .line 128
    sget v2, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->sFlipFont:I

    .line 129
    .line 130
    if-eq v2, v1, :cond_0

    .line 131
    .line 132
    invoke-static {}, Landroid/graphics/Typeface;->setFlipFonts()V

    .line 133
    .line 134
    .line 135
    iget v0, v0, Landroid/content/res/Configuration;->FlipFont:I

    .line 136
    .line 137
    sput v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->sFlipFont:I

    .line 138
    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->playEdgeLightingByHandler()V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final playEdgeLightingByHandler()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hidePreviewEdgeLighting(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final showBottomBarLayout(I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 23
    .line 24
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    and-int/lit8 v1, v1, -0x3

    .line 37
    .line 38
    and-int/lit16 v1, v1, -0x801

    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 52
    .line 53
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 57
    .line 58
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const v3, 0x7f071158

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    int-to-float v1, v1

    .line 70
    iget-object v3, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    .line 71
    .line 72
    const/4 v4, 0x2

    .line 73
    new-array v5, v4, [F

    .line 74
    .line 75
    aput v1, v5, v2

    .line 76
    .line 77
    const/4 v6, 0x1

    .line 78
    const/4 v7, 0x0

    .line 79
    aput v7, v5, v6

    .line 80
    .line 81
    const-string/jumbo v8, "translationY"

    .line 82
    .line 83
    .line 84
    invoke-static {v3, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    const-wide/16 v9, 0x12c

    .line 89
    .line 90
    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 91
    .line 92
    .line 93
    iget-object v5, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    .line 94
    .line 95
    new-array v11, v4, [F

    .line 96
    .line 97
    fill-array-data v11, :array_0

    .line 98
    .line 99
    .line 100
    const-string v12, "alpha"

    .line 101
    .line 102
    invoke-static {v5, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    const-wide/16 v13, 0x96

    .line 107
    .line 108
    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 109
    .line 110
    .line 111
    iget-object v11, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    .line 112
    .line 113
    new-array v15, v4, [F

    .line 114
    .line 115
    aput v1, v15, v2

    .line 116
    .line 117
    aput v7, v15, v6

    .line 118
    .line 119
    invoke-static {v11, v8, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 124
    .line 125
    .line 126
    iget-object v6, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    .line 127
    .line 128
    new-array v4, v4, [F

    .line 129
    .line 130
    fill-array-data v4, :array_1

    .line 131
    .line 132
    .line 133
    invoke-static {v6, v12, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v4, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 138
    .line 139
    .line 140
    iget-object v6, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 141
    .line 142
    move/from16 v7, p1

    .line 143
    .line 144
    int-to-long v7, v7

    .line 145
    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 146
    .line 147
    .line 148
    iget-object v6, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 149
    .line 150
    new-instance v7, Landroid/view/animation/PathInterpolator;

    .line 151
    .line 152
    const v8, 0x3e4ccccd    # 0.2f

    .line 153
    .line 154
    .line 155
    const/high16 v9, 0x3f800000    # 1.0f

    .line 156
    .line 157
    const v10, 0x3e2e147b    # 0.17f

    .line 158
    .line 159
    .line 160
    invoke-direct {v7, v10, v10, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    .line 165
    .line 166
    iget-object v6, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 167
    .line 168
    filled-new-array {v1, v3, v4, v5}, [Landroid/animation/Animator;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 173
    .line 174
    .line 175
    iget-object v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 176
    .line 177
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 178
    .line 179
    .line 180
    iput-boolean v2, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    .line 181
    .line 182
    return-void

    .line 183
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final showBottomBarOption(I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->updateTabLayout()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez p1, :cond_a

    .line 7
    .line 8
    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mType:I

    .line 9
    .line 10
    if-eqz v2, :cond_a

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hideBottomBarSubOption(I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_12

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    .line 19
    .line 20
    if-nez p1, :cond_9

    .line 21
    .line 22
    new-instance p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectGridView:Landroid/widget/GridView;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->notifyDataSetChanged()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 44
    .line 45
    invoke-interface {v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-boolean v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    new-instance v4, Ljava/util/ArrayList;

    .line 55
    .line 56
    iget-object v5, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    .line 64
    .line 65
    move v5, v0

    .line 66
    :goto_0
    sget-boolean v6, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_COCKTAIL_COLOR_PHONE_COLOR:Z

    .line 67
    .line 68
    if-eqz v6, :cond_0

    .line 69
    .line 70
    if-nez v3, :cond_0

    .line 71
    .line 72
    iget-object v6, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    goto :goto_2

    .line 79
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .line 80
    .line 81
    iget-object v7, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 82
    .line 83
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    .line 89
    .line 90
    new-instance v7, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-eqz v8, :cond_3

    .line 104
    .line 105
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    check-cast v8, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 110
    .line 111
    if-eqz v8, :cond_1

    .line 112
    .line 113
    iget-object v9, v8, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v9}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->isSupportEffectForRoutine(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    if-nez v9, :cond_2

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    :goto_2
    if-ge v5, v6, :cond_5

    .line 131
    .line 132
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    check-cast v6, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 137
    .line 138
    iget-object v6, v6, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-eqz v6, :cond_4

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_5
    const/4 v5, -0x1

    .line 151
    :goto_3
    add-int/2addr v5, v1

    .line 152
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectGridView:Landroid/widget/GridView;

    .line 153
    .line 154
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    .line 155
    .line 156
    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->getCount()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->calculateColumnCount(Landroid/widget/GridView;I)I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-le v5, p1, :cond_6

    .line 165
    .line 166
    sub-int v2, v5, p1

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_6
    move v2, v5

    .line 170
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-ne v3, v1, :cond_7

    .line 187
    .line 188
    add-int/lit8 v2, v5, -0x1

    .line 189
    .line 190
    sub-int v2, p1, v2

    .line 191
    .line 192
    if-le v5, p1, :cond_7

    .line 193
    .line 194
    add-int/2addr v2, p1

    .line 195
    :cond_7
    sub-int/2addr v2, v1

    .line 196
    if-ltz v2, :cond_8

    .line 197
    .line 198
    move p1, v2

    .line 199
    goto :goto_5

    .line 200
    :cond_8
    move p1, v0

    .line 201
    :goto_5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    const v3, 0x7f071155

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    mul-int/2addr v1, v2

    .line 213
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    const v3, 0x7f071171

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    mul-int/2addr v2, p1

    .line 225
    add-int/2addr v2, v1

    .line 226
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    .line 227
    .line 228
    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;

    .line 229
    .line 230
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 234
    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    .line 238
    .line 239
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    .line 244
    .line 245
    new-instance v2, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;

    .line 246
    .line 247
    invoke-direct {v2, p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 251
    .line 252
    .line 253
    :goto_6
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    .line 254
    .line 255
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_a

    .line 259
    .line 260
    :cond_a
    if-ne p1, v1, :cond_e

    .line 261
    .line 262
    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mType:I

    .line 263
    .line 264
    if-eq v2, v1, :cond_e

    .line 265
    .line 266
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hideBottomBarSubOption(I)Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-eqz p1, :cond_12

    .line 271
    .line 272
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionColorLayout:Landroid/view/ViewGroup;

    .line 273
    .line 274
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    .line 278
    .line 279
    if-nez p1, :cond_b

    .line 280
    .line 281
    new-instance p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    .line 282
    .line 283
    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    .line 284
    .line 285
    .line 286
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    .line 287
    .line 288
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorGridView:Landroid/widget/GridView;

    .line 289
    .line 290
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    .line 291
    .line 292
    invoke-virtual {p1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 293
    .line 294
    .line 295
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    .line 296
    .line 297
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->notifyDataSetChanged()V

    .line 298
    .line 299
    .line 300
    iget-boolean p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    .line 301
    .line 302
    if-eqz p1, :cond_c

    .line 303
    .line 304
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorRadioButton:Landroid/widget/RadioButton;

    .line 305
    .line 306
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 307
    .line 308
    .line 309
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorRadioButton:Landroid/widget/RadioButton;

    .line 310
    .line 311
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 312
    .line 313
    .line 314
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoRadioButton:Landroid/widget/RadioButton;

    .line 315
    .line 316
    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_a

    .line 320
    .line 321
    :cond_c
    iget p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    .line 322
    .line 323
    if-nez p1, :cond_d

    .line 324
    .line 325
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoRadioButton:Landroid/widget/RadioButton;

    .line 326
    .line 327
    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 328
    .line 329
    .line 330
    goto :goto_a

    .line 331
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorRadioButton:Landroid/widget/RadioButton;

    .line 332
    .line 333
    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 334
    .line 335
    .line 336
    goto :goto_a

    .line 337
    :cond_e
    const/4 v1, 0x2

    .line 338
    if-ne p1, v1, :cond_12

    .line 339
    .line 340
    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mType:I

    .line 341
    .line 342
    if-eq v2, v1, :cond_12

    .line 343
    .line 344
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hideBottomBarSubOption(I)Z

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    if-eqz p1, :cond_12

    .line 349
    .line 350
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 351
    .line 352
    sget-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 353
    .line 354
    invoke-interface {p1, v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    const v1, 0x7f0a0c3d

    .line 359
    .line 360
    .line 361
    const/16 v2, 0x8

    .line 362
    .line 363
    if-eqz p1, :cond_f

    .line 364
    .line 365
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 370
    .line 371
    .line 372
    goto :goto_7

    .line 373
    :cond_f
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 378
    .line 379
    .line 380
    :goto_7
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 381
    .line 382
    sget-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 383
    .line 384
    invoke-interface {p1, v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    const v1, 0x7f0a0d40

    .line 389
    .line 390
    .line 391
    if-eqz p1, :cond_10

    .line 392
    .line 393
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 398
    .line 399
    .line 400
    goto :goto_8

    .line 401
    :cond_10
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 406
    .line 407
    .line 408
    :goto_8
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 409
    .line 410
    sget-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 411
    .line 412
    invoke-interface {p1, v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    .line 413
    .line 414
    .line 415
    move-result p1

    .line 416
    const v1, 0x7f0a0386

    .line 417
    .line 418
    .line 419
    if-eqz p1, :cond_11

    .line 420
    .line 421
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 426
    .line 427
    .line 428
    goto :goto_9

    .line 429
    :cond_11
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 434
    .line 435
    .line 436
    :goto_9
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionAdvancedLayout:Landroid/view/ViewGroup;

    .line 437
    .line 438
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 439
    .line 440
    .line 441
    :cond_12
    :goto_a
    return-void
.end method

.method public final showColorPickerDialog()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->getCustomColor(Z)I

    .line 4
    .line 5
    .line 6
    move-result v4

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "edgelighting_recently_used_color"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const-string v1, ";"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    array-length v1, v0

    .line 37
    new-array v1, v1, [I

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    :goto_0
    array-length v3, v0

    .line 41
    if-ge v2, v3, :cond_2

    .line 42
    .line 43
    aget-object v3, v0, v2

    .line 44
    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    aput v3, v1, v2

    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 55
    :cond_2
    move-object v0, v1

    .line 56
    new-instance v7, Landroidx/picker3/app/SeslColorPickerDialog;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorSetListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$10;

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    move-object v1, v7

    .line 62
    move-object v2, p0

    .line 63
    move-object v5, v0

    .line 64
    invoke-direct/range {v1 .. v6}, Landroidx/picker3/app/SeslColorPickerDialog;-><init>(Landroid/content/Context;Landroidx/picker3/app/SeslColorPickerDialog$OnColorSetListener;I[IZ)V

    .line 65
    .line 66
    .line 67
    iput-object v7, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

    .line 68
    .line 69
    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$8;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$8;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

    .line 78
    .line 79
    iget-object v1, v1, Landroidx/picker3/app/SeslColorPickerDialog;->mColorPicker:Landroidx/picker3/widget/SeslColorPicker;

    .line 80
    .line 81
    new-instance v2, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;

    .line 82
    .line 83
    invoke-direct {v2, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    .line 84
    .line 85
    .line 86
    iput-object v2, v1, Landroidx/picker3/widget/SeslColorPicker;->mOnColorChangedListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 91
    .line 92
    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    .line 96
    .line 97
    const/4 v1, 0x3

    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    .line 108
    .line 109
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->getCustomColor(Z)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    filled-new-array {v0}, [I

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    .line 120
    .line 121
    if-nez v1, :cond_4

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showPreviewEdgeLighting([I)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 128
    .line 129
    iput-object v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectColors:[I

    .line 130
    .line 131
    invoke-interface {v1, v2}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;->updatePreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 132
    .line 133
    .line 134
    :goto_2
    iget v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    .line 135
    .line 136
    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hidePreviewEdgeLighting(I)V

    .line 141
    .line 142
    .line 143
    :cond_5
    return-void
.end method

.method public final showPreviewEdgeLighting([I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hidePreviewEdgeLighting()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 16
    .line 17
    invoke-interface {v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->setForceSettingValue(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const v0, 0x7f1304fd

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 37
    .line 38
    iput-object v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsShowAppIcon:Z

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    const/4 v4, 0x0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    const v0, 0x7f080684

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 56
    .line 57
    iput-boolean v3, v0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsSupportAppIcon:Z

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const v0, 0x7f080ac9

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 70
    .line 71
    iput-boolean v4, v0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsSupportAppIcon:Z

    .line 72
    .line 73
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iget-object v5, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 80
    .line 81
    invoke-interface {v5}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iget v6, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    .line 86
    .line 87
    invoke-static {v2, v5, v6}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStyleWidth(Landroid/content/Context;Ljava/lang/String;I)F

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    iget v5, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    .line 92
    .line 93
    iput v2, v0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    .line 94
    .line 95
    iput v5, v0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mWidthDepth:I

    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 98
    .line 99
    iput-object p1, v0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectColors:[I

    .line 100
    .line 101
    iget p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    .line 102
    .line 103
    int-to-float p1, p1

    .line 104
    const/high16 v2, 0x42c80000    # 100.0f

    .line 105
    .line 106
    div-float/2addr p1, v2

    .line 107
    const/high16 v2, 0x3f800000    # 1.0f

    .line 108
    .line 109
    sub-float/2addr v2, p1

    .line 110
    iput v2, v0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    .line 113
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v2, " showPreview : "

    .line 117
    .line 118
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 122
    .line 123
    invoke-interface {v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 142
    .line 143
    invoke-interface {v0}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getPreloadIndex(Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    const/16 v0, 0x64

    .line 152
    .line 153
    if-ne p1, v0, :cond_3

    .line 154
    .line 155
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 156
    .line 157
    iput p1, v0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectType:I

    .line 158
    .line 159
    invoke-static {}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->getInstance()Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 164
    .line 165
    invoke-interface {v0}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eqz v2, :cond_2

    .line 180
    .line 181
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    check-cast v2, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 186
    .line 187
    invoke-interface {v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-eqz v5, :cond_1

    .line 196
    .line 197
    move-object v1, v2

    .line 198
    :cond_2
    instance-of p1, v1, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;

    .line 199
    .line 200
    if-eqz p1, :cond_4

    .line 201
    .line 202
    check-cast v1, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;

    .line 203
    .line 204
    iget-object p1, v1, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mSpecialEffect:Landroid/net/Uri;

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 208
    .line 209
    iput p1, v0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectType:I

    .line 210
    .line 211
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 212
    .line 213
    iget v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    .line 214
    .line 215
    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    int-to-long v0, v0

    .line 220
    iput-wide v0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mLightingDuration:J

    .line 221
    .line 222
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 223
    .line 224
    iput-boolean v4, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsMultiResolutionSupoorted:Z

    .line 225
    .line 226
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    .line 227
    .line 228
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEdgeLightingCallBack:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;

    .line 229
    .line 230
    invoke-interface {p1, v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;->registerEdgeWindowCallback(Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;)V

    .line 231
    .line 232
    .line 233
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    .line 234
    .line 235
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 236
    .line 237
    iget-boolean v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    .line 238
    .line 239
    xor-int/2addr v1, v3

    .line 240
    invoke-interface {p1, v0, v1}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;->showPreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Z)V

    .line 241
    .line 242
    .line 243
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    .line 244
    .line 245
    invoke-interface {p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;->isUsingELPlusEffect()Z

    .line 246
    .line 247
    .line 248
    return-void
.end method

.method public final updateLayout()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const v3, 0x7f071178

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ge v0, v2, :cond_0

    .line 31
    .line 32
    const/4 v0, -0x1

    .line 33
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const v2, 0x7f07117d

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 48
    .line 49
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorTabLayout:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 62
    .line 63
    const/16 v1, 0x168

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    if-ge v0, v1, :cond_1

    .line 67
    .line 68
    move v0, v2

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 71
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorTabLayout:Landroid/widget/LinearLayout;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 88
    .line 89
    const/4 v4, 0x2

    .line 90
    if-ne v3, v4, :cond_2

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    if-eqz v0, :cond_3

    .line 94
    .line 95
    const v2, 0x800003

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_2
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorTabLayout:Landroid/widget/LinearLayout;

    .line 101
    .line 102
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    return-void
.end method

.method public final updateTabLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->COLOR:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsShowAppIcon:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string/jumbo v4, "preload/noframe"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string/jumbo v4, "preload/reflection"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    :cond_2
    move v0, v3

    .line 52
    :goto_0
    if-nez v0, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/view/ViewGroup;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/view/ViewGroup;

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 87
    .line 88
    sget-object v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 89
    .line 90
    invoke-interface {v0, v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const/4 v2, 0x2

    .line 95
    if-nez v0, :cond_5

    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 98
    .line 99
    sget-object v4, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 100
    .line 101
    invoke-interface {v0, v4}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_5

    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 108
    .line 109
    sget-object v4, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 110
    .line 111
    invoke-interface {v0, v4}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_5

    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 118
    .line 119
    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Landroid/view/ViewGroup;

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 134
    .line 135
    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Landroid/view/ViewGroup;

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 151
    .line 152
    .line 153
    return-void
.end method
