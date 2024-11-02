.class public final Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_HEIGHT$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "RectHeight"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    int-to-float p0, p0

    .line 8
    return p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 4
    .line 5
    float-to-int p2, p2

    .line 6
    add-int/2addr p0, p2

    .line 7
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 8
    .line 9
    return-void
.end method
