.class public final Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;


# instance fields
.field public final mColorOption:Z

.field public final mIsSupport:Z

.field public final mKey:Ljava/lang/String;

.field public final mPreviewImgResID:I

.field public final mTitleStrID:I

.field public final mTransparencyOption:Z

.field public final mWidthOption:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x1

    .line 2
    iput-boolean p5, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTransparencyOption:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    .line 4
    iput v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mPreviewImgResID:I

    .line 5
    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 6
    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mColorOption:Z

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mWidthOption:Z

    .line 8
    iput p4, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    .line 9
    iput p6, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mPreviewImgResID:I

    .line 10
    iput-boolean p5, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mIsSupport:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZIIIZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x1

    .line 12
    iput-boolean p5, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTransparencyOption:Z

    const/4 p5, 0x0

    .line 13
    iput p5, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    .line 14
    iput p5, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mPreviewImgResID:I

    .line 15
    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 16
    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mColorOption:Z

    .line 17
    iput-boolean p3, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mWidthOption:Z

    .line 18
    iput p4, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    .line 19
    iput p6, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mPreviewImgResID:I

    .line 20
    iput-boolean p7, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mIsSupport:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZIIIZ)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x1

    .line 22
    iput-boolean p6, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTransparencyOption:Z

    const/4 p6, 0x0

    .line 23
    iput p6, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    .line 24
    iput p6, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mPreviewImgResID:I

    .line 25
    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 26
    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mColorOption:Z

    .line 27
    iput-boolean p3, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mWidthOption:Z

    .line 28
    iput-boolean p4, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTransparencyOption:Z

    .line 29
    iput p5, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    .line 30
    iput p7, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mPreviewImgResID:I

    .line 31
    iput-boolean p8, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mIsSupport:Z

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRoundedIcon(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iget p0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mPreviewImgResID:I

    .line 11
    .line 12
    invoke-virtual {v1, p0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/DrawableUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v1, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;

    .line 21
    .line 22
    invoke-direct {v1, v0, p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const p1, 0x7f071177

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    int-to-float p0, p0

    .line 37
    invoke-virtual {v1, p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 38
    .line 39
    .line 40
    iget-object p0, v1, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 47
    .line 48
    .line 49
    return-object v1
.end method

.method public final getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isSupportEffect()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mIsSupport:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle$1;->$SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p1, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq p1, v1, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x4

    .line 19
    if-eq p1, p0, :cond_3

    .line 20
    .line 21
    const/4 p0, 0x5

    .line 22
    if-eq p1, p0, :cond_3

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTransparencyOption:Z

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mWidthOption:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mColorOption:Z

    .line 33
    .line 34
    :cond_3
    :goto_0
    return v0
.end method
