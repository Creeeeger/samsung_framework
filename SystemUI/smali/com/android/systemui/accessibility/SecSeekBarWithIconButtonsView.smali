.class public Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mIconEnd:Landroid/widget/ImageView;

.field public final mIconEndFrame:Landroid/view/ViewGroup;

.field public final mIconStart:Landroid/widget/ImageView;

.field public final mIconStartFrame:Landroid/view/ViewGroup;

.field public final mSeekBarListener:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;

.field public final mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;


# direct methods
.method public static synthetic $r8$lambda$62gLd_NovLEjP4K_OGyLwmWACGo(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    sub-int/2addr v0, v2

    .line 13
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mIconStart:Landroid/widget/ImageView;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-lez v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    invoke-static {v0, v2}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const-string v0, "A11Y3196"

    .line 34
    .line 35
    invoke-static {p0, v0}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$CCVuGNT7BndHdXfvrKiI38GDFEY(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    add-int/2addr v0, v2

    .line 19
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mIconEnd:Landroid/widget/ImageView;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-object v3, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ge v1, v3, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v2, 0x0

    .line 40
    :goto_0
    invoke-static {v0, v2}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const-string v0, "A11Y3198"

    .line 46
    .line 47
    invoke-static {p0, v0}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance v0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;-><init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;I)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekBarListener:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0395

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v2, 0x7f0a04b4

    .line 7
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mIconStartFrame:Landroid/view/ViewGroup;

    const v3, 0x7f0a04ab

    .line 8
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mIconEndFrame:Landroid/view/ViewGroup;

    const v5, 0x7f0a04b3

    .line 9
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mIconStart:Landroid/widget/ImageView;

    const v6, 0x7f0a04aa

    .line 10
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mIconEnd:Landroid/widget/ImageView;

    const v7, 0x7f0a09bf

    .line 11
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v7, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v8, 0x7

    if-eqz p2, :cond_3

    .line 12
    sget-object v9, Lcom/android/systemui/R$styleable;->SeekBarWithIconButtonsView_Layout:[I

    invoke-virtual {p1, p2, v9, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x2

    .line 13
    invoke-virtual {p2, p3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 p4, 0x3

    .line 14
    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    .line 15
    invoke-virtual {v7, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 16
    invoke-virtual {v7, p4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    if-lez p4, :cond_0

    move p3, v4

    goto :goto_0

    :cond_0
    move p3, v1

    .line 17
    :goto_0
    invoke-static {v5, p3}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    .line 18
    invoke-virtual {v7}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result p3

    if-ge p4, p3, :cond_1

    move p3, v4

    goto :goto_1

    :cond_1
    move p3, v1

    :goto_1
    invoke-static {v6, p3}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    const/16 p3, 0x8

    .line 19
    invoke-virtual {v7, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    .line 20
    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 21
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p3, :cond_2

    .line 22
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 23
    invoke-virtual {v2, p3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p2, :cond_5

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 26
    :cond_3
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 27
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 28
    invoke-static {v5, v1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    .line 29
    invoke-virtual {v7}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result p1

    if-lez p1, :cond_4

    move p1, v4

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    invoke-static {v6, p1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    .line 30
    :cond_5
    :goto_3
    iput-object v0, v7, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 31
    new-instance p1, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;I)V

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    new-instance p1, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v4}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;I)V

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    new-instance p1, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;-><init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;I)V

    invoke-virtual {v7, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 34
    new-instance p1, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;-><init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;I)V

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 35
    new-instance p1, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;-><init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;I)V

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 36
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const p2, 0x7f1300ce

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const p1, 0x7f1300cd

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static setIconViewAndFrameEnabled(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/view/ViewGroup;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final setSeekbarStateDescription(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    float-to-int p1, p1

    .line 10
    mul-int/lit8 p1, p1, 0x64

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const v1, 0x7f130689

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
