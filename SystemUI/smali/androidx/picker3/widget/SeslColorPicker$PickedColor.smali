.class public final Landroidx/picker3/widget/SeslColorPicker$PickedColor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAlpha:I

.field public mColor:Ljava/lang/Integer;

.field public final mHsv:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 6
    .line 7
    const/16 v0, 0xff

    .line 8
    .line 9
    iput v0, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [F

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final setV(F)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    .line 3
    .line 4
    aput p1, v1, v0

    .line 5
    .line 6
    iget p1, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 7
    .line 8
    invoke-static {p1, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 17
    .line 18
    return-void
.end method
