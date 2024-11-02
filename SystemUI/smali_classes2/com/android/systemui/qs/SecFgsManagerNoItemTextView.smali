.class public Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;
.super Landroid/widget/TextView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public currentFontScale:F

.field public maxFontScale:F

.field public originalTextSize:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3fa66666    # 1.3f

    .line 2
    iput v0, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->maxFontScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->currentFontScale:F

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3fa66666    # 1.3f

    .line 6
    iput p3, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->maxFontScale:F

    const/high16 p3, 0x3f800000    # 1.0f

    .line 7
    iput p3, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->currentFontScale:F

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->originalTextSize:F

    .line 6
    .line 7
    sget-object v0, Lcom/android/systemui/R$styleable;->QSTextView:[I

    .line 8
    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const v0, 0x3fa66666    # 1.3f

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iput p2, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->maxFontScale:F

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 32
    .line 33
    iget p2, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->maxFontScale:F

    .line 34
    .line 35
    cmpl-float v0, p1, p2

    .line 36
    .line 37
    if-lez v0, :cond_0

    .line 38
    .line 39
    move p1, p2

    .line 40
    :cond_0
    iget p2, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->currentFontScale:F

    .line 41
    .line 42
    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->currentFontScale:F

    .line 50
    .line 51
    iget p2, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->originalTextSize:F

    .line 52
    .line 53
    mul-float/2addr p2, p1

    .line 54
    invoke-virtual {p0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 5
    .line 6
    iget v0, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->maxFontScale:F

    .line 7
    .line 8
    cmpl-float v1, p1, v0

    .line 9
    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    move p1, v0

    .line 13
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->currentFontScale:F

    .line 14
    .line 15
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->currentFontScale:F

    .line 23
    .line 24
    iget v0, p0, Lcom/android/systemui/qs/SecFgsManagerNoItemTextView;->originalTextSize:F

    .line 25
    .line 26
    mul-float/2addr v0, p1

    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method
