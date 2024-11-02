.class public Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mIconArea:Landroid/view/View;

.field public final mIconSize:I

.field public final mInsetsComputer:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView$$ExternalSyntheticLambda0;

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public final mTouchableRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTmpBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance p2, Landroid/graphics/Region;

    .line 12
    .line 13
    invoke-direct {p2}, Landroid/graphics/Region;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTmpRegion:Landroid/graphics/Region;

    .line 17
    .line 18
    new-instance p2, Landroid/graphics/Region;

    .line 19
    .line 20
    invoke-direct {p2}, Landroid/graphics/Region;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTouchableRegion:Landroid/graphics/Region;

    .line 24
    .line 25
    new-instance p2, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mInsetsComputer:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const p2, 0x7f07035f

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mIconSize:I

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTmpRegion:Landroid/graphics/Region;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTouchableRegion:Landroid/graphics/Region;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTmpBounds:Landroid/graphics/Rect;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mIconArea:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    float-to-int v2, v2

    .line 21
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mIconArea:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    float-to-int v3, v3

    .line 28
    iget v4, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mIconSize:I

    .line 29
    .line 30
    add-int v5, v2, v4

    .line 31
    .line 32
    add-int/2addr v4, v3

    .line 33
    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTouchableRegion:Landroid/graphics/Region;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTmpBounds:Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTmpRegion:Landroid/graphics/Region;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTouchableRegion:Landroid/graphics/Region;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->forceLayout()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 57
    .line 58
    .line 59
    :cond_0
    new-instance v1, Landroid/graphics/Region;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTouchableRegion:Landroid/graphics/Region;

    .line 74
    .line 75
    sget-object v2, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    .line 76
    .line 77
    invoke-virtual {v1, p0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 81
    .line 82
    .line 83
    return v0
.end method
