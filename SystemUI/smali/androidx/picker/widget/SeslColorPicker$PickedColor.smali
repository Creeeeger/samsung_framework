.class public final Landroidx/picker/widget/SeslColorPicker$PickedColor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
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
    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    new-array v0, v0, [F

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mHsv:[F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final setColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mHsv:[F

    .line 21
    .line 22
    invoke-static {p1, p0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
